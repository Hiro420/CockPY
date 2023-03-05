-- 任务配置

-- 父任务id

main_id = 992

sub_ids =
{
	99201,
	99202,
	99203,
}

AmborData = 
{
	AmborID = 1002,
	Ambor = "Ambor",
} 

rewind_data = {}

quest_data = {}

quest_data["99201"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q991PosD",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

quest_data["99202"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q991PosE",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}   
    }
}

quest_data["99203"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q991PosF",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}
