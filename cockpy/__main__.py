import threading
from sdk_server.app import run_http_server
from game_server import GameServer;
from game_server.utils.lua import load_scene_luas
from game_server.handlers import auth, ping, scene, avatar, entity, map_commands, clock, gacha, luamult, dungeon
from colorama import init, Fore, Back, Style

# initialize colorama
init()

server_port = 22102

gameserver = GameServer("localhost", int(server_port))
print(Fore.GREEN + f"[BOOT] GAME SERVER STARTING ON LOCALHOST WITH PORT {server_port}" + Style.RESET_ALL)
gameserver.add(auth.router)
print(Fore.GREEN + "[BOOT] AUTH HANDLER STARTED" + Style.RESET_ALL)
gameserver.add(ping.router)
print(Fore.GREEN + "[BOOT] PING HANDLER STARTED" + Style.RESET_ALL)
gameserver.add(scene.router)
print(Fore.GREEN + "[BOOT] SCENE HANDLER STARTED" + Style.RESET_ALL)
gameserver.add(dungeon.router)
print(Fore.GREEN + "[BOOT] DUNGEON HANDLER STARTED" + Style.RESET_ALL)
gameserver.add(avatar.router)
print(Fore.GREEN + "[BOOT] AVATAR HANDLER STARTED" + Style.RESET_ALL)
gameserver.add(entity.router)
print(Fore.GREEN + "[BOOT] ENTITY HANDLER STARTED" + Style.RESET_ALL)
gameserver.add(map_commands.router)
print(Fore.GREEN + "[BOOT] MAP_COMMANDS HANDLER STARTED" + Style.RESET_ALL)
gameserver.add(clock.router)
print(Fore.GREEN + "[BOOT] CLOCK HANDLER STARTED" + Style.RESET_ALL)
gameserver.add(gacha.router)
print(Fore.GREEN + "[BOOT] GACHA HANDLER STARTED" + Style.RESET_ALL)
gameserver.add(luamult.router)
print(Fore.GREEN + "[BOOT] LUAMULT HANDLER STARTED" + Style.RESET_ALL)
gameserver.start()

threading.Thread(target=run_http_server, args=('0.0.0.0',)).start() # making it a thread so it allows later console input implementation