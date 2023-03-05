-- 任务配置

-- 父任务id

main_id = 999

sub_ids =
{
    99901,
    99902,
}

rewind_data = {}

rewind_data["99901"] = 
{
    avatar = {
        scene_id = 3,
        pos = "Q351FirstQuest"
    },
    npcs = {
        {
            id = 1120,
            alias = "QQ",
            script = "Actor/Npc/TempNpcActor",
            pos = "Q351FirstQuest",
            data_index = 0,
        }
    }
}

rewind_data["99902"] = 
{
    avatar = {
        pos = "Q351FirstClimb"
    },
    npcs = {
        {
            id = 1120,
            alias = "QQ",
            script = "Actor/Npc/TempNpcActor",
            pos = "Q351FirstClimb"
        }
    }
}

quest_data = {}

quest_data["99901"] = 
{
    trial_actors = {

    },
    actors = {
        
    },
    items = {
        -- {
        --     id = 100004,
        --     pos = "Q351FirstQuest",
        --     alias = "Ball",
        -- },
    },
    monsters = {
        {
            id = 20010801,
            pos = "Q351FirstQuest",
        },
        {
            id = 20010801,
            pos = "Q351FirstQuest",
        }
    },
    gadgets = {
        {
            id = 70300018,
            pos = "Q351FirstQuest",
            alias = "Target",
        }
    }
}
