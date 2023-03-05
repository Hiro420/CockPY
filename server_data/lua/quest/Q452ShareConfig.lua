-- 任务配置

-- 父任务id

main_id = 452

sub_ids =
{
    45201,
    45202,
    45203,
    45204,
    45205,
    45206,
}
AmborData = 
{
	ID = 1002,
	Alias = "Ambor",
}

FarmerData = 
{
	ID = 163101,
	Alias = "Npc163101",
}

PaimonData = 
{
	ID = 1005,
	Alias = "Paimon",
}

rewind_data = {}
rewind_data["45202"] = 
{
    npcs = 
    {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q452AmborFight",
            data_index = 0,
            scene_id  = 3,
            roomID = 0,
			subIndex = 0,
        },
    }
}

rewind_data["45203"] = 
{
    npcs = 
    {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q452AmborFight",
            data_index = 0,
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}

rewind_data["45204"] = 
{
    npcs = 
    {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q452AmborFight",
            data_index = 0,
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}

rewind_data["45205"] = 
{
    npcs = 
    {

        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q452AmborEnd",
            data_index = 0,
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }

}

quest_data = {}

quest_data["45201"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q452AmborBorn",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

quest_data["45202"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q452AmborFight",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

quest_data["45203"] = 
{
	npcs = 
	{
		{
			alias = "Npc163101",
			script = "Actor/Npc/TempNPC",
			id = 163101,
			pos = "Q452FightFarmer",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

quest_data["45205"] = 
{
	npcs = 
	{
		{
			alias = "Npc163101",
			script = "Actor/Npc/TempNPC",
			id = 163101,
			pos = "Q452FightFarmer",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}

quest_data["45206"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Q452AmborEnd",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		} 
    }
}