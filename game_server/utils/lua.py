import re
import os
import lupa
from game_server.utils.common import *

class lua_tools:
    module_not_found = re.compile(r"module '(.*?)' not found")

    @classmethod
    def format_lua_error(cls, e: lupa.LuaError) -> str:
        s = str(e)
        for module in cls.module_not_found.findall(s):
            return module
        return s.replace('"',"'").replace('\n', ' ')

    @classmethod
    def run(cls, script: str) -> lupa.LuaRuntime:
        lua = lupa.LuaRuntime()
        lua.execute(script)
        return lua

    @classmethod
    def load(cls, script_filename: str) -> lupa.LuaRuntime:
        with open(script_filename, 'r') as file:
            script = file.read()
        lua = lupa.LuaRuntime()
        try:
            lua.execute(script)
        except lupa.LuaError as e:
            lua.globals().errors = {1: cls.format_lua_error(e)}
            if (idx := script.find('\nfunction')) > 0:
                try:
                    lua.execute(script[:idx])
                    line_number = script[:idx].count('\n') + 1
                    lua.globals().errors[2] = f'Succeeded in running up to first function declaration at character {idx} (reached line number {line_number})'
                except lupa.LuaError as e:
                    lua.globals().errors[2] = cls.format_lua_error(e)
        finally:
            return lua

def load_scene_luas():
    default_lua_globals = set(g for g in lua_tools.run('').globals())
    seen_globals = set()
    lua_tables = {k:{} for k in ['gadgets', 'groups', 'suites', 'errors']}
    lua_full_tables = {}
    path = os.path.join(GC_PATH, 'server_data', 'lua', 'scene')
    for root, dirs, files in os.walk(path):
        for filename in [os.path.join(root, f) for f in files if f.endswith('.lua')]:
            key = filename[len(path):]
            lua = lua_tools.load(filename)
            results = lua.globals()
            wrapped_type = lua.globals().type
            seen_globals |= {key for key in results}
            nondefault_globals = [key for key in results if key not in default_lua_globals]
            nondefaults = {key: results[key] for key in nondefault_globals}
            lua_full_tables[key] = {k: table_to_dict(v) for k,v in nondefaults.items() if wrapped_type(v) != 'function'}
            for name, table in lua_tables.items():
                if (t := results[name]) is not None:
                    table[key] = table_to_dict(t)
    return lua_full_tables