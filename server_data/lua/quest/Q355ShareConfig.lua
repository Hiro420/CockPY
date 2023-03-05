-- 任务配置

-- 父任务id

main_id = 355

sub_ids =
{
    35501,
    35502,
    35503,
    35504,
    35505,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["35503"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q355Paimon1",
        }
    },
    items = {
        {
            id = 100135,
            pos = "Q355Stone",
            alias = "Tear",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

rewind_data["35504"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q355Paimon2",
        }
    },
    items = {
        {
            id = 100135,
            pos = "Q355Stone",
            alias = "Tear",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

rewind_data["35505"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q355Paimon2",
        }
    }
}

---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["35502"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q355Paimon1",
        }
    }
}

quest_data["35503"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q355Paimon1",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    },
    items = {
        {
            id = 100135,
            pos = "Q355Stone",
            alias = "Tear",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

quest_data["35505"] = 
{
    items = {
        {
            id = 100135,
            pos = "Q355Stone",
            alias = "Tear",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}
