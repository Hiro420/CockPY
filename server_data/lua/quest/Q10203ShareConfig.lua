-- 任务配置

-- 父任务id

main_id = 10203

sub_ids =
{
    1020301,
    1020302,
}

rewind_data = {}
rewind_data["1020301"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10202QinSpawn",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 1,
        }
    }
}

rewind_data["1020302"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10202QinSpawn",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 1,
        }
    }
}

quest_data = {}
quest_data["1020301"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10202QinSpawn",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 1,
        }
    }
}


quest_data["1020302"] = 
{
    npcs = {
        {
            id = 10092,
            alias = "Npc10092",
            script = "Actor/Npc/TempNPC",
            pos = "Q10202DoorSpawn",
            scene_id  = 1004,
            room_id = 1,
			data_index = 1,
        }
    }
}