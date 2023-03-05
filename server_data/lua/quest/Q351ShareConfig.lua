-- 任务配置

-- 父任务id

main_id = 351

sub_ids =
{
    35100,
    35101,
    35102,
    35103,
    35104,
    35105,
    35106,
    35107,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["35104"] = 
{
    
}

rewind_data["35100"] = 
{
    avatar = {
        pos = "Q351PlayerRewind1"
    },
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q351FirstQuest",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}

rewind_data["35102"] = 
{
    avatar = {
        pos = "Q351PlayerRewind2"
    },
--[[     npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q351FirstClimb"
        }
    } ]]
}

rewind_data["35105"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q351FirstClimb",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}

---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["35104"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q351FirstQuest",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}
