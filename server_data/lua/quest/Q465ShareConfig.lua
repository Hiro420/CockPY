-- 任务配置

-- 父任务id

main_id = 465

sub_ids =
{
    46501,
    46502,
    46503,
    46504,
    46505,
    46506,
    46507,
    46508,
    46509,
    46510,
    46511,
    46512,
    46513,
    46514,
    46515,
    46516,
    46517,
    46518,
    46519,
    46520,
    46521,
    46522,
    46523,
    46524,
    46525,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}
rewind_data["46503"] = 
{
    npcs = {
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q465Hoffman2",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

rewind_data["46504"] = 
{

}

rewind_data["46505"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q465Diluc5",
            scene_id  = 1018,
            room_id = 1,
            data_index = 1,
        }
    }
}

rewind_data["46507"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q465Diluc2",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

rewind_data["46508"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q465Diluc4",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

rewind_data["46510"] = 
{
    avatar = {
        offline_dungeon_id = 2003,
        scene_id = 20019,
        pos = "Q465Player1"
    },
    npcs = {
        {
            id = 1219,
            alias = "AbyssWater",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q465Abyss1",
            scene_id  = 20019,
            room_id = 0,
            data_index = 1,
        }
    }
}

rewind_data["46511"] = 
{

}

rewind_data["46524"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q465Diluc2",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

rewind_data["46513"] = 
{
    npcs = {
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q465Hoffman2",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["46503"] = 
{
    npcs = {
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q465Hoffman2",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 2,
        },
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q465Diluc5",
            scene_id  = 1018,
            room_id = 1,
            data_index = 3,
        }
    }
}

quest_data["46504"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q465Diluc5",
            scene_id  = 1018,
            room_id = 1,
            data_index = 1,
        }
    }
}

quest_data["46505"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q465Diluc2",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

quest_data["46506"] = 
{
    npcs = {
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            pos = "Q465Kaeya3",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

quest_data["46510"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q465Diluc3",
            scene_id  = 20019,
            room_id = 0,
            data_index = 1,
        },
        {
            id = 1219,
            alias = "AbyssWater",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q465Abyss1",
            scene_id  = 20019,
            room_id = 0,
            data_index = 2,
        },
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q465Paimon3",
            scene_id  = 20019,
            room_id = 0,
            data_index = 3,
        },
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 4,
        },
        {
            id = 1219,
            alias = "AbyssWater",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 5,
        }
    },
}

quest_data["46518"] = 
{
    npcs = {
        {
            id = 1219,
            alias = "AbyssWater",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q465Abyss2",
            scene_id  = 20019,
            room_id = 0,
            data_index = 1,
        }
    }
}

quest_data["46514"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
        {
            id = 1219,
            alias = "AbyssWater",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 2,
        }
    }
}

quest_data["46511"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q465Diluc2",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

quest_data["46513"] = 
{
    npcs = {
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q465Hoffman2",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            pos = "Q465Kaeya3",
            scene_id  = 3,
            room_id = 0,
            data_index = 2,
        }
    }
}

quest_data["46524"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}