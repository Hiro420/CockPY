-- 任务配置

-- 父任务id

main_id = 1003

sub_ids =
{
	100301,
	100320,
	100302,
	100303,
	100319,
	100304,
	100305,
	100306,
	100307,
	100308,
	100309,	
	100310,
	100321,
	100311,
	100312,
	100313,
	100314,
	100315,
	100316,
	100317,
	100318,
}

PaimonData = 
{
	ID = 1005,
	Alias = "Paimon",
}


XiaoData = 
{
	ID = 10204,
	Alias = "Xiao",
}

VerrGoldetData = 
{
	ID = 220801,
	Alias = "Npc220801",
}

YanxiaoData = 
{
	ID = 220401,
	Alias = "Npc220401",
}

XiaomingData = 
{
	ID = 231101,
	Alias = "Npc231101",
}

Xiaoming02Data = 
{
	ID = 231102,
	Alias = "Npc231102",
}


GongziData = 
{
	ID = 10200,
	Alias = "Gongzi",
}

rewind_data = {}

rewind_data["100315"] = 
{
	npcs = 
	{
		{
			alias = "Npc231101",
			script = "Actor/Npc/TempNPC",
			id = 231101,
			pos = "Q100315xiaomingtalk",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

    }
}

quest_data = {}

quest_data["100301"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

    }
}

quest_data["100302"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

    }
}

quest_data["100303"] = 
{
	npcs = 
	{
		{
			alias = "Npc220801",
			script = "Actor/Npc/TempNPC",
			id = 220801,
			pos = "Q100303VerrGoldet",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

    }
}

quest_data["100304"] = 
{
	npcs = 
	{
		{
			alias = "Npc220801",
			script = "Actor/Npc/TempNPC",
			id = 220801,
			pos = "Q100303VerrGoldet",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

    }
}

quest_data["100305"] = 
{
	npcs = 
	{
		{
			alias = "Npc220801",
			script = "Actor/Npc/TempNPC",
			id = 220801,
			pos = "Q100303VerrGoldet",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

    }
}

quest_data["100306"] = 
{
	npcs = 
	{
		{
			alias = "Npc220801",
			script = "Actor/Npc/TempNPC",
			id = 220801,
			pos = "Q100303VerrGoldet",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc220401",
			script = "Actor/Npc/TempNPC",
			id = 220401,
			pos = "Q100306Yanxiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

    }
}

quest_data["100307"] = 
{
	npcs = 
	{
		{
			alias = "Npc220801",
			script = "Actor/Npc/TempNPC",
			id = 220801,
			pos = "Q100303VerrGoldet",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc220401",
			script = "Actor/Npc/TempNPC",
			id = 220401,
			pos = "Q100306Yanxiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

    }
}

quest_data["100308"] = 
{
	npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q100307Trigger",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc220801",
			script = "Actor/Npc/TempNPC",
			id = 220801,
			pos = "Q100303VerrGoldet",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc220401",
			script = "Actor/Npc/TempNPC",
			id = 220401,
			pos = "Q100306Yanxiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc231101",
			script = "Actor/Npc/TempNPC",
			id = 231101,
			pos = "Q100308Ming",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
    }
}

quest_data["100309"] = 
{
	npcs = 
	{
		{
			alias = "Npc220801",
			script = "Actor/Npc/TempNPC",
			id = 220801,
			pos = "Q100303VerrGoldet",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc220401",
			script = "Actor/Npc/TempNPC",
			id = 220401,
			pos = "Q100306Yanxiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

    }
}

quest_data["100310"] = 
{
	npcs = 
	{
		{
			alias = "Npc220801",
			script = "Actor/Npc/TempNPC",
			id = 220801,
			pos = "Q100303VerrGoldet",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc220401",
			script = "Actor/Npc/TempNPC",
			id = 220401,
			pos = "Q100306Yanxiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

    }
}

quest_data["100321"] = 
{
	gadgets =
	{
		{
			id = 70710056,
			pos = "Q100321Gadget",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Xiangmoyin", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["100311"] = 
{
	npcs = 
	{
		{
			alias = "Npc220801",
			script = "Actor/Npc/TempNPC",
			id = 220801,
			pos = "Q100303VerrGoldet",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100301Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc220401",
			script = "Actor/Npc/TempNPC",
			id = 220401,
			pos = "Q100306Yanxiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

	},
	
	gadgets =
	{
		{
			id = 70710051,
			pos = "Q100311Rock01",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Rock100301", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		},
		{
			id = 70710052,
			pos = "Q100311Rock02",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Rock100302", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		},
		{
			id = 70710053,
			pos = "Q100311Rock03",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Rock100303", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		},
		{
			id = 70710058,
			pos = "Q100311JieMI",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Guide1003", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		},
	}
}

quest_data["100312"] = 
{
	npcs = 
	{
		{
			alias = "Npc231102",
			script = "Actor/Npc/TempNPC",
			id = 231102,
			pos = "Q100312Ming",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

	},
	
	gadgets =
	{
		{
			id = 70710054,
			pos = "Q100312Ming",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "BornEff1003", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["100313"] = 
{
	npcs = 
	{
		{
			alias = "Npc231101",
			script = "Actor/Npc/TempNPC",
			id = 231101,
			pos = "Q100315Ming",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

    }
}

quest_data["100314"] = 
{
	npcs = 
	{
		{
			alias = "Npc231101",
			script = "Actor/Npc/TempNPC",
			id = 231101,
			pos = "Q100315xiaomingtalk",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

    }
}

quest_data["100316"] = 
{
	npcs = 
	{
		{
			alias = "Npc220401",
			script = "Actor/Npc/TempNPC",
			id = 220401,
			pos = "Q100316Yanxiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

    }
}


quest_data["100317"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q100306Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}

quest_data["100318"] = 
{
	npcs = 
	{
		{
			alias = "Gongzi",
			script = "Actor/Npc/TempNPC",
			id = 10200,
			pos = "Q100318Gongzi",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}