-- 任务配置

-- 父任务id

main_id = 12002

sub_ids =
{
    1200201,
    1200203,
    1200204,
    1200205,
    1200206,
    1200208,
    1200209,
    1200210,
    1200211,
    1200212,
    1200213,
    1200214,
    1200215,
    1200219,
    1200220,

}


rewind_data = {}

rewind_data["1200201"] = 
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
    }
}
rewind_data["1200203"] = 
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
    }
}
rewind_data["1200204"] = 
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
    }
}
rewind_data["1200205"] = 
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
    }
}
rewind_data["1200206"] = 
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
    }
}
rewind_data["1200208"] = 
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
       
    }
}
rewind_data["1200209"] = 
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
        
    }

}
rewind_data["1200210"] = 
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
    }
}
rewind_data["1200211"] = 
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
    }
}


quest_data = {}


quest_data["1200201"] = 
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
    }
}
quest_data["1200209"] = 
{
    npcs = {
        {
        ----小车1

            alias = "Npc1263",
			script = "Actor/Npc/TempNPC",
			id = 1263,
			pos = "Q1200209Stone1",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    },
    gadgets =
    {
        {
            id = 71700053,
            pos = "Q1200209Stone1",
            alias = "WinkGagetData1", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },
        {
            id = 71700047,
            pos = "Q1200209Stone1",
            alias = "CarGagetData1", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },

    }
}
quest_data["1200212"] = 
{
    npcs = {
        {
        ----小车2

            alias = "Npc1264",
			script = "Actor/Npc/TempNPC",
			id = 1264,
			pos = "Q1200209Stone2",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    },
    gadgets =
    {
        {
            id = 71700053,
            pos = "Q1200209Stone2",
            alias = "WinkGagetData2", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },
        {
            id = 71700047,
            pos = "Q1200209Stone2",
            alias = "CarGagetData2", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }
}
quest_data["1200213"] = 
{
    npcs = {
        {
        ----小车3

            alias = "Npc1265",
			script = "Actor/Npc/TempNPC",
			id = 1265,
			pos = "Q1200209Stone3",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    },
    gadgets =
    {
        {
            id = 71700053,
            pos = "Q1200209Stone3",
            alias = "WinkGagetData3", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },
        {
            id = 71700047,
            pos = "Q1200209Stone3",
            alias = "CarGagetData3", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }
}
quest_data["1200214"] = 
{
    gadgets =
    {
        {
            id = 70700006,
            pos = "Q1200209Stone2",
            alias = "Q10101Compass", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }
}
quest_data["1200219"] = 
{
    npcs = {
        {
        ----小车4

            alias = "Npc1266",
			script = "Actor/Npc/TempNPC",
			id = 1266,
			pos = "Q1200209Stone4",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    },
    gadgets =
    {
        {
            id = 71700053,
            pos = "Q1200209Stone4",
            alias = "WinkGagetData4", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },
        {
            id = 71700047,
            pos = "Q1200209Stone4",
            alias = "CarGagetData4", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }
}
quest_data["1200220"] = 
{
    npcs = {
        {
        ----小车5

            alias = "Npc1267",
			script = "Actor/Npc/TempNPC",
			id = 1267,
			pos = "Q1200209Stone5",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    },
    gadgets =
    {
        {
            id = 71700053,
            pos = "Q1200209Stone5",
            alias = "WinkGagetData5", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },
        {
            id = 71700047,
            pos = "Q1200209Stone5",
            alias = "CarGagetData5", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }
}