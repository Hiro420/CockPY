import json
from numbers import Number
import os
import re
import pandas as pd
import numpy as np
import lupa
from typing import TextIO

INDENT = 2
GC_PATH = os.getcwd()

def open_read(filename: str, local=False) -> TextIO:
    path = '' if local else GC_PATH
    return open(path + filename, 'r')


def open_write(filename: str, local=False) -> TextIO:
    path = '' if local else GC_PATH
    return open(path + filename, 'w', encoding='utf-8', newline='\n')


def load_json(filename: str, local=False) -> dict:
    with open_read(filename, local=local) as file:
        return json.load(file)


def load_json_folder(path: str, local=False):
    if not local:
        path = GC_PATH + path
    return {f.removesuffix('.json'): load_json(path+f, local=True) for f in os.listdir(path)}


def save_json(data: dict, filename: str, local=False, indent=INDENT, **kwargs) -> None:
    with open_write(filename, local=local) as file:
        json.dump(data, file, ensure_ascii=False, indent=indent, **kwargs)


def fmt_json(filename):
    with open(filename, 'r') as f:
        data = json.load(f)
    def get_pos(d):
        pos_d = d.get('motion_info', {}).get('pos', {})
        return tuple(pos_d.get(x, 0) for x in 'xyz')
    data = sorted(data, key=get_pos)
    with open_write(f'{filename.rpartition(".")[0]}.newlines.json', True) as f:
        entry_strings = [json.dumps(entry, ensure_ascii=False).replace(' ', '') for entry in data]
        f.write('[\n' + ',\n'.join(entry_strings) + '\n]')


def flatten_json(data: dict, prefix='', flatten_keys=[], flatten_xyz=False, stripped_keys=[], flatten_lists=True, key_hacks={}, truncate_floats=True, stripped_values=[]) -> dict:
    def truncate(f: float):
        if -0.0001 < f < 0.0001:
            return 0
        return f

    def squish_xyz(data: dict):
        keys = set(data.keys())
        if len(keys) > 0:
            for xyz in (['x', 'y', 'z'], ['w', 'x', 'y', 'z']):  #, ['propType', 'propValue']):
                if len(keys - set(xyz)) == 0:
                    if truncate_floats:
                        return tuple(truncate(data.get(k, 0)) for k in xyz)
                    return tuple(data.get(k, 0) for k in xyz)
        return False

    def to_tuple_of_tuples(data):
        if isinstance(data, dict):
            if squish := squish_xyz(data):
                return squish
            return tuple((k, to_tuple_of_tuples(v)) for k,v in data.items())
        elif isinstance(data, list):
            return tuple(to_tuple_of_tuples(v) for v in data)
        elif isinstance(data, float) and truncate_floats:
            return truncate(data)
        else:
            return data

    def flatten(data: dict, prefix=''):
        if isinstance(data, (list, tuple)):
            return [flatten(d, prefix) for d in data]
        if not isinstance(data, dict):
            return data
        output = {}
        for key, value in data.items():
            p = prefix + key
            if (key in stripped_keys) or (value in stripped_values):
                continue
            if p in key_hacks:
                p, value = key_hacks[p](value)  # A bit evil but whatever >:)
                key = p
            if isinstance(value, dict):
                if flatten_xyz and (squish := squish_xyz(value)):
                    output[p] = squish
                else:
                    next_prefix = prefix if key in flatten_keys else p+'.'
                    output.update(flatten(value, next_prefix))
            elif isinstance(value, list):
                if flatten_lists:
                    for i,val in enumerate(value):
                        if val in stripped_values:
                            continue
                        if isinstance(val, dict):
                            output.update(flatten(val, f'{p}.{i}.'))
                        else:
                            output[f'{p}.{i}'] = val
                else:
                    output[p] = to_tuple_of_tuples(value)
            elif isinstance(data, float) and truncate_floats:
                output[p] = truncate(value)
            else:
                output[p] = value
        return output

    return flatten(data, prefix)


