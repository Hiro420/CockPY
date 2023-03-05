-- 任务配置

-- 父任务id

main_id = 394

sub_ids =
{
    39401,
    39402,
    39403,
}

rewind_data = {}

rewind_data["39401"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q393DilucPos",
            data_index = 0,
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q393WendyPos",
            data_index = 0,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q393QinPos",
            data_index = 0,
        },

    }
}

rewind_data["39402"] = 
{
}

rewind_data["39403"] = 
{
    quest_var = {
        2, -1, -1, -1, -1
    }
}


quest_data = {}

quest_data["39403"] = 
{
    npcs = 
	{
		{
			alias = "Wendy",
			script = "Actor/Quest/Q301/Wendy301",
			id = 1001,
			pos = "Q396Wendy",
			scene_id = 1008,
			room_id = 1,
			data_index = 0,
		},
		{
			alias = "Barbara",
			script = "Actor/Quest/Q413/Barbara",
			id = 1008,
			pos = "Q396BBR",
			scene_id = 1008,
			room_id = 1,
			data_index = 0,
		},
		{
			alias = "Qin",
			script = "Actor/Quest/Q411/Qin",
			id = 1006,
			pos = "Q396Qin",
			scene_id = 1008,
			room_id = 1,
			data_index = 0,
		} 
	}
}