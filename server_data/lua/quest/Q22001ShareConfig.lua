-- 父任务id
main_id = 22001

-- 子任务id
sub_ids = {
	2200101,
	2200102,
	2200103,
	2200106,
	2200104,
	2200105
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	["2200101"] = {
	},
	["2200102"] = {
	},
	["2200103"] = {
		quest_var = {
			-1,-1,-1,-1,-1
		}
	},
	["2200106"] = {
		quest_var = {
			-1,-1,-1,-1,-1
		}
	},
	["2200104"] = {
		quest_var = {
			-1,-1,-1,-1,-1
		}
	},
	["2200105"] = {
		quest_var = {
			-1,-1,-1,-1,-1
		}
	}
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	["2200101"] = {
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
	["2200102"] = {
		npcs = {
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001FeiSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 1
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 2
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 3
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001FeiSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 4
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 5
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 6
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001FeiSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 7
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 8
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 9
			}
		}
	},
	["2200103"] = {
		npcs = {
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001FeiSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 1
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 2
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 3
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001FeiSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 4
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 5
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 6
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001FeiSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 7
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 8
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 9
			}
		}
	},
	["2200106"] = {
		npcs = {
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001Route6",
				scene_id = 3,
				room_id = 0,
				data_index = 1
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 2
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 3
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001Route16",
				scene_id = 3,
				room_id = 0,
				data_index = 4
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 5
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 6
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001Route26",
				scene_id = 3,
				room_id = 0,
				data_index = 7
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 8
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 9
			}
		}
	},
	["2200104"] = {
		npcs = {
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001Route6",
				scene_id = 3,
				room_id = 0,
				data_index = 1
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 2
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 3
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001Route16",
				scene_id = 3,
				room_id = 0,
				data_index = 4
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 5
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 6
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001Route26",
				scene_id = 3,
				room_id = 0,
				data_index = 7
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 8
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 9
			},
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q22001LuluSpawn",
				scene_id  = 3,
				room_id = 0,
				data_index = 10
			}
		}
	},
	["2200105"] = {
		npcs = {
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001Route6",
				scene_id = 3,
				room_id = 0,
				data_index = 1
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 2
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 3
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001Route16",
				scene_id = 3,
				room_id = 0,
				data_index = 4
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 5
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn2",
				scene_id = 3,
				room_id = 0,
				data_index = 6
			},
			{
				id = 203001,
				alias = "Npc203001",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001Route26",
				scene_id = 3,
				room_id = 0,
				data_index = 7
			},
			{
				id = 203101,
				alias = "Npc203101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001MengSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 8
			},
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22001LuluSpawn3",
				scene_id = 3,
				room_id = 0,
				data_index = 9
			}
		}
	}
}
