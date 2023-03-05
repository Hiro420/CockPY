-- 任务配置

-- 父任务id

main_id = 470

sub_ids =
{
    47001,
    47002,
    47003,
    47004,
}


---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["47003"] = 
{
    npcs = {
        -- {
        --     id = 1479,
        --     alias = "Lynn",
        --     script = "Actor/Quest/Q376/Soldier",
        --     pos = "Q470Lynn1",
        -- }
    }
}

rewind_data["47004"] = 
{
    npcs = {
        -- {
        --     id = 1479,
        --     alias = "Lynn",
        --     script = "Actor/Quest/Q376/Soldier",
        --     pos = "Q470Lynn1",
        -- }
    }
}

---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["47002"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q470ShopLookAt",
            scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}

quest_data["47004"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q470ShopLookAt",
            scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}

