-- 父任务id
main_id = 22002

-- 子任务id
sub_ids = {
	2200201,
	2200202,
	2200203,
	2200204
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	["2200201"] = {
	},
	["2200202"] = {
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
	["2200203"] = {
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
	["2200204"] = {
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
	["2200201"] = {
		npcs = {
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000FeiSpawn",
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
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000LuluSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 3
			}
		}
	},
	["2200202"] = {
	},
	["2200203"] = {
		npcs = {
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q22000LuluSpawn",
				scene_id  = 3,
				room_id = 0,
				data_index = 1
			}
		}
	},
	["2200204"] = {
	}
}
