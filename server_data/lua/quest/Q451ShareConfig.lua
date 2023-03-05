-- 任务配置

-- 父任务id

main_id = 451

sub_ids =
{
    45101,
    45102,
    45103,
    45104,
    45105,
    45106,
    45107,
    45108,
    45109,
}

PaimonData = 
{
	ID = 1005,
	Alias = "Paimon",
}

RazorData = 
{
	ID = 1011,
	Alias = "Razor",
}

rewind_data = {}

rewind_data["45104"] = 
{
    npcs = 
    {
        {
            id = 1011,
            alias = "Razor",
            script = "Actor/Npc/Razor",
            pos = "Q451Razor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}

rewind_data["45105"] = 
{
    npcs = 
    {
        {
            id = 1011,
            alias = "Razor",
            script = "Actor/Npc/Razor",
            pos = "Q451Razor",
            data_index = 0,
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}

quest_data = {}

quest_data["45102"] = 
{
    npcs = 
    {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q451WolfRunStart",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}


quest_data["45103"] = 
{
	npcs = 
	{
		{
			alias = "Razor",
			script = "Actor/Npc/Razor",
			id = 1011,
			pos = "Q451Razor",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

