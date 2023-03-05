-- 任务配置

-- 父任务id

main_id = 40003

sub_ids =
{
    4000301,
    4000302,
    4000303,
    4000304,
    4000305,
    4000306,
    4000307,
    4000308,
    4000309,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}
rewind_data["4000309"] = 
{
    npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q40003Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	},
	gadgets =
	{
		{
			id = 70700017,
			pos = "Q40007_ThiefRout2",
			alias = "Q40003ThoarderIcon", 
			scene_id = 3, 
			room_id = 0, 
		}
	}
}


---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["4000304"] = 
{
    npcs = 
	{
		{
			alias = "Npc242801",
			script = "Actor/Npc/TempNPC",
			id = 242801,
			pos = "Q40003Soldier",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

quest_data["4000306"] = 
{
    npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q40003Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
	},
	gadgets =
	{
		{
			id = 70700017,
			pos = "Q40007_ThiefRout2",
			alias = "Q40003ThoarderIcon", 
			scene_id = 3, 
			room_id = 0, 
		}
	}
}

quest_data["4000307"] = 
{
    npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q4000307_Paimon",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}