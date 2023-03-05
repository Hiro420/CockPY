from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from lib.proto import *
from lib.retcode import Retcode
from game_server.resource import resources
import time
from game_server.utils.time import current_milli_time
from game_server.protocol.reader import BinaryReader
from game_server.resource.enums import *
import enet
import re
import os
from lib.proto import Vector
from . import map_commands
from random import randrange
from os import path
import time
import json

router = HandlerRouter()

global player_x
global player_y
global player_z
player_x = 0
player_y = 0
player_z = 0

@router(CmdID.PlayerEnterDungeonReq)
def handle_PlayerEnterDungeonReq(conn: Connection, msg: PlayerEnterDungeonReq):
    if hasattr(resources, 'binoutput'):
        dungeon_data = resources.excels.dungeon_data[msg.dungeon_id]
        point_data = resources.binoutput.config_scene[dungeon_data.scene_id].points
        
        scene_id = dungeon_data.scene_id

        lua_file_pre = os.path.abspath(f'.\\game_server\\lua\\scene{scene_id}.lua')
        #lua_file_pre = f"C:\\Users\\nikur\\Documents\\CockPY\\game_server\\lua\\scene{scene_id}.lua"
        lua_file = open(lua_file_pre, encoding='utf8')
        global player_x
        global player_y
        global player_z
        player_x = conn.player.pos.x
        player_y = conn.player.pos.y
        player_z = conn.player.pos.z

        print(f"Current position on map: X = {player_x}, Y = {player_y}, Z = {player_z}")

        #print("Contents of lua_file:")

        lines = lua_file.readlines()
        for line in lines:
            if "born_pos" in line:
                fline = (line[1 : -2])
                #print(line[1:-2])

        match = re.search(r'born_pos = { x = ([\d\.-]+), y = ([\d\.-]+), z = ([\d\.-]+) }', fline)

        if match:
            born_pos_x, born_pos_y, born_pos_z = match.groups()
            born_pos_x = float(match.group(1))
            born_pos_y = float(match.group(2))
            born_pos_z = float(match.group(3))
            print(f"Attemptint to enter scene {scene_id} in positions: X = {born_pos_x}, Y = {born_pos_y}, Z = {born_pos_z}")
            #born_pos = f"{(match.group(1), match.group(2), match.group(3))}"
            pos = Vector(born_pos_x, born_pos_y, born_pos_z)
            #print(f"{pos}")
        else:
            print("Values not found in line")
            pos = Vector(-0.4, -5.2, 64.7)
            rot = Vector(0, 0, 0)

        print(scene_id)
        
        conn.player.pos = pos

        conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_DUNGEON))
        
        # conn.player.scene_id = scene_id

        player_enter_dungeon = PlayerEnterDungeonRsp()
        player_enter_dungeon.retcode = 0
        player_enter_dungeon.point_id = msg.point_id
        player_enter_dungeon.dungeon_id = msg.dungeon_id
        conn.send(player_enter_dungeon)
        #conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_DUNGEON))


@router(CmdID.PlayerQuitDungeonReq)
def handle_PlayerQuitDungeonReq(conn: Connection, msg: PlayerQuitDungeonReq):
    player_quit_dungeon = PlayerQuitDungeonRsp()
    point_data = resources.binoutput.config_scene[conn.player.scene_id].points
    player_quit_dungeon.point_id = msg.point_id
    conn.send(player_quit_dungeon)  
    scene_id = 3
    global player_x
    global player_y
    global player_z
    pos = Vector(player_x, player_y, player_z)
    conn.player.pos = pos
    conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_JUMP))
    #time.sleep(5)
    #player_x = conn.player.pos.x
    #player_y = conn.player.pos.y
    #player_z = conn.player.pos.z