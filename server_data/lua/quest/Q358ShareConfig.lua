-- 任务配置

-- 父任务id

main_id = 358

sub_ids =
{
    35801,
    35802,
}

rewind_data = {}

rewind_data["35802"] = 
{
    npcs = {
        -- {
        --     id = 1005,
        --     alias = "Paimon",
        --     script = "Actor/Quest/Q352/Paimon",
        --     pos = "Q358Paimon1",
        --     data_index = 0,
        --     scene_id  = 1004,
        --     room_id = 100402,
        -- },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q358Qin1",
            data_index = 0,
            scene_id  = 1004,
            room_id = 100402,
        },
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q358Ambor1",
            data_index = 0,
            scene_id  = 1004,
            room_id = 100402,
        },
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            pos = "Q358Gaia1",
            data_index = 0,
            scene_id  = 1004,
            room_id = 100402,
        },
        {
            id = 1007,
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            pos = "Q358Lisa1",
            data_index = 0,
            scene_id  = 1004,
            room_id = 100402,
        },
    }
}

quest_data = {}
quest_data["35800"] = 
{
    npcs = {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q358Paimon1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}

quest_data["35801"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q358Paimon1",
            data_index = 0,
            scene_id  = 1004,
            room_id = 100402,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q358Qin1",
            data_index = 0,
            scene_id  = 1004,
            room_id = 100402,
        },
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q358Ambor1",
            data_index = 0,
            scene_id  = 1004,
            room_id = 100402,
        },
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            pos = "Q358Gaia1",
            data_index = 0,
            scene_id  = 1004,
            room_id = 100402,
        },
        {
            id = 1007,
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            pos = "Q358Lisa1",
            data_index = 0,
            scene_id  = 1004,
            room_id = 100402,
        },
    }
}
