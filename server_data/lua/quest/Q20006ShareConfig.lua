-- 任务配置

-- 父任务id

main_id = 20006

sub_ids =
{
    2000601,
    2000602,
    2000603,
    2000604,
    2000605,
    2000606,
    2000607,
    2000608,
    2000609,
    2000610,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

rewind_data["2000604"] =
{
  npcs = {
    {
        id = 159401,
        alias = "Npc159401",
        script = "Actor/Npc/TempNPC",
        pos = "EventNpc102",
        scene_id  = 3,
        room_id = 0,
        data_index = 1,
    }
  }
}


quest_data = {}

quest_data["2000602"] = 
{
    npcs = {
        {
            id = 159401,
            alias = "Npc159401",
            script = "Actor/Npc/TempNPC",
            pos = "EventNpc102",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

quest_data["2000604"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "EventNpc102",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

