-- 任务配置

-- 父任务id

main_id = 354

sub_ids =
{
    35401,
    35402,
    35403,
    35404,
    35405,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["35402"] = 
{
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q354Ambor2",
            data_index = 0,
            scene_id  = 3,
        }
    }
}

rewind_data["35403"] = 
{
--[[     npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q354Ambor2",
            data_index = 0,
            scene_id  = 3,
        }
    } ]]
}

rewind_data["35404"] = 
{

}
---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["35401"] = 
{
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q354AmborBorn",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["35402"] = 
{
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["35403"] = 
{
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q356Ambor2",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["35404"] = 
{
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}

