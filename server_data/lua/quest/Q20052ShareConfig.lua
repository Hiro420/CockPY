-- 父任务id
main_id = 20052

-- 子任务id
sub_ids = {
	2005201,
	2005202,
	2005203,
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	["2005201"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc22010120052",
				script = "Actor/Npc/TempNPC",
				pos = "Q20052Test",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2005202"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc22010120052",
				script = "Actor/Npc/TempNPC",
				pos = "Q20052Test",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2005203"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc22010120052",
				script = "Actor/Npc/TempNPC",
				pos = "Q20052Test",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	}
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	["2005201"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc22010120052",
				script = "Actor/Npc/TempNPC",
				pos = "Q20052Test",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2005202"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc22010120052",
				script = "Actor/Npc/TempNPC",
				pos = "Q20052Test",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	},
	["2005203"] = {
		npcs = {
			{
				id = 220101,
				alias = "Npc22010120052",
				script = "Actor/Npc/TempNPC",
				pos = "Q20052Test",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			}
		}
	}
}
