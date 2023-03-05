-- 任务配置

-- 父任务id

main_id = 20023

sub_ids =
{
    2002301,
    2002302,
    2002303,
    2002304,
    2002305,
    2002306,
    2002307,
    2002308,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

rewind_data["2002301"] =
{   npcs = {
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn3",
            scene_id  = 3,
            room_id = 0,
        }
    }

}

rewind_data["2002302"] =
{
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600Spawn1",
            scene_id  = 1009,
            room_id = 1,
        },
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn3",
            scene_id  = 3,
            room_id = 0,
        }
    },
    quest_var = {
        -1,1,-1,-1,-1
    }
}




rewind_data["2002303"] =
{
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600Spawn1",
            scene_id  = 1009,
            room_id = 1,
        },
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn3",
            scene_id  = 3,
            room_id = 0,
        }
    },
    quest_var = {
        -1,1,-1,-1,-1
    }
}


rewind_data["2002304"] =
{
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600Spawn1",
            scene_id  = 1009,
            room_id = 1,
        },
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn3",
            scene_id  = 3,
            room_id = 0,
        }
    },
    quest_var = {
        -1,1,-1,-1,-1
    }
}


rewind_data["2002305"] =
{
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600Spawn1",
            scene_id  = 1009,
            room_id = 1,
        },
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn3",
            scene_id  = 3,
            room_id = 0,
        }
    },
    quest_var = {
        -1,1,-1,-1,-1
    }
}

rewind_data["2002306"] =
{
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn2",
            scene_id  = 3,
            room_id = 0,
        },
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn3",
            scene_id  = 3,
            room_id = 0,
        },
        {
            id = 140301,
            alias = "Npc140301",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn1",
            scene_id  = 3,
            room_id = 0,
        }
    },
    quest_var = {
        -1,2,-1,-1,-1
    }
}

rewind_data["2002307"] =
{
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn2",
            scene_id  = 3,
            room_id = 0,
        },
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn3",
            scene_id  = 3,
            room_id = 0,
        },
        {
            id = 140301,
            alias = "Npc140301",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn1",
            scene_id  = 3,
            room_id = 0,
        }
    },
    quest_var = {
        -1,2,-1,-1,-1
    }
}

rewind_data["2002308"] =
{
    npcs = {
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn2",
            scene_id  = 3,
            room_id = 0,
        },
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn3",
            scene_id  = 3,
            room_id = 0,
        },
        {
            id = 140301,
            alias = "Npc140301",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn1",
            scene_id  = 3,
            room_id = 0,
        }
    },
    quest_var = {
        -1,2,-1,-1,-1
    }
}

quest_data = {}

quest_data["2002301"] = 
{
    npcs = 
    {
        {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn3",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600Spawn1",
            scene_id  = 1009,
            room_id = 1,
            data_index = 2,
        },
        {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn2",
            scene_id  = 3,
            room_id = 0,
            data_index = 2,
        },
        {
            id = 140301,
            alias = "Npc140301",
            script = "Actor/Npc/TempNPC",
            pos = "Event22600NPCSpawn1",
            scene_id  = 3,
            room_id = 0,
            data_index = 4,
        }
    }
}

quest_data["2002302"] = 
{
    gadgets ={
        {
            id = 70710037,
            pos = "Q20023Winebowl",
            alias = "Q20023WinebowlShell",
            scene_id = 1009,
            room_id = 1,
            is_show_cutscene = false,
            chest_drop_id =- 0
        }
    }
}

quest_data["2002303"] = 
{
    gadgets ={
        {
            id = 70710037,
            pos = "Q20023Winebowl",
            alias = "Q20023WinebowlShell",
            scene_id = 1009,
            room_id = 1,
            is_show_cutscene = false,
            chest_drop_id =- 0
        },
        {
            id = 70710028,
            pos = "Q20023Winebowl",
            alias = "Q20023Winebowl",
            scene_id = 1009,
            room_id = 1,
            is_show_cutscene = false,
            chest_drop_id =- 0
        },
    }
}