import threading
from sdk_server.app import run_http_server
from game_server import GameServer;
from game_server.handlers import auth, ping, scene, avatar, entity, map_commands, clock, gacha, luamult, dungeon
from colorama import init, Fore, Back, Style

# initialize colorama
init()

gameserver = GameServer("localhost", 22102)
print(Fore.GREEN + "game server starting on localhost with ip 221012" + Style.RESET_ALL)
gameserver.add(auth.router)
print(Fore.GREEN + "auth handler started" + Style.RESET_ALL)
gameserver.add(ping.router)
print(Fore.GREEN + "ping handler started" + Style.RESET_ALL)
gameserver.add(scene.router)
print(Fore.GREEN + "scene handler started" + Style.RESET_ALL)
gameserver.add(dungeon.router)
print(Fore.GREEN + "dungeon handler started" + Style.RESET_ALL)
gameserver.add(avatar.router)
print(Fore.GREEN + "avatar handler started" + Style.RESET_ALL)
gameserver.add(entity.router)
print(Fore.GREEN + "entity handler started" + Style.RESET_ALL)
gameserver.add(map_commands.router)
print(Fore.GREEN + "map_commands handler started" + Style.RESET_ALL)
gameserver.add(clock.router)
print(Fore.GREEN + "clock handler started" + Style.RESET_ALL)
gameserver.add(gacha.router)
print(Fore.GREEN + "gacha handler started" + Style.RESET_ALL)
gameserver.add(luamult.router)
print(Fore.GREEN + "luamult handler started" + Style.RESET_ALL)
gameserver.start()

threading.Thread(target=run_http_server, args=('0.0.0.0',)).start() # making it a thread so it allows later console input implementation