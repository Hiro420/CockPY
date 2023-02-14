import dataclasses
import sys, os, json
from lib.proto import Vector
from game_server.resource.enums import *

@dataclasses.dataclass()
class ScenePoint:
    id: int
    # type: str
    # $type: str
    # gadgetId: int
    # pos: dir
    # rot: dir
    # areaId: int
    # unlocked: bool
    # cutsceneList: list[int]
    # groupLimit: bool
    # npcId: int
    # maxSpringVolume: float
    # entryPointId: int
    # size: list[int]
    dungeonIds: list[int]
    # titleTextID: str
    # hideOnMap: bool
    # showLevel: int
    # dungeonRandomList: int
    # dungeonEntryType: str
    # mapVisibility: str
    # forbidSimpleUnlock: bool
    tranSceneId: int
    tranPos: Vector
    tranRot: Vector

@dataclasses.dataclass()
class ConfigScene:
    id: int
    points: dict[int, ScenePoint]
    
@dataclasses.dataclass()
class BinOutput:
    config_scene: dict[int, ConfigScene] = dataclasses.field(default_factory=dict)

    @classmethod
    def load_all_bins(cls, path: str):
        cls_inst = cls()
        
        with os.scandir(os.path.join(path, "binoutput", "Scene", "Point")) as files:
            bins = [file.name for file in files]
                
        for bin_json in bins:
            with open(os.path.join(path, "binoutput", "Scene", "Point", bin_json), 'r', encoding='utf-8') as f:
                try:
                    scene_id = int(bin_json.replace('_point.json','').replace('scene',''))
                    reader = json.load(f)
                    if 'points' in reader:
                        if len(reader['points']) != 0:
                            scene_point = dict()
                            for point_id in reader['points']:
                                row = reader['points'][point_id]
                                point = ScenePoint(
                                    int(point_id),
                                    row["dungeonIds"] if 'dungeonIds' in row else None,
                                    int(row['tranSceneId']) if 'tranSceneId' in row else scene_id,
                                    Vector(row['tranPos']['x'],row['tranPos']['y'],row['tranPos']['z'])if 'tranPos' in row else Vector(0,0,0),
                                    Vector(row['tranRot']['x'],row['tranRot']['y'],row['tranRot']['z'])if 'tranRot' in row else Vector(0,0,0)
                                )
                                scene_point[int(point_id)] = point
                            
                            cls_inst.config_scene[scene_id] = ConfigScene(scene_id, scene_point)
                except:
                    print('Error_read: '+bin_json)
                    
        return cls_inst