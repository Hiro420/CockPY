-- 父任务id
main_id = 22000

-- 子任务id
sub_ids = {
	2200001,
	2200002,
	2200003,
	2200004,
	2200005
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	["2200001"] = {
	},
	["2200002"] = {
		npcs = {
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000LuluSpawn",
				scene_id = 3
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000MengSpawn",
				scene_id = 3
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000FeiSpawn",
				scene_id = 3
			}
		}
	},
	["2200005"] = {
		npcs = {
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000LuluSpawn",
				scene_id = 3
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000MengSpawn",
				scene_id = 3
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000FeiSpawn",
				scene_id = 3
			}
		}
	},
	["2200004"] = {
		npcs = {
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000LuluSpawn",
				scene_id = 3
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000MengSpawn",
				scene_id = 3
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000FeiSpawn",
				scene_id = 3
			}
		}
	}
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	["2200001"] = {
		npcs = {
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000LuluSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 1
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000MengSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 2
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000FeiSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 3
			}
		}
	},
	["2200002"] = {
	},
	["2200003"] = {
	},
	["2200004"] = {
	}
}
