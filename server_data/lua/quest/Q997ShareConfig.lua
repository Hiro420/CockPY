-- 任务配置

-- 父任务id

main_id = 997

sub_ids =
{
    99701,
}

rewind_data = {}

rewind_data["99701"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q370Qin",
            scene_id = 1004,
            room_id = 1,
            data_index = 0,
        },

        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q370Ambor",
            data_index = 0,
            scene_id  = 1004,
            room_id = 1,
        },

        {
            id = 1007,
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            pos = "Q370Lisa",
            scene_id  = 1004,
            data_index = 0,
            room_id = 1,
        },

        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            pos = "Q370Gaia",
            scene_id  = 1004,
            data_index = 0,
            room_id = 1,
        },
    }
}



quest_data = {}

quest_data["99701"] = 
{
    trial_actors = {

    },
    actors = {
        
    },
    items = {
        -- {
        --     id = 100004,
        --     pos = "Q404Pos2",
        --     alias = "Ball",
        -- },
    },
    monsters = {
        -- {
        --     id = 20010801,
        --     pos = "Q404Pos2",
        -- },
        -- {
        --     id = 20010801,
        --     pos = "Q404Pos2",
        -- }
    },
    gadgets = {
        -- {
        --     id = 70300004,
        --     pos = "Q404Pos2",
        --     alias = "GoalMarker404",
        -- }
    }
}
