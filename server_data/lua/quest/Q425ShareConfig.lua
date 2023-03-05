-- 任务配置

-- 父任务id

main_id = 425

sub_ids =
{
    42501,
    42502,
    42503,
    42504,
}

rewind_data = {}

rewind_data["42502"] = 
{
    npcs = {
        {
            id = 1160,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "QuestNpc",
            data_index = 0,
            scene_id  = 1015,
        },

    }
}

rewind_data["42503"] = 
{
    npcs = {
        {
            id = 1160,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "QuestNpc",
            data_index = 0,
            scene_id  = 1015,
        },

    }
}

quest_data = {}

quest_data["42502"] = 
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
