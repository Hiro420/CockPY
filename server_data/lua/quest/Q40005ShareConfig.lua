-- 任务配置

-- 父任务id

main_id = 40005

sub_ids =
{
    4000501,
    4000502,
    4000503,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}
rewind_data["4000502"] = 
{
    npcs = 
	{
		{
			alias = "Npc10205",
			script = "Actor/Npc/TempNPC",
			id = 10205,
			pos = "Q40005Thief",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["4000501"] = 
{
    npcs = 
	{
		{
			alias = "Npc10205",
			script = "Actor/Npc/TempNPC",
			id = 10205,
			pos = "Q40005Thief",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

quest_data["4000504"] = 
{
    npcs = 
	{
		{
			alias = "Npc10205",
			script = "Actor/Npc/TempNPC",
			id = 10205,
			pos = "Q40005Thief",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

quest_data["4000505"] = 
{
    npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q40005Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}