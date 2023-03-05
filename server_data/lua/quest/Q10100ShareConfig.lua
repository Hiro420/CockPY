-- 任务配置

-- 父任务id

main_id = 10100

sub_ids =
{
    1010001,
    1010002,
    1010003,
    1010004,
    1010005,
    1010006,
    1010044,
}

rewind_data = {}

rewind_data["1010003"] = 
{
    npcs = {
        {
            id = 1007,
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            pos = "Q1010003Lisa",
            scene_id = 3,
            data_index = 1,
        },
    }
}
quest_data = {}

quest_data["1010002"] = 
{
    npcs = 
	{
		{
			alias = "Lisa",
			script = "Actor/Quest/Q411/Lisa",
			id = 1007,
			pos = "Q10100Lisa",
			scene_id = 1004,
			room_id = 100401,
			data_index = 1,
        },
        {
			alias = "Lisa",
			script = "Actor/Quest/Q411/Lisa",
			id = 1007,
			pos = "Q1010003Lisa",
			scene_id = 3,
			room_id = 0,
			data_index = 2,
        },
	}
}

quest_data["1010009"] = 
{
    npcs = 
	{
		{
			alias = "Lisa",
			script = "Actor/Quest/Q411/Lisa",
			id = 1007,
			pos = "Q1010009Lisa",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	}
}

quest_data["1010044"] = 
{
	gadgets =
	{
		{
			id = 70700005,
			pos = "Q10100Book4",
			alias = "Q10100Book4", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	}
}