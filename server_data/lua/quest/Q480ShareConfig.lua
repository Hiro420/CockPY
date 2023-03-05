-- 任务配置

-- 父任务id

main_id = 480

sub_ids =
{
    48005,
    48001,
    48002,
    48003,
    48004,
}

rewind_data = {}

rewind_data["48001"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q48001Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


rewind_data["48003"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q48001Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


rewind_data["48004"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q48004Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


quest_data = {}

quest_data["48001"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q48001Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


quest_data["48002"] = 
{
    gadgets = {
        {
            id = 70710005,
            pos = "Q48002Wind101",
            alias = "Wind1", 
            scene_id = 3, 
            room_id = 0,  
        },
        {
            id = 70710005,
            pos = "Q48002Wind102",
            alias = "Wind2", 
            scene_id = 3, 
            room_id = 0,  
		},
		{
            id = 70690001,
            pos = "Q48002Wind102",
            alias = "Wind3", 
            scene_id = 3, 
            room_id = 0,  
        },
    },
}

quest_data["48003"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q48001Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


quest_data["48004"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q48004Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


