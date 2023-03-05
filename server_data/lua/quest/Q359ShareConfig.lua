-- 任务配置

-- 父任务id

main_id = 359

sub_ids =
{
    35901,
    35902,
    35903,
    35904,
}

rewind_data = {}

rewind_data["35901"] = 
{
}


quest_data = {}

quest_data["35901"] = 
{
    npcs = {
        {
        ----Q359NPC1Data
            alias = "Q357NPC1",
			script = "Actor/Quest/Q376/Soldier",
			id = 10001,
			pos = "Q357NPC1",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        },
        {
            ----Q359NPC2Data
                alias = "Q357NPC2",
                script = "Actor/Quest/Q376/Soldier",
                id = 10002,
                pos = "Q357NPC2",
                scene_id = 3,
                room_ID = 0,
                data_index = 1,
            },
        {
            ----Q359NPC3Data
                alias = "Q357NPC3",
                script = "Actor/Quest/Q376/Soldier",
                id = 10003,
                pos = "Q357NPC3",
                scene_id = 3,
                room_ID = 0,
                data_index = 2,
            },
        {
            ----Q359NPC4Data
                alias = "Q357NPC4",
                script = "Actor/Quest/Q376/Soldier",
                id = 10004,
                pos = "Q357NPC4",
                scene_id = 3,
                room_ID = 0,
                data_index = 3,
            }, 
        {
            ----Q359NPC5Data
                alias = "Q357NPC5",
                script = "Actor/Quest/Q376/Soldier",
                id = 10005,
                pos = "Q357NPC5",
                scene_id = 3,
                room_ID = 0,
                data_index = 4,
            },   
        {
            ----Q359NPC6Data
                alias = "Q357NPC6",
                script = "Actor/Quest/Q376/Soldier",
                id = 10006,
                pos = "Q357NPC6",
                scene_id = 3,
                room_ID = 0,
                data_index = 5,
            }      
    },
    gadgets =
	{
		{
			id = 70700004,
			pos = "Q359MengdeWindDragon",
			alias = "MengdeWindDragon", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	}
}

quest_data["35902"] =
{
    gadgets =
	{
		{
			id = 70700003,
			pos = "Q359AmborDung",
			alias = "AmborDungeon", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	} 
} 

quest_data["35903"] =
{
    gadgets =
	{
		{
			id = 70700003,
			pos = "Q359GaiaDung",
			alias = "GaiaDungeon", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	} 
} 

quest_data["35904"] =
{
    gadgets =
	{
		{
			id = 70700003,
			pos = "Q359LisaDung",
			alias = "LisaDungeon", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	} 
} 