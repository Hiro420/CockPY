# CockPY
public and open source version of the cbt2 ps im working on


## Setup:
(Automatic)
- Run `setup.bat` as Administrator. (If any errors proceed to manual way.)


(Manual)
- `pip install -r ./requirements.txt`

- `git clone https://github.com/lilmayofuksu/pyenet --recursive && cd pyenet`

- `python setup.py build`

- `python setup.py install`

To run CockPY:

`py -m cockpy`
# TODO:
- add damage dealing
- add monster spawning automatically using server lua
- add artifact system
- fix weapon sometimes dissapearing just like my dad
- create a database (not in the near future)

# RECENT CHANGELOG:
- now can spawn enemies via 'spawn (enemy id)' in the map mark name (just add a mark of type MISSION and call it 'spawn (enemy id)' but replace (enemy id) with the actual enemy id
- now can kill all manually spawned enemies at once by adding a STAR type map mark


# SPECIAL THANKS
- [akioukun](https://github.com/akioukun) for contributing and adding an automatic setup


# CREDITS
[timing1337](https://github.com/timing1337) for [saturnine](https://github.com/timing1337/saturnine) as base of the ps. without you I wouldnt make the ps because too lazy
