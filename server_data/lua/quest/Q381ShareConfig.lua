-- 任务配置

-- 父任务id

main_id = 381

sub_ids =
{
    38101,
    38102,
    38103,
    38104,
    38105,
}

rewind_data = {}

rewind_data["38101"] = 
{
}

rewind_data["38102"] = 
{
    avatar = {
        offline_dungeon_id = 10,
        scene_id = 3,
        pos = "Q381DragonTill"
    },
}

rewind_data["38103"] = 
{
}

rewind_data["38104"] = 
{
}

rewind_data["38105"] = 
{
}

quest_data = {}

quest_data["38101"] = 
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

quest_data["38105"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q381Diluc",
            data_index = 0,
            scene_id  = 1006,
            room_id = 0,
        },

        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q381Qin",
            data_index = 0,
            scene_id  = 1006,
            room_id = 0,

        },
        {
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q381Paimon",
            data_index = 0,
            scene_id  = 1006,
            room_id = 0,

        },
    }
}