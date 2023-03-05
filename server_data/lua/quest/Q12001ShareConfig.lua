-- 任务配置

-- 父任务id

main_id = 12001

sub_ids =
{
    1200101,
    1200103,
    1200104,
    1200105,
    1200107,
    1200108,
    1200109,
    1200110,
    1200111,

}

rewind_data = {}
rewind_data["1200101"] = 
{
    npcs = {
        {
        ----行秋
            alias = "Npc10045",
			script = "Actor/Quest/Q301/Gaia301",
			id = 10045,
			pos = "Q1200005XQ",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    }
}
rewind_data["1200102"] = 
{
    npcs = {
        {
        ----行秋
            alias = "Npc10045",
			script = "Actor/Quest/Q301/Gaia301",
			id = 10045,
			pos = "Q1200005XQ",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    }
}
rewind_data["1200103"] = 
{
    npcs = {
        {
        ----行秋
            alias = "Npc10045",
			script = "Actor/Quest/Q301/Gaia301",
			id = 10045,
			pos = "Q1200005XQ",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    }
}
rewind_data["1200104"] = 
{
    npcs = {
        {
            ----行秋
                alias = "Npc10045",
                script = "Actor/Quest/Q301/Gaia301",
                id = 10045,
                pos = "Q1200005XQ",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            }
    }
}
rewind_data["1200105"] = 
{
    npcs = {
        {
            ----行秋
                alias = "Npc10045",
                script = "Actor/Quest/Q301/Gaia301",
                id = 10045,
                pos = "Q1200005XQ",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI1",
                script = "Actor/Npc/LYGSneakAI",
                id = 10101,
                pos = "AI1Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI2",
                script = "Actor/Npc/LYGSneakAI",
                id = 10102,
                pos = "AI2Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI3",
                script = "Actor/Npc/LYGSneakAI",
                id = 10103,
                pos = "AI3Pos2",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI4",
                script = "Actor/Npc/LYGSneakAI",
                id = 10104,
                pos = "AI4Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI5",
                script = "Actor/Npc/LYGSneakAI",
                id = 10105,
                pos = "AI5Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI6",
                script = "Actor/Npc/LYGSneakAI",
                id = 10106,
                pos = "AI6Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI7",
                script = "Actor/Npc/LYGSneakAI",
                id = 10107,
                pos = "AI7Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI8",
                script = "Actor/Npc/LYGSneakAI",
                id = 10108,
                pos = "AI8Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI9",
                script = "Actor/Npc/LYGSneakAI",
                id = 10109,
                pos = "AI9Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI10",
                script = "Actor/Npc/LYGSneakAI",
                id = 10110,
                pos = "AI10Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },


    }
}
rewind_data["1200107"] = 
{
    npcs = {
        {
            ----行秋
                alias = "Npc10045",
                script = "Actor/Quest/Q301/Gaia301",
                id = 10045,
                pos = "Q1200005XQ",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
        },
        {
            alias = "Npc162601",
            script = "Actor/Npc/TempNPC",
            id = 162601,
            pos = "Q1200107Wly",
            scene_id = 3,
            room_ID = 0,
            data_index = 1,
        }
    }
}


quest_data = {}


quest_data["1200101"] = 
{
    npcs = {
        {
            ----行秋
                alias = "Npc10045",
                script = "Actor/Quest/Q301/Gaia301",
                id = 10045,
                pos = "Q1200005XQ",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
        }
    }
}
quest_data["1200102"] = 
{
    npcs = {
        {
            ----派蒙
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                id = 1005,
                pos = "Q1200101Trigger",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
        }
    }
}
quest_data["1200105"] = 
{
    npcs = {
        {
            ----派蒙
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                id = 1005,
                pos = "Q1200104Trigger",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
        },
        {
            ----守卫
                alias = "SneakAI1",
                script = "Actor/Npc/LYGSneakAI",
                id = 10101,
                pos = "AI1Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI2",
                script = "Actor/Npc/LYGSneakAI",
                id = 10102,
                pos = "AI2Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI3",
                script = "Actor/Npc/LYGSneakAI",
                id = 10103,
                pos = "AI3Pos2",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI4",
                script = "Actor/Npc/LYGSneakAI",
                id = 10104,
                pos = "AI4Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI5",
                script = "Actor/Npc/LYGSneakAI",
                id = 10105,
                pos = "AI5Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI6",
                script = "Actor/Npc/LYGSneakAI",
                id = 10106,
                pos = "AI6Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI7",
                script = "Actor/Npc/LYGSneakAI",
                id = 10107,
                pos = "AI7Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI8",
                script = "Actor/Npc/LYGSneakAI",
                id = 10108,
                pos = "AI8Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI9",
                script = "Actor/Npc/LYGSneakAI",
                id = 10109,
                pos = "AI9Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
        {
            ----守卫
                alias = "SneakAI10",
                script = "Actor/Npc/LYGSneakAI",
                id = 10110,
                pos = "AI10Pos1",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            }
    }
}
quest_data["1200109"] = 
{
    npcs = {
        {
            ---王六爷
            alias = "Npc162601",
            script = "Actor/Npc/TempNPC",
            id = 162601,
            pos = "Q1200107Wly",
            scene_id = 3,
            room_ID = 0,
            data_index = 0,
        }
    },
    gadgets =
    {
        {
            id = 70900201,
            pos = "Q1200107Wly",
            alias = "Goal1", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }

}
quest_data["1200108"] = 
{
    npcs = {
        {
            ----行秋
                alias = "Npc10045",
                script = "Actor/Quest/Q301/Gaia301",
                id = 10045,
                pos = "Q1200108XQ",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
        }
    },
    gadgets =
    {
        {
            id = 70710060,
            alias = "XQbook", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }
}