def semi_flatten(data, skip_tiers=0):
    callback = (lambda d: flatten_json(d, flatten_xyz=True, flatten_lists=False)) if skip_tiers < 1 else (lambda d: semi_flatten(d, skip_tiers-1))
    if isinstance(data, list):
        return [callback(d) for d in data]
    elif isinstance(data, dict):
        return {k:callback(v) for k,v in data.items()}
    else:
        return data


def unflatten_json(data: dict) -> dict:
    output = {}
    def add_key(key: list, d: dict, value):
        if len(key) == 1:
            d[key[0]] = value
        else:
            d[key[0]] = d.get(key[0], {})
            add_key(key[1:], d[key[0]], value)
    for key, value in data.items():
        add_key(key.split('.'), output, value)
    return output


def table_to_dict(lua_table) -> dict:
    if isinstance(lua_table, Number) or isinstance(lua_table, str) or isinstance(lua_table, bool):
        return lua_table
    if not lua_table:
        return
    if len(lua_table) > 0:  # Only array tables have working length in lupa
        output = []
        for v in lua_table.values():
            if isinstance(v, (int, float, str)):
                output.append(v)
            elif lupa.lua_type(v) == 'table':
                output.append(table_to_dict(v))
    else:
        output = {}
        for k,v in lua_table.items():
            if isinstance(v, (int, float, str)):
                output[k] = v
            elif lupa.lua_type(v) == 'table':
                output[k] = table_to_dict(v)
    return output


def encode_json(obj, starting_indent=0, maxline=180, spacing='', nan_to_null=False, sort_overrides=None, sort_ints=False) -> str:
    def sort_key(value):
        k, v = value
        k = sort_overrides.get(k, k)
        return k, v
    def wrap(contents: list, indent: int) -> str:
        total_len = sum(len(s) for s in contents)
        if total_len < maxline:
            return ','.join(contents)
        else:
            pre: str = '\n' + '\t' * indent
            pre2: str = '\n' + '\t' * (indent + 1)
            return pre2 + (','+pre2).join(contents) + pre

    def not_nan(v) -> bool:
        if isinstance(v, (np.number, float)):
            return v == v
        return True
    
    def dict_of_ints(d: dict) -> bool:
        if not sort_ints:
            return False
        try:
            [int(key) for key in d.keys()]
            return True
        except:
            return False

    def encode(obj, indent=0, key=False) -> str:
        if isinstance(obj, list) or isinstance(obj, tuple):
            contents = [encode(o, indent+1) for o in obj]
            return '[' + wrap(contents, indent) + ']'
        if isinstance(obj, dict):
            iterator = (sorted(obj.items(), key=sort_key) if sort_overrides
                        else sorted(obj.items(), key=lambda x: int(x[0])) if dict_of_ints(obj)
                        else obj.items())
            contents = [f'{encode(k, key=True)}:{spacing}{encode(v, indent+1)}' for k,v in iterator if not_nan(v)]
            return '{' + wrap(contents, indent) + '}'
        if obj != obj:
            if nan_to_null:
                return 'null'
            else:
                return '>>>>>>>>>>>>>>>>>>>>>AAAAAAAA A NAN AAAAAAAAAAAAAAAAA<<<<<<<<<<<<<<<<<<<<<<<' + str(type(obj))
        if isinstance(obj, bool):
            out = 'true' if obj else 'false'
            return f'"{out}"' if key else out
        if isinstance(obj, str):
            if obj == 'zChildren':
                # return '"Children"'
                return '"spawns"'
            return f'"{obj}"'
        if isinstance(obj, int):
            out = str(obj)
            return f'"{out}"' if key else out
        if isinstance(obj, float):
            out = str(obj)
            if out.endswith('.0'):
                out = out[:-2]
            return f'"{out}"' if key else out
        out = str(obj)
        return f'"{out}"' if key else out
    return encode(obj, starting_indent)