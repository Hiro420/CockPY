-- 任务配置

-- 父任务id

main_id = 490

sub_ids =
{
    49001,
    49002,
    49003,
    49004,
    49005,
    49006,
    49007,
    49008,
}

rewind_data = {}

rewind_data["49001"] = 
{
}

rewind_data["49002"] = 
{
}

rewind_data["49003"] = 
{
}

rewind_data["49004"] = 
{
}

rewind_data["49005"] = 
{
}

rewind_data["49006"] = 
{
}

rewind_data["49007"] = 
{
	npcs = {
		{
			alias = "Qin",
			script = "Actor/Npc/TempNPC",
			id = 1006,
			pos = "Q49007Qin",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
	}
}

rewind_data["49008"] = 
{
}

rewind_data["49010"] = 
{
    npcs = {
        {
            id = 100801,
            alias = "Barbara01",
            script = "Actor/Npc/TempNPC",
            pos = "Q49010Babara",
            scene_id  = 1009,
            room_id = 1,
        },
        {
            id = 100201,
            alias = "Amber01",
            script = "Actor/Npc/TempNPC",
            pos = "Q49010Ambor",
            scene_id  = 1009,
            room_id = 1,
        },
        {
            id = 100401,
            alias = "Kaeya01",
            script = "Actor/Npc/TempNPC",
            pos = "Q49010Kaeya",
            scene_id  = 1009,
            room_id = 1,
        },
        {
            id = 100701,
            alias = "Lisa01",
            script = "Actor/Npc/TempNPC",
            pos = "Q49010Lisa",
            scene_id  = 1009,
            room_id = 1,
        },
        {
            id = 100901,
            alias = "Diluc01",
            script = "Actor/Npc/TempNPC",
            pos = "Q49010Diluke",
            scene_id  = 1009,
            room_id = 1,
        },
        {
            id = 100101,
            alias = "Venti01",
            script = "Actor/Npc/TempNPC",
            pos = "Q49010Windy",
            scene_id  = 1009,
            room_id = 1,
        }
    },
}


quest_data = {}

quest_data["49001"] = 
{
    npcs = 
	{
		{
			alias = "Barbara",
			script = "Actor/Npc/TempNPC",
			id = 1008,
			pos = "Q49001Babara",
			scene_id = 1008,
			room_id = 1,
			data_index = 0,
		} 
    }
}

quest_data["49002"] = 
{
    npcs = 
	{
		{
			alias = "Qin",
			script = "Actor/Npc/TempNPC",
			id = 1006,
			pos = "Q49001Qin",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

quest_data["49003"] = 
{
    npcs = 
	{
		{
			alias = "AbyssFire",
			script = "Actor/Npc/TempNPC",
			id = 10032,
			pos = "Q46102Paimon",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

quest_data["49006"] = 
{
    npcs = 
	{
		{
			alias = "Qin",
			script = "Actor/Npc/TempNPC",
			id = 1006,
			pos = "Q49006Qin",
			scene_id = 20022,
			room_id = 1,
			data_index = 0,
		},
		{
			alias = "Qin",
			script = "Actor/Npc/TempNPC",
			id = 1006,
			pos = "Q49007Qin",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

quest_data["49007"] = 
{
    npcs = 
	{
		{
			alias = "Qin",
			script = "Actor/Npc/TempNPC",
			id = 1006,
			pos = "Q49009Qin",
			scene_id = 1009,
			room_id = 1,
			data_index = 0,
		} 
    }
}

quest_data["49009"] = 
{
    npcs = 
	{
		{
			alias = "Qin",
			script = "Actor/Npc/TempNPC",
			id = 1006,
			pos = "Q49009Qin",
			scene_id = 1009,
			room_id = 1,
			data_index = 0,
		} 
    }
}

quest_data["49010"] = 
{
    npcs = 
	{
		{
			alias = "Qin",
			script = "Actor/Npc/TempNPC",
			id = 1006,
			pos = "Q49010Qin",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

quest_data["49012"] = 
{
    npcs = 
	{
		{
			alias = "Qin",
			script = "Actor/Npc/TempNPC",
			id = 1006,
			pos = "Q49012Qin",
			scene_id = 20022,
			room_id = 1,
			data_index = 0,
		} 
	},
	-- items ={
	-- {
	-- 	id = 2025,
	-- 	pos = "Q49012Qin",   -- 使用SpawnItemWithPos时可不配，使用SpawnItem必须配
	-- 	born_type =1 , -- optional default : 1
	-- 	alias = "Q490Ball", -- optional default : ""
	-- 	scene_id = 20022, -- optional default : sceneData.DefaultSceneID
	-- 	room_id = 1, -- optional default : 0
	-- }
-- }
}