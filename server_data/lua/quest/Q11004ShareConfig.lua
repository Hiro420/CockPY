-- 任务配置

-- 父任务id

main_id = 11004

sub_ids =
{
	1100401,
	1100499,
	1100498,
	1100402,
	1100403,
}

XianglingData = 
{
	ID = 1012,
	Alias = "Xiangling",
}

PaimonData = 
{
	ID = 1005,
	Alias = "Paimon",
}

rewind_data = {}

quest_data = {}

quest_data["1100498"] = 
{
	gadgets =
	{
		{
			id = 70710029,
			pos = "Q1100498FreezeBoar",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "FreezeBoar", -- optional default : ""
			scene_id = 20005, -- optional default : sceneData.DefaultSceneID
			room_id = 0,
		}
	}
}

quest_data["1100403"] = 
{
	npcs = 
	{
		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100403XL",
			scene_id = 20005,
			room_id = 0,
			data_index = 0,
		},
	},
	
	gadgets =
	{
		{
			id = 70710029,
			pos = "Q1100403FreezeBoar",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "FreezeBoar", -- optional default : ""
			scene_id = 20005, -- optional default : sceneData.DefaultSceneID
			room_id = 0,
		}
	}
}