-- 任务配置

-- 父任务id

main_id = 373

sub_ids =
{
    37301,
    37302,
    37303,
    37304,
}

rewind_data = {}

rewind_data["37302"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37301Venti",
            data_index = 0,
            scene_id  = 3,
        },
    }
}



quest_data = {}

quest_data["37301"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37301Venti",
            data_index = 0,
            scene_id  = 3,
        },
    }
}

quest_data["37304"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37301Venti",
            data_index = 1,
            scene_id  = 3,
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q372Venti",
            data_index = 2,
            scene_id  = 3,
        },
    }
}

