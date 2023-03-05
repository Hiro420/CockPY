-- 任务配置

-- 父任务id

main_id = 20011

sub_ids =
{
    2001101,
    2001102,
    2001103,
    2001104,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

rewind_data["2001104"] =
{
  npcs = {
      {
          id = 140801,
          alias = "Npc140801",
          script = "Actor/Npc/TempNPC",
          pos = "Event_20501",
          scene_id  = 3,
      }
  }
}

rewind_data["2001101"] =
{
  npcs = {
    {
        id = 140801,
        alias = "Npc140801",
        script = "Actor/Npc/TempNPC",
        pos = "Event_20501",
        scene_id  = 3,
    }
}
  }



rewind_data["2001102"] =
{
  npcs = {
    {
        id = 140801,
        alias = "Npc140801",
        script = "Actor/Npc/TempNPC",
        pos = "Event_20501",
        scene_id  = 3,
    }
}
}

rewind_data["2001103"] =
{
  npcs = {
    {
        id = 140801,
        alias = "Npc140801",
        script = "Actor/Npc/TempNPC",
        pos = "Event_20501",
        scene_id  = 3,
    }
}
}

quest_data = {}
quest_data["2001104"] = 
{
	npcs = 
	{
		{
			alias = "Npc140801",
			script = "Actor/Npc/TempNPC",
			id = 140801,
			pos = "Event_20501",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}
quest_data["2001101"] = 
{
	npcs = 
	{
		{
			alias = "Npc140801",
			script = "Actor/Npc/TempNPC",
			id = 140801,
			pos = "Event_20501",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}
quest_data["2001102"] = 
{
	npcs = 
	{
		{
			alias = "Npc140801",
			script = "Actor/Npc/TempNPC",
			id = 140801,
			pos = "Event_20501",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}
quest_data["2001103"] = 
{
	npcs = 
	{
		{
			alias = "Npc140801",
			script = "Actor/Npc/TempNPC",
			id = 140801,
			pos = "Event_20501",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}



