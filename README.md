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


# USEFUL INFO:
full scenes list:
`1, 2, 3, 1001, 1002, 1003, 1004, 1005, 1006, 1008, 1009, 1011, 1013, 1015, 1016, 1017, 1018, 1019, 1023, 1024, 1030, 1031, 20000, 20005, 20006, 20007, 20008, 20009, 20010, 20011, 20012, 20013, 20014, 20015, 20016, 20017, 20018, 20019, 20020, 20022, 20023, 20024, 20025, 20026, 20027, 20031, 30001, 30100, 30101, 30102, 30103, 30104, 30200, 30201, 30202, 30203, 30204, 30300, 30301, 30302, 30303, 30304, 30400, 30401, 30402, 30403, 30404, 30500, 30501, 30502, 30503, 30504, 30600, 30601, 30602, 30603, 30604, 30700, 30701, 30702, 30703, 30704, 30800, 30801, 30802, 30803, 30804, 30900, 30901, 30902, 30903, 30904, 31000, 31001, 31002, 31003, 31004, 31100, 31101, 31102, 31103, 31104, 31200, 31201, 31202, 31203, 31204, 40001, 40002, 40003, 40004, 40005, 40006, 40007, 40008, 40009, 40010, 40012, 40013, 40014, 40100, 40101, 40102, 40103, 40200, 40201, 40202, 40203, 40300, 40301, 40302, 40303, 40400, 40401, 40402, 40403, 40404, 40405, 40406, 40407, 40500, 40501, 40502, 40503, 40504, 40505, 40506, 40507, 40508, 40509, 40510, 40511, 40512, 40513, 40600, 40601, 40602, 40603, 40604, 40605, 40606, 40607, 40608, 40609, 40610, 40611, 40612, 40613, 40614, 40615, 40616, 40700, 40701, 40702, 40703, 50000, 50002, 50003, 50004, 50005, 50006, 50007, 50008, 50009, 50010, 50011, 50012, 50013, 50014, 50015, 50016, 50017, 50018, 50019, 50020`

# MAP COMMANDS:

quest icon - spawn monster, example: `spawn 21010101`

star icon - kill all spawned monsters, no need to type anything

flower icon - tp to scene, example: `31204` (only type the scene id, it will find the correct pos by itself)


# CREDITS
[timing1337](https://github.com/timing1337) for [saturnine](https://github.com/timing1337/saturnine) as base of the ps. without you I wouldnt make the ps because too lazy
