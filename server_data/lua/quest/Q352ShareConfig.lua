-- 任务配置

-- 父任务id

main_id = 352

sub_ids =
{
    35200,
    35201,
    35202,
    35203,
    35204,
    35205,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["35200"] = 
{
    npcs = {
--[[         {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q352PaimontoNPC"
        } ]]
    }
}

rewind_data["35201"] = 
{
--[[     avatar = {
        pos = "Q352PlayerRewind1"
    }, ]]
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q352PaimontoNPC",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}

rewind_data["35202"] = 
{
    -- avatar = {
    --     pos = "Q352View"
    -- },
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q352PaimonName",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}

rewind_data["35204"] = 
{
    -- avatar = {
    --     pos = "Q352View"
    -- },
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q352Queen",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}
---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["35200"] = 
{   npcs = {
        {
        id = 1005,
        alias = "Paimon",
        script = "Actor/Quest/Q352/Paimon",
        pos = "Q352PaimontoNPC",
        scene_id  = 3,
        room_id = 0,
        data_index = 0,
        }
    }
}
