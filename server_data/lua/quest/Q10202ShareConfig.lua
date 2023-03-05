-- 任务配置

-- 父任务id

main_id = 10202

sub_ids =
{
    1020201,
    1020202,
    1020203,
    1020204,
}

rewind_data = {}
rewind_data["1020203"] = 
{
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10202KleeSpawn",
            scene_id  = 1004,
            room_id = 100402,                  
			data_index = 1,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10202QinSpawn",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 2,
        }
    }
}



quest_data = {}

quest_data["1020202"] = 
{
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10202KleeSpawn",
            scene_id  = 1004,
            room_id = 100402,                  
			data_index = 1,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q10202QinSpawn",
            scene_id  = 1004,
            room_id = 100402,
			data_index = 2,
        }
    }
}

quest_data["1020204"] = 
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