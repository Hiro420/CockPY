-- 任务配置

-- 父任务id

main_id = 1002

sub_ids =
{
    100201,
    100202,
    100203,
    100204,
    100205,
}

rewind_data = {}

rewind_data["100205"] = 
{

}


quest_data = {}

quest_data["100201"] = 
{
	npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q1002_Paimon2",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

    }
}

quest_data["100205"] = 
{
	npcs = 
	{
		{
			alias = "Npc2002801",
			script = "Actor/Npc/TempNPC",
			id = 2002801,
			pos = "Q1002_XianRen",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

    }
}