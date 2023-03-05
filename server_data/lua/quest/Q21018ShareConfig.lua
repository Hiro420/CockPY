-- 父任务id
main_id = 21018

-- 子任务id
sub_ids = {
	2101801,
	2101802,
	2101803,
	2101804,
	2101805,
	2101806,
	2101807,
	2101808,
	2101809,
	2101810,
	2101811,
	2101812
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	["2101802"] = {
	},
	["2101803"] = {
		npcs = {
			{
				id = 230901,
				alias = "Npc230901",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCA_Hide",
				scene_id = 3
			},
			{
				id = 230401,
				alias = "Npc230401",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCB_Hide",
				scene_id = 3
			},
			{
				id = 230301,
				alias = "Npc230301",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCC_Hide",
				scene_id = 3
			},
			{
				id = 230801,
				alias = "Npc230801",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCD_Hide",
				scene_id = 3
			}
		}
	},
	["2101804"] = {
	},
	["2101805"] = {
		npcs = {
			{
				id = 230901,
				alias = "Npc230901",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCA_Return",
				scene_id = 3
			}
		}
	},
	["2101806"] = {
	},
	["2101807"] = {
		npcs = {
			{
				id = 230401,
				alias = "Npc230401",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCB_Return",
				scene_id = 3
			}
		}
	},
	["2101808"] = {
	},
	["2101809"] = {
		npcs = {
			{
				id = 230301,
				alias = "Npc230301",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCC_Return",
				scene_id = 3
			}
		}
	},
	["2101810"] = {
	},
	["2101811"] = {
		npcs = {
			{
				id = 230801,
				alias = "Npc230801",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCD_Return",
				scene_id = 3
			}
		}
	},
	["2101812"] = {
		npcs = {
			{
				id = 230901,
				alias = "Npc230901",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCA_Return",
				scene_id = 3
			},
			{
				id = 230401,
				alias = "Npc230401",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCB_Return",
				scene_id = 3
			},
			{
				id = 230301,
				alias = "Npc230301",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCC_Return",
				scene_id = 3
			},
			{
				id = 230801,
				alias = "Npc230801",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCD_Return",
				scene_id = 3
			}
		}
	}
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	["2101802"] = {
	},
	["2101803"] = {
		npcs = {
			{
				id = 230901,
				alias = "Npc230901",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCA_Hide",
				scene_id = 3
			},
			{
				id = 230401,
				alias = "Npc230401",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCB_Hide",
				scene_id = 3
			},
			{
				id = 230301,
				alias = "Npc230301",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCC_Hide",
				scene_id = 3
			},
			{
				id = 230801,
				alias = "Npc230801",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCD_Hide",
				scene_id = 3
			}
		}
	},
	["2101804"] = {
	},
	["2101805"] = {
		npcs = {
			{
				id = 230901,
				alias = "Npc230901",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCA_Return",
				scene_id = 3
			}
		}
	},
	["2101806"] = {
	},
	["2101807"] = {
		npcs = {
			{
				id = 230401,
				alias = "Npc230401",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCB_Return",
				scene_id = 3
			}
		}
	},
	["2101808"] = {
	},
	["2101809"] = {
		npcs = {
			{
				id = 230301,
				alias = "Npc230301",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCC_Return",
				scene_id = 3
			}
		}
	},
	["2101810"] = {
	},
	["2101811"] = {
		npcs = {
			{
				id = 230801,
				alias = "Npc230801",
				script = "Actor/Npc/TempNPC",
				pos = "Q21018NPCD_Return",
				scene_id = 3
			}
		}
	}
}
