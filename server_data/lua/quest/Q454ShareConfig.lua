-- 任务配置

-- 父任务id

main_id = 454

sub_ids =
{
	45407,
	45401,
	45410,
	45411,
	45412,
	45413,
	45414,
	45408,
	45409,
	45415,
    45402,
    45403,
	45404,
	45416,
	45417,
    45405,
    45406,
}

AmborData = 
{
	ID = 1002,
	Alias = "Ambor",
}

RazorData = 
{
	ID = 1011,
	Alias = "Razor",
}

WolfWoundData = 
{
	ID = 1165,
	Alias = "WolfWound",
}

WolfBossData = 
{
	ID = 1176,
	Alias = "WolfBoss",
}

Farmer1Data = 
{
	ID = 154301,
	Alias = "Npc154301",
}

Farmer2Data = 
{
	ID = 163201,
	Alias = "Npc163201",
}

rewind_data = {}

rewind_data["45406"] =
{
    avatar = {
        scene_id = 3,
        pos = "Q45406PlayerTalk"
    }, 

    npcs = {
        {
            id = 1176,
            alias = "WolfBoss",
            script = "Actor/Npc/RazorWolfBoss",
            pos = "Q454WolfBoss",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        {
            id = 1011,
            alias = "Razor",
            script = "Actor/Npc/Razor",
            pos = "Q45406Razor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q454AmborEnd",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }

    }
}

quest_data = {}

quest_data["45407"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q45401Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

        {
			alias = "Razor",
			script = "Actor/Npc/Razor",
			id = 1011,
			pos = "Q45401Razor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
    }
}

quest_data["45410"] = 
{
	gadgets =
	{
		{
			id = 70300074,
			pos = "Q45411BloodHint",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "BloodHint", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["45411"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q45411Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

        {
			alias = "Razor",
			script = "Actor/Npc/Razor",
			id = 1011,
			pos = "Q45411Razor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
	},
	
	gadgets =
	{
		{
			id = 70300074,
			pos = "Q45411BloodHint",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "BloodHint", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["45412"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q45413Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

        {
			alias = "Razor",
			script = "Actor/Npc/Razor",
			id = 1011,
			pos = "Q45413Razor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {
			alias = "WolfWound",
			script = "Actor/Npc/RazorWolfWound",
			id = 1165,
			pos = "Q45413WoundWolf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
    }
}

quest_data["45414"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q454Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

        {
			alias = "Razor",
			script = "Actor/Npc/Razor",
			id = 1011,
			pos = "Q454Razor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {
			alias = "WolfWound",
			script = "Actor/Npc/RazorWolfWound",
			id = 1165,
			pos = "Q454WolfWound",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
    }
}

quest_data["45406"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q454AmborEnd",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

        {
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q454Ambor2End",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
        },

        {
			alias = "Razor",
			script = "Actor/Npc/Razor",
			id = 1011,
			pos = "Q45406Razor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {
			alias = "WolfBoss",
			script = "Actor/Npc/RazorWolfWound",
			id = 1165,
			pos = "Q454WolfBoss",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
    }
}

