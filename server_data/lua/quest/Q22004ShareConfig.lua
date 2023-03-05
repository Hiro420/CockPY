-- 父任务id
main_id = 22004

-- 子任务id
sub_ids = {
	2200401,
	2200402,
	2200403,
	2200404,
	2200405
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	["2200401"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc220101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22004JiangXueBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2200402"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc220101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22004JiangXueBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2200403"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc220101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22004JiangXueBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2200404"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc220101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22004JiangXueBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2200405"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc220101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22004JiangXueBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	}
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	["2200401"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc220101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22004JiangXueBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
					id = 1005,
					alias = "Paimon",
					script = "Actor/Quest/Q352/Paimon",
					pos = "Q22004JiangXueBorn",
					scene_id = 3,
					data_index = 2,
			},
		}
	},
	["2200402"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc220101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22004JiangXueBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2200403"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc220101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22004JiangXueBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2200404"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc220101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22004JiangXueBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2200405"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc220101",
				script = "Actor/Npc/TempNPC",
				pos = "Q22004JiangXueBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
			{
					id = 1005,
					alias = "Paimon",
					script = "Actor/Quest/Q352/Paimon",
					pos = "Q22004JiangXueBorn",
					scene_id = 3,
					data_index = 2,
			},
		}
	}
}
