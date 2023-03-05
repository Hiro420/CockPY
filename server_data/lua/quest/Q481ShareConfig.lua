-- 任务配置

-- 父任务id

main_id = 481

sub_ids =
{
    48101,
    48102,
    48103,
    48104,
    48105,
    48106,
}

rewind_data = {}

rewind_data["48101"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q481Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


rewind_data["48102"] = 
{
}

rewind_data["48103"] = 
{
}

quest_data = {}

quest_data["48101"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q481Ambor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

quest_data["48102"] = 
{
    trial_actors = {

    },
    actors = {
        
    },
    items = {
        -- {
        --     id = 100004,
        --     pos = "Q404Pos2",
        --     alias = "Ball",
        -- },
    },
    monsters = {
        -- {
        --     id = 20010801,
        --     pos = "Q404Pos2",
        -- },
        -- {
        --     id = 20010801,
        --     pos = "Q404Pos2",
        -- }
    },
    gadgets = {
        -- {
        --     id = 70300004,
        --     pos = "Q404Pos2",
        --     alias = "GoalMarker404",
        -- }
    }
}
