-- 任务配置

-- 父任务id

main_id = 20101

sub_ids =
{
	q2010101 = 2010101,
	q2010102 = 2010102,
    q2010103 = 2010103,
    q2010104 = 2010104,
    q2010105 = 2010105,
    q2010106 = 2010106,
    q2010107 = 2010107,
    q2010108 = 2010108,
    q2010109 = 2010109,
    q2010110 = 2010110,
    q2010111 = 2010111,
    q2010112 = 2010112,
}

rewind_data = {}

rewind_data["2010101"] = 
{
}

rewind_data["2010102"] = 
{
}






quest_data = {}

quest_data["2010103"] = 
{
    npcs = {
        {
            id = 1501,
            alias = "ScaredNPC",
            script = "Actor/Npc/TempNPC",
            pos = "NPC_Scared",
            data_index = 0,
            scene_id  = 20023,
            room_id = 0,
        },
    }
}

quest_data["2010141"] = 
{
    npcs = {
        {
            id = 1503,
            alias = "GuardNPC",
            script = "Actor/Npc/TempNPC",
            pos = "Guard101",
            data_index = 0,
            scene_id  = 20023,
            room_id = 0,
        },
        {
            id = 1504,
            alias = "GuardNPC201",
            script = "Actor/Npc/TempNPC",
            pos = "Guard201",
            data_index = 0,
            scene_id  = 20023,
            room_id = 0,
        },
    }
}

quest_data["2010143"] = 
{
    gadgets = {
        {
            id = 70300040,
            pos = "ViolinQuest",
            alias = "Harp", 
            scene_id = 20023, 
            room_id = 0,  

        },
    }
}

quest_data["2010151"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "NPC_Diluc",
            data_index = 0,
            scene_id  = 20023,
            room_id = 0,
        },
    }
}

quest_data["2010152"] = 
{
    gadgets = {
        {
            id = 70700016,
            pos = "ViolinInter",
            alias = "Harp0", 
            scene_id = 20023, 
            room_id = 0,  

        },
        {
            id = 70900201,
            pos = "ViolinTarget",
            alias = "Goal01", 
            scene_id = 20023, 
            room_id = 0,  

        },
    }
}