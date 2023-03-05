-- 任务配置

-- 父任务id

main_id = 30021

sub_ids =
{
    3002101,
    3002102,
}

rewind_data = {}

rewind_data["3002101"] = 
{
}
quest_data = {}

quest_data["3002101"] = 
{
	npcs = {
        {
            alias = "{QuestNpcID}", --会自动调用接口QuestActorProxy:GetRandomNpcAlias(alias)生成
            script = "Actor/Npc/RandomNpc",
            id = "{QuestNpcID}",
            pos = "{QuestRescuePos}",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

quest_data["3002102"] = 
{
	npcs = {
        {
            alias = "{QuestNpcID2}", --会自动调用接口QuestActorProxy:GetRandomNpcAlias(alias)生成
            script = "Actor/Npc/RandomNpc",
            id = "{QuestNpcID2}",
            pos = "{NPCPos}",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}