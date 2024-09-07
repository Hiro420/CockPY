from game_server.protocol.cmd_id import CmdID
from game_server import HandlerRouter,Connection
from lib.proto import *
from lib.retcode import Retcode
from game_server.resource import resources
from lib.proto import Vector
from .scene import lua_map

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

        global player_x
        global player_y
        global player_z
        player_x = conn.player.pos.x
        player_y = conn.player.pos.y
        player_z = conn.player.pos.z

        print(f"Current position on map: X = {player_x}, Y = {player_y}, Z = {player_z}")

        try:
            scene = lua_map[f'\\{scene_id}\\scene{scene_id}.lua']
            born_data = scene['scene_config']['born_pos']
            born_pos_x = born_data['x'] if 'x' in born_data else 0
            born_pos_y = born_data['y'] if 'y' in born_data else 0
            born_pos_z = born_data['z'] if 'z' in born_data else 0
            print(f"Attemptint to enter scene {scene_id} in positions: X = {born_pos_x}, Y = {born_pos_y}, Z = {born_pos_z}")
        except:
            born_pos_x = 0
            born_pos_y = 0
            born_pos_z = 0
        #born_pos = f"{(match.group(1), match.group(2), match.group(3))}"
        pos = Vector(born_pos_x, born_pos_y, born_pos_z)
        #print(f"{pos}")

        print(scene_id)
        
        conn.player.pos = pos

        conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_DUNGEON))
        
        conn.player.scene_id = scene_id
        # load_scene_stuff(lua_map, scene_id, pos, conn)

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
    conn.player.scene_id = scene_id
    # load_scene_stuff(lua_map, scene_id, pos, conn)
    conn.send(conn.player.get_teleport_packet(scene_id, pos, EnterType.ENTER_JUMP))
    #time.sleep(5)
    #player_x = conn.player.pos.x
    #player_y = conn.player.pos.y
    #player_z = conn.player.pos.z


@router(CmdID.GetDailyDungeonEntryInfoReq)
def handle_get_investigation_monster_req(conn: Connection, msg: GetDailyDungeonEntryInfoReq):
    rsp = GetDailyDungeonEntryInfoRsp()
    rsp.daily_dungeon_info_list = []

    dungeon_datas = resources.excels.investigation_dungeon_datas.get(1) # dirty hack for now
    if not dungeon_datas:
        return conn.send(rsp)
    for dungeon_data in dungeon_datas:
        for dungeon_id in dungeon_data.dungeon_id_list:
            dungeon_entry = DailyDungeonEntryInfo()
            dungeon_entry.dungeon_entry_id = dungeon_data.entrance_id
            dungeon_entry.dungeon_entry_config_id = dungeon_id
            dungeon_entry.recommend_dungeon_id = dungeon_id
            rsp.daily_dungeon_info_list.append(dungeon_entry)
    conn.send(rsp)