-- 任务配置

-- 父任务id

main_id = 20001

sub_ids =
{
    2000101,
    2000102,
    2000103,
    2000104,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

rewind_data["2000104"] =
{
  npcs = {
      {
          id = 140301,
          alias = "Npc140301",
          script = "Actor/Npc/TempNPC",
          pos = "EventTest01",
          scene_id  = 3,
      }
  }
}

rewind_data["2000101"] =
{
  npcs = {
    {
        id = 140301,
        alias = "Npc140301",
        script = "Actor/Npc/TempNPC",
        pos = "EventTest01",
        scene_id  = 3,
    }
}
  }



rewind_data["2000102"] =
{
  npcs = {
    {
        id = 140301,
        alias = "Npc140301",
        script = "Actor/Npc/TempNPC",
        pos = "EventTest01",
        scene_id  = 3,
    }
}
}

rewind_data["2000103"] =
{
  npcs = {
    {
        id = 140301,
        alias = "Npc140301",
        script = "Actor/Npc/TempNPC",
        pos = "EventTest01",
        scene_id  = 3,
    }
}
}

quest_data = {}

quest_data["2000104"] = 
{
	npcs = 
	{
		{
			alias = "Npc140301",
			script = "Actor/Npc/TempNPC",
			id = 140301,
			pos = "EventTest01",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}
quest_data["2000101"] = 
{
	npcs = 
	{
		{
			alias = "Npc140301",
			script = "Actor/Npc/TempNPC",
			id = 140301,
			pos = "EventTest01",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}
quest_data["2000102"] = 
{
	npcs = 
	{
		{
			alias = "Npc140301",
			script = "Actor/Npc/TempNPC",
			id = 140301,
			pos = "EventTest01",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}
quest_data["2000103"] = 
{
	npcs = 
	{
		{
			alias = "Npc140301",
			script = "Actor/Npc/TempNPC",
			id = 140301,
			pos = "EventTest01",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


