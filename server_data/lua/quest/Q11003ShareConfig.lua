-- 任务配置

-- 父任务id

main_id = 11003

sub_ids =
{
	1100301,
	1100302,
	1100303,
	1100304,
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

OlafData = 
{
	ID = 163001,
	Alias = "Npc163001",
}

rewind_data = {}

quest_data = {}

quest_data["1100301"] = 
{
	npcs = 
	{
		{
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100302Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
    }
}

quest_data["1100302"] = 
{
	npcs = 
	{
		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100302XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		
		{
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100302Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
    }
}

quest_data["1100303"] = 
{
	npcs = 
	{
		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100302XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

		{
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100302Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
    }
}

quest_data["1100304"] = 
{
	npcs = 
	{
		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100302XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		
		{
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100302Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
    }
}