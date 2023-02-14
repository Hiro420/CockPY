from lib.proto import MotionState, Vector, SceneEntityInfo, MotionInfo, SceneEntityAiInfo
from game_server.game.world import World
import dataclasses

class Entity(object):
    world: World
    motion: Vector
    rotation: Vector
    speed: Vector

    entity_id: int
    guid: int
    motion_state: MotionState = MotionState.MOTION_STANDBY

    def __init__(self, world: World, motion: Vector = Vector(0, 400, 0), rotation: Vector = Vector(0, 0, 0), speed: Vector = Vector(0, 0, 0)) -> None:
        self.world = world
        self.motion = motion
        self.rotation = rotation
        self.speed = speed
        pass

    def get_motion_info(self): 
        return MotionInfo(pos=self.motion, rot=self.rotation, speed=self.speed, state=self.motion_state)

    def get_scene_entity_info(self):
        scene_entity_info = SceneEntityInfo()
        scene_entity_info.entity_id = self.entity_id
        scene_entity_info.life_state = 1
        scene_entity_info.motion_info = self.get_motion_info()
        scene_entity_info.ai_info = SceneEntityAiInfo(is_ai_open=True)
        return scene_entity_info