-- 任务配置

-- 父任务id

main_id = 453

sub_ids =
{
    45301,
    45302,
    45303,
    45304,
    45305,
    45306,
    45307,
    45308,
}

PaimonData = 
{
	ID = 1005,
	Alias = "Paimon",
}

AmborData = 
{
	ID = 1002,
	Alias = "Ambor",
}

FarmerOldData = 
{
	ID = 153701,
	Alias = "Npc153701",
}

FarmerAngryData = 
{
	ID = 163201,
	Alias = "Npc163201",
}

FarmerWound1Data = 
{
	ID = 154301,
	Alias = "Npc154301",
}

rewind_data = {}


rewind_data["45305"] =
{
    npcs = 
    {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q453AmborClue",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

    }
}

quest_data = {}

quest_data["45301"] = 
{
	npcs = 
	{
        {
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q453AmborTalk",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
		{
			alias = "Npc153701",
			script = "Actor/Npc/TempNPC",
			id = 153701,
			pos = "Q453FarmerOld",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

        {
			alias = "Npc163201",
			script = "Actor/Npc/TempNPC",
			id = 163201,
			pos = "Q453Farmer1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {
			alias = "Npc154301",
			script = "Actor/Npc/TempNPC",
			id = 154301,
			pos = "Q453FarmerWound1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

quest_data["45302"] = 
{
	npcs = 
	{

		{
			alias = "Npc153701",
			script = "Actor/Npc/TempNPC",
			id = 153701,
			pos = "Q453FarmerOld",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

        {
			alias = "Npc163201",
			script = "Actor/Npc/TempNPC",
			id = 163201,
			pos = "Q453Farmer1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {
			alias = "Npc154301",
			script = "Actor/Npc/TempNPC",
			id = 154301,
			pos = "Q453FarmerWound1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
	},
	
	gadgets =
	{
		{
			id = 70300071,
			pos = "Q453PawHint",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "PawHint", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["45303"] = 
{

	gadgets =
	{
		{
			id = 70300072,
			pos = "Q453ToothHint",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "ToothHint", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["45304"] =
{
	npcs =
	{
        {
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q453AmborClue",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
      
		{
			alias = "Npc153701",
			script = "Actor/Npc/TempNPC",
			id = 153701,
			pos = "Q453FarmerOld",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

        {
			alias = "Npc163201",
			script = "Actor/Npc/TempNPC",
			id = 163201,
			pos = "Q453Farmer1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    
        {
			alias = "Npc154301",
			script = "Actor/Npc/TempNPC",
			id = 154301,
			pos = "Q453FarmerWound1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}

	},
	
	gadgets =
	{
		{
			id = 70300073,
			pos = "Q453HairHint",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "HairHint", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["45305"] = 
{
	npcs = 
	{

		{
			alias = "Npc153701",
			script = "Actor/Npc/TempNPC",
			id = 153701,
			pos = "Q453FarmerOld",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

        {
			alias = "Npc163201",
			script = "Actor/Npc/TempNPC",
			id = 163201,
			pos = "Q453Farmer1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {
			alias = "Npc154301",
			script = "Actor/Npc/TempNPC",
			id = 154301,
			pos = "Q453FarmerWound1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
	},
	
	gadgets =
	{
		{
			id = 70300073,
			pos = "Q453HairHint",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "HairHint", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["45306"] = 
{
	npcs = 
	{
        {
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q453AmborTalk",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }

    }
}

quest_data["45307"] = 
{
    npcs = 
    {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q453PaimonPaw",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	},
	
	gadgets =
	{
		{
			id = 70300071,
			pos = "Q453PawHint",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "PawHint", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["45308"] = 
{
    npcs = 
    {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q453PaimonTooth",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	},
	
	gadgets =
	{
		{
			id = 70300072,
			pos = "Q453ToothHint",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "ToothHint", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

