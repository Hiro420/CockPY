-- 父任务id
main_id = 21015

-- 子任务id
sub_ids = {
	2101501,
	2101502,
	2101503,
	2101504,
	2101505
}

XiaojiujiuData = 
{
	ID = 2311,
	Alias = "Npc2311",
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["2101502"] = 
{
	npcs = 
	{
		{
			alias = "Npc2311",
			script = "Actor/Npc/TempNPC",
			id = 2311,
			pos = "Q21015hua03",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

    }
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["2101501"] = 
{

	npcs = {
		{
			alias = "Npc2311",
			script = "Actor/Npc/TempNPC",
			id = 2311,
			pos = "Q21015hua03",
			scene_id = 3
		}
	}

}
	


