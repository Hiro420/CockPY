-- 任务配置

-- 父任务id

main_id = 482

sub_ids =
{
    48201,
    48202,
    48203,
    48209,
    48207,
    48204,
    48208,
    48205,
}

rewind_data = {}

rewind_data["48201"] = 
{
}


rewind_data["48202"] = 
{
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q48202Ambor",
            data_index = 0,
        },
    }
}

rewind_data["48204"] = 
{
}

rewind_data["48205"] = 
{
}

quest_data = {}

quest_data["48202"] = 
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
