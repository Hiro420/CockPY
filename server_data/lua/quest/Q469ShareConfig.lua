-- 任务配置

-- 父任务id

main_id = 469

sub_ids =
{
    46901,
    46902,
    46903,
    46904,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["46903"] = 
{
    npcs = {
        {
            id = 1486,
            alias = "Paimon469",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q469Paimon1",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["46902"] = 
{
    npcs = {
        {
            id = 1486,
            alias = "Paimon469",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q469Paimon1",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

