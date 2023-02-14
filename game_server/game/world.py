from lib.proto import ProtEntityType,SceneEntityAppearNotify,SceneEntityDisappearNotify,VisionType

class World:
    next_entity_id: int = 0
    
    def get_next_entity_id(self, type: ProtEntityType):
        self.next_entity_id += 1
        return (type << 24) + self.next_entity_id
