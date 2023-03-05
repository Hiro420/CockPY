-- 任务配置

-- 父任务id

main_id = 463

sub_ids =
{
    46300,
    46301,
    46302,
    46303,
    46304,
    46307,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["46301"] = 
{
    
}

rewind_data["46302"] = 
{
    avatar = {
        offline_dungeon_id = 2000,
        scene_id = 3,
        pos = "Q463Dungeon"
    },   
}

---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["46300"] = 
{
    npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q462PuzzleEnd",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["46301"] = 
{
    npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q463Dungeon",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["46303"] = 
{
    npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q463Born",
			scene_id = 20016,
			room_id = 1,
			data_index = 0,
        }
    }
}