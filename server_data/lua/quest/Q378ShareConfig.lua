-- 任务配置

-- 父任务id

main_id = 378

sub_ids =
{
    37801,
    37802,
    37803,
    37804,
    37805,
}

rewind_data = {}

rewind_data["37801"] = 
{
}

rewind_data["37802"] = 
{
}

rewind_data["37803"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q378Qin1",
            data_index = 0,
        },
    }
}

rewind_data["37805"] = 
{
    npcs = {
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q378Babara",
            data_index = 0,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q378Qin2",
            data_index = 0,
        },

    }
}


quest_data = {}

quest_data["37802"] = 
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

quest_data["37803"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q378Qin1",
            data_index = 0,
        },
    }
}

quest_data["37804"] = 
{
    npcs = {
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q378Babara",
            data_index = 0,
        },
    }
}
