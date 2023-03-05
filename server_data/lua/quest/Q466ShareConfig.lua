-- 任务配置

-- 父任务id

main_id = 466

sub_ids =
{
    46601,
    46602,
    46603,
    46604,
    46605,
    46606,
    46607,
    46608,
    46609,
    46610,
    46611,
    46612,
    46613,
    46614,
    46615,
    46616,
    46617,
    46618,
    46619,
    46620,
    46621,
    46622,
    46623,
    46624,
    46625,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["46602"] = 
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

rewind_data["46621"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc1",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

rewind_data["46622"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc1",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

rewind_data["46604"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc1",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
    gadgets = {
        {
            id = 70300052,
            pos = "Q466Lure1",
            alias = "Lure",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

rewind_data["46605"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc1",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
    gadgets = {
        {
            id = 70300053,
            pos = "Q466Lure1",
            alias = "Bait",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

rewind_data["46607"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc1",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

rewind_data["46608"] = 
{

}

rewind_data["46619"] = 
{

}

rewind_data["46610"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc2",
            scene_id  = 1009,
            room_id = 1,
            data_index = 1,
        },
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q466Hoffman1",
            scene_id  = 1009,
            room_id = 1,
            data_index = 2,
        }
    },
}

rewind_data["46613"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc2",
            scene_id  = 1009,
            room_id = 1,
            data_index = 1,
        },
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q466Hoffman1",
            scene_id  = 1009,
            room_id = 1,
            data_index = 2,
        },
        -- {
        --     id = 1217,
        --     alias = "Guard",
        --     script = "Actor/Quest/Q376/Soldier",
        --     pos = "Q466Guard1",
        --     scene_id  = 1009,
        --     room_id = 1,
        --     data_index = 3,
        -- },
    },
}

rewind_data["46614"] = 
{

}

rewind_data["46616"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466FrontDoor",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

rewind_data["46618"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc2",
            scene_id  = 1009,
            room_id = 1,
            data_index = 1,
        }
    },
}
---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["46601"] = 
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

quest_data["46621"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc1",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
        {
            id = 10022,
            alias = "KangNa",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q466Conor1",
            scene_id  = 3,
            room_id = 0,
            data_index = 2,
        }
    },
}

quest_data["46604"] = 
{
    gadgets = {
        {
            id = 70300053,
            pos = "Q466Lure1",
            alias = "Bait",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

quest_data["46609"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc2",
            scene_id  = 1009,
            room_id = 1,
            data_index = 1,
        },
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q466Hoffman1",
            scene_id  = 1009,
            room_id = 1,
            data_index = 2,
        }
    },
}


quest_data["46611"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc2",
            scene_id  = 1009,
            room_id = 1,
            data_index = 1,
        },
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q466Hoffman1",
            scene_id  = 1009,
            room_id = 1,
            data_index = 2,
        },
    },
    monsters = {
        {
            id = 20011401,
            alias = "Monster1",
            pos = "Q466Slime",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
        {
            id = 20011201,
            alias = "Monster2",
            pos = "Q466Slime2",
            scene_id  = 3,
            room_id = 0,
            data_index = 2,
        },
        {
            id = 20011001,
            alias = "Monster3",
            pos = "Q466Slime3",
            scene_id  = 3,
            room_id = 0,
            data_index = 3,
        },
        {
            id = 20010901,
            alias = "Monster4",
            pos = "Q466Slime4",
            scene_id  = 3,
            room_id = 0,
            data_index = 4,
        },
        {
            id = 20011001,
            alias = "Monster3",
            pos = "Q466Slime5",
            scene_id  = 3,
            room_id = 0,
            data_index = 5,
        },
        {
            id = 20010901,
            alias = "Monster4",
            pos = "Q466Slime6",
            scene_id  = 3,
            room_id = 0,
            data_index = 6,
        },
    },
    gadgets = {
        {
            id = 70300053,
            pos = "Q466Lure2",
            alias = "Bait",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

quest_data["46616"] = 
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
    },
}

quest_data["46617"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc2",
            scene_id  = 1009,
            room_id = 1,
            data_index = 1,
        },
    },
}


quest_data["46618"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc2",
            scene_id  = 1009,
            room_id = 1,
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
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 3,
        },
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q466Guard2",
            scene_id  = 1009,
            room_id = 1,
            data_index = 4,
        },
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            pos = "Q466Kaeya1",
            scene_id  = 1009,
            room_id = 1,
            data_index = 5,
        },
        {
            id = 152301,
            alias = "Npc152301",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q466Jose1",
            scene_id  = 1009,
            room_id = 1,
            data_index = 6,
        },
    },
}

quest_data["46602"] = 
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

quest_data["46603"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466Diluc1",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
    gadgets = {
        {
            id = 70300052,
            pos = "Q466Lure1",
            alias = "Lure",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

-- Temp
quest_data["46605"] = 
{
    monsters = {
        {
            id = 20010801,
            pos = "Q466Slime7",
            alias = "Slime7",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
        {
            id = 20010801,
            pos = "Q466Slime8",
            alias = "Slime8",
            scene_id  = 3,
            room_id = 0,
            data_index = 2,
        },
        {
            id = 20010801,
            pos = "Q466Slime9",
            alias = "Slime9",
            scene_id  = 3,
            room_id = 0,
            data_index = 3,
        },
    },
}

quest_data["46610"] = 
{
    gadgets = {
        {
            id = 70300052,
            pos = "Q466Lure2",
            alias = "Lure",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

quest_data["46613"] = 
{
    monsters = {
        {
            id = 22010201,
            pos = "Q466Monster4",
        },
    },
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
            id = 1217,
            alias = "Guard",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 2,
        },
        {
            id = 1217,
            alias = "Guard",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q466Guard2",
            scene_id  = 1009,
            room_id = 1,
            data_index = 3,
        },
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 4,
        },
        {
            id = 1217,
            alias = "Guard",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 5,
        },
    },
}

quest_data["46624"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q466FrontDoor",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

quest_data["46622"] = 
{
    npcs = {
        {
            id = 10022,
            alias = "KangNa",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q466Conor3",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
        {
            id = 10022,
            alias = "KangNa",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
            data_index = 2,
        },
    },
    gadgets = {
        {
            id = 70300052,
            pos = "Q466Lure1",
            alias = "Lure",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}