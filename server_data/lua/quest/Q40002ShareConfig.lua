-- 任务配置

-- 父任务id

main_id = 40002

sub_ids =
{
    4000201,
    4000202,
	4000203,
	4000209,
	4000210,
	4000211,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}
rewind_data["4000201"] = 
{

}


---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["4000209"] = 
{
	gadgets =
	{
		{
			id = 70710041,
			pos = "Q40002Search1",
			alias = "Q40002Search1", 
			scene_id = 3, 
			room_id = 0, 
		}
	}
}

quest_data["4000210"] = 
{
	gadgets =
	{
		{
			id = 70710042,
			pos = "Q40002Search2",
			alias = "Q40002Search2", 
			scene_id = 3, 
			room_id = 0, 
		}
	}
}

quest_data["4000211"] = 
{
	gadgets =
	{
		{
			id = 70710043,
			pos = "Q40002Search3",
			alias = "Q40002Search3", 
			scene_id = 3, 
			room_id = 0, 
		}
	}
}

quest_data["4000214"] = 
{
    npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q4000214_Paimon",
            sceneID = 3,
            roomID = 0,
            subIndex = 0,
		}
    }
}