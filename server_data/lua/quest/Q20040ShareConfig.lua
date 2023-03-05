-- 任务配置

-- 父任务id

main_id = 20040

sub_ids =
{
    2004001,
    2004002,
    2004003,
    2004004,
    2004005,
    2004006,
    2004007,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

rewind_data["2004001"] =
{
  npcs = {
      {
          id = 158101,
          alias = "Npc158101",
          script = "Actor/Npc/TempNPC",
          pos = "Event_20600",
          scene_id  = 3,
      },
      {
        id = 1005,
        alias = "Paimon",
        script = "Actor/Quest/Q352/Paimon",
        pos = "Event_20600_07",
        scene_id  = 3,
    }
  }
}

rewind_data["2004002"] =
{

}

rewind_data["2004003"] =
{
  npcs = {
    {
        id = 158101,
        alias = "Npc158101",
        script = "Actor/Npc/TempNPC",
        pos = "Event_20600",
        scene_id  = 3,
    }

}
}

rewind_data["2004004"] =
{
  
}

rewind_data["2004005"] =
{
  

}

rewind_data["2004006"] =
{
  

}


rewind_data["2004007"] =
{
  
  npcs = {
    {
        id = 158101,
        alias = "Npc158101",
        script = "Actor/Npc/TempNPC",
        pos = "Event_20600_07",
        scene_id  = 3,
    }
 
}

}
quest_data = {}
quest_data["2004001"] = 
{
	npcs = 
	{
		{
			alias = "Npc158101",
			script = "Actor/Npc/TempNPC",
			id = 158101,
			pos = "Event_20600",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
    },
    {
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Event_20600",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
    }
    
    }
}
quest_data["2004003"] = 
{
	npcs = 
	{
		{
			alias = "Npc158101",
			script = "Actor/Npc/TempNPC",
			id = 158101,
			pos = "Event_20600",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}
quest_data["2004007"] = 
{
	npcs = 
	{
		{
			alias = "Npc158101",
			script = "Actor/Npc/TempNPC",
			id = 158101,
			pos = "Event_20600_07",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}