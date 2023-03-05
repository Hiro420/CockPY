-- 任务配置

-- 父任务id

main_id = 372

sub_ids =
{
    37201,
    37202,
    37203,
}

rewind_data = {}

rewind_data["37202"] = 
{
    npcs = {
        -- {
        --     id = 1005,
        --     alias = "Paimon",
        --     script = "Actor/Quest/Q352/Paimon",
        --     pos = "Q372Paimon",
        --     data_index = 0,
        -- },

        {
            id = 1160,
            alias = "WendyNew",
            script = "Actor/Quest/Q376/WendyNew",
            pos = "Q372WendyShow",
            data_index = 0,
        },

    }
}

rewind_data["37203"] = 
{
    npcs = {
        -- {
        --     id = 1005,
        --     alias = "Paimon",
        --     script = "Actor/Quest/Q352/Paimon",
        --     pos = "Q372Paimon",
        --     data_index = 0,
        -- },

        {
            id = 1160,
            alias = "WendyNew",
            script = "Actor/Quest/Q376/WendyNew",
            pos = "Q372WendyShow",
            data_index = 0,
        },

    }
}

-- rewind_data["37204"] = 
-- {
-- }

quest_data = {}

quest_data["37201"] = 
{
    npcs = {
        {
            id = 1160,
            alias = "WendyNew",
            script = "Actor/Quest/Q376/WendyNew",
            pos = "Q372WendyShow",
            data_index = 0,
        },
        {
            id = 10038,
            alias = "NPC10038",
            script = "Actor/Npc/TempNPC",
            pos = "Q372Audience01Vile",
            data_index = 0,
        },
        {
            id = 10039,
            alias = "NPC10039",
            script = "Actor/Npc/TempNPC",
            pos = "Q372Audience02Alfry",
            data_index = 0,
        },
        {
            id = 10040,
            alias = "NPC10040",
            script = "Actor/Npc/TempNPC",
            pos = "Q372Audience03Huf",
            data_index = 0,
        },
        {
            id = 10041,
            alias = "NPC10041",
            script = "Actor/Npc/TempNPC",
            pos = "Q372Audience04Pat",
            data_index = 0,
        },
        {
            id = 10042,
            alias = "NPC10042",
            script = "Actor/Npc/TempNPC",
            pos = "Q372Audience05Sol",
            data_index = 0,
        },

    }
}

quest_data["37203"] = 
{
    gadgets = {
        {
            id = 70300042,
            pos = "Q37201Tear",
            alias = "Tears", 
            scene_id = 3, 
            room_id = 0,  
        },
    },
}