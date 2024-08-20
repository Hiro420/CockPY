# CockPY
public and open source version of the cbt2 ps im working on

# Requirements:
- [Python 3](https://www.python.org/ftp/python/3.11.2/python-3.11.2-amd64.exe)
- [git](https://github.com/git-for-windows/git/releases/download/v2.40.0.windows.1/Git-2.40.0-64-bit.exe)

## Setup:
(Manual)
- `pip install -r ./requirements.txt`

- `git clone https://github.com/lilmayofuksu/pyenet --recursive && cd pyenet`

- `python setup.py build`

- `python setup.py install`

To run CockPY:

`py -m cockpy`
# TODO:
- add monster spawning automatically using server lua
- add artifact system
- fix weapon sometimes dissapearing just like my dad
- create a database (not in the near future)

# RECENT CHANGELOG:
- now props and monsters spawn naturally
- now you can basically upgrade your skills but it wont update instantly and also the proud skills wont update at all
- now you have ALL materials
- now you can view cbt shop and buy shit from there
- enemies can drown
- all passives and constellations work
- now enemies are lv90
- you can deal damage to enemies
- now can spawn enemies via 'spawn (enemy id)' in the map mark name (just add a mark of type MISSION and call it 'spawn (enemy id)' but replace (enemy id) with the actual enemy id
- now can kill all manually spawned enemies at once by adding a STAR type map mark
- now can recieve a goofy mail from Hiro

# Critical bugs:
- some teleport points may cause your character to stuck

# MAP COMMANDS:

quest icon - spawn monster, example: `spawn 21010101`

star icon - kill all spawned monsters, no need to type anything

flower icon - tp to scene, example: `31204` (only type the scene id, it will find the correct pos by itself)


# CREDITS
[timing1337](https://github.com/timing1337) for [saturnine](https://github.com/timing1337/saturnine) as base of the ps. without you I wouldnt make the ps because too lazy
