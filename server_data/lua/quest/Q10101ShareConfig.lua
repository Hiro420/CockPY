-- 任务配置

-- 父任务id

main_id = 10101

sub_ids =
{
    1010101,
    1010102,
    1010103,
    1010104,
    1010105,
    1010106,
    1010108,
    1010109,
	1010111,
	1010114,
	1010117,
	1010118,
	1010119,
}

rewind_data = {}

rewind_data["1010107"] = 
{
	gadgets =
	{
		{
			id = 70710062,
			pos = "Q10101DungeonOpenEffect",
			alias = "Q10101DungeonOpenEffect", 
			scene_id = 3,
			room_id = 0,
			data_index = 5,
		}
	}
}

quest_data = {}

quest_data["1010102"] = 
{
	gadgets =
	{
		{
			id = 70700006,
			alias = "Q10101Compass", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	}
}

quest_data["1010103"] = 
{
	gadgets =
	{
		{
			id = 70700006,
			alias = "Q10101Compass", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	}
}

quest_data["1010104"] = 
{
	gadgets =
	{
		{
			id = 70700006,
			alias = "Q10101Compass", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	}
}

quest_data["1010105"] = 
{
	gadgets =
	{
		{
			id = 70700006,
			alias = "Q10101Compass", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		},
		{
			id = 70700013,
			pos = "Q10101LisaThunder1",
			alias = "Q10101DungeonSealEffect", 
			scene_id = 3,
			room_id = 0,
			data_index = 2,
		}
	}
}

quest_data["1010106"] = 
{
	gadgets =
	{
		{
			id = 70700006,
			alias = "Q10101Compass", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	},
	npcs = 
	{
		{
			alias = "Lisa",
			script = "Actor/Quest/Q411/Lisa",
			id = 1007,
			pos = "Q10101Lisa1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["1010108"] = 
{
    npcs = 
	{
		{
			alias = "Lisa",
			script = "Actor/Quest/Q411/Lisa",
			id = 1007,
			pos = "Q1010108Lisa",
			scene_id = 20010,
			room_id = 0,
			data_index = 0,
        },
        {
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q1010108Paimon",
			scene_id = 20010,
			room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["1010109"] = 
{
    npcs = 
	{
		{
			alias = "Lisa",
			script = "Actor/Quest/Q411/Lisa",
			id = 1007,
			pos = "Q10100Lisa",
			scene_id = 1004,
			room_id = 100401,
			data_index = 0,
        }
    }
}

quest_data["1010110"] = 
{
	gadgets =
	{
		{
			id = 70700015,
			pos = "Q10101Book",
			alias = "Q10101Book", 
			scene_id = 1004,
			room_id = 100401,
			data_index = 1,
		}
	}
}

quest_data["1010112"] = 
{
    npcs = 
	{
		{
			alias = "Lisa",
			script = "Actor/Quest/Q411/Lisa",
			id = 1007,
			pos = "Q1010112Lisa",
			scene_id = 20010,
			room_id = 0,
			data_index = 0,
        },
        {
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q1010112Paimon",
			scene_id = 20010,
			room_id = 0,
			data_index = 0,
        },
		{
			alias = "AbyssWater",
			script = "Actor/Quest/Q376/Soldier",
			id = 1178,
			pos = "Q1010112Abyss",
			scene_id = 20010,
			room_id = 0,
			data_index = 0,
        },
	},
	gadgets =
	{
		{
			id = 70700011,
			pos = "Q1010112Lisa",
			alias = "Q10101SkillEffect", 
			scene_id = 20010,
			room_id = 0,
			data_index = 1,
		},
	}
}

quest_data["1010114"] = 
{
	gadgets =
	{
		{
			id = 70700010,
			pos = "Q10101LisaThunder1",
			alias = "Q10101HitEffect", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		},
		{
			id = 70700010,
			pos = "Q10101LisaThunder2",
			alias = "Q10101HitEffect", 
			scene_id = 3,
			room_id = 0,
			data_index = 2,
		},
		{
			id = 70700010,
			pos = "Q10101LisaThunder3",
			alias = "Q10101HitEffect", 
			scene_id = 3,
			room_id = 0,
			data_index = 3,
		},
		{
			id = 70700014,
			pos = "Q10101LisaThunder1",
			alias = "Q10101DungeonSealBreak", 
			scene_id = 3,
			room_id = 0,
			data_index = 4,
		},
		{
			id = 70710062,
			pos = "Q10101DungeonOpenEffect",
			alias = "Q10101DungeonOpenEffect", 
			scene_id = 3,
			room_id = 0,
			data_index = 5,
		}
	}
}

quest_data["1010117"] = 
{
	gadgets =
	{
		{
			id = 70700005,
			pos = "RoutBookClue1",
			alias = "Q10101Bookclue", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	}
}

quest_data["1010118"] = 
{
	gadgets =
	{
		{
			id = 70700005,
			pos = "RoutBookClue3",
			alias = "Q10101Bookclue", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	}
}

quest_data["1010119"] = 
{
	npcs = 
	{
		{
			alias = "Lisa",
			script = "Actor/Quest/Q411/Lisa",
			id = 1007,
			pos = "RoutBookClue4",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    },
	gadgets =
	{
		{
			id = 70700005,
			pos = "RoutBookClue4",
			alias = "Q10101Bookclue", 
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		}
	}
}