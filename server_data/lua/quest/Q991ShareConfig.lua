-- 任务配置

-- 父任务id

main_id = 991

sub_ids =
{
	99101,
	99102,
	99103,
}

AmborData = 
{
	AmborID = 1002,
	Ambor = "Ambor",
} 

rewind_data = {}

quest_data = {}

quest_data["99101"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q991PosA",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

quest_data["99102"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q991PosB",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

quest_data["99103"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q991PosC",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}
