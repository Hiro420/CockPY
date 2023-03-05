-- 任务配置

-- 父任务id

main_id = 370

sub_ids =
{
    37001,
    37002,
    37004,
    37005,
    37003,
}

rewind_data = {}

rewind_data["37002"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q37001Qin",
            scene_id = 3,
            data_index = 0,
        },

        {
            id = 1487,
            alias = "Fatuus",
            script = "Actor/Quest/Q370/Fatuus",
            pos = "Q37001Fatuus",
            data_index = 0,
            scene_id  = 3,
        },
    }
}


rewind_data["37004"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q358Qin",
            scene_id = 1004,
            data_index = 0,
            room_id = 100402,
        },


        {
            id = 1007,
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            pos = "Q358Lisa",
            scene_id  = 1004,
            data_index = 0,
            room_id = 100402,
        },
    }
}


quest_data = {}

quest_data["37001"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q37001Qin",
            scene_id = 3,
            data_index = 0,
        },

        {
            id = 1487,
            alias = "Fatuus",
            script = "Actor/Quest/Q370/Fatuus",
            pos = "Q37001Fatuus",
            data_index = 0,
            scene_id  = 3,
        },
    }
}

quest_data["37005"] = 
{
    gadgets = {
        {
            id = 70300059,
            pos = "Q37004Tears",
            alias = "Tears", 
            scene_id = 1004, 
            room_id = 100402,  

		},

    },
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q358Qin",
            scene_id = 1004,
            data_index = 0,
            room_id = 100402,
        },
        {
            id = 1007,
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            pos = "Q358Lisa",
            scene_id  = 1004,
            data_index = 0,
            room_id = 100402,
        },
    }
}