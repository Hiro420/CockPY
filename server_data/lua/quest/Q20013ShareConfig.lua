-- 任务配置

-- 父任务id

main_id = 20013

sub_ids =
{
    2001301,
    2001302,
    2001303,
    2001304,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

rewind_data["2001304"] =
{
  npcs = {
      {
          id = 141301,
          alias = "Npc141301",
          script = "Actor/Npc/TempNPC",
          pos = "Event_20503",
          scene_id  = 3,
      }
  }
}

rewind_data["2001301"] =
{
 
  }



rewind_data["2001302"] =
{

}

rewind_data["2001303"] =
{
}

quest_data = {}
quest_data["2001304"] = 
{
	npcs = 
	{
		{
			alias = "Npc141301",
			script = "Actor/Npc/TempNPC",
			id = 141301,
			pos = "Event_20503",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}
quest_data["2001303"] = 
{
	npcs = 
	{
		{
			alias = "Npc141301",
			script = "Actor/Npc/TempNPC",
			id = 141301,
			pos = "Event_20503",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}
quest_data["2001302"] = 
{
	npcs = 
	{
		{
			alias = "Npc141301",
			script = "Actor/Npc/TempNPC",
			id = 141301,
			pos = "Event_20503",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

quest_data["2001301"] = 
{
	npcs = 
	{
		{
			alias = "Npc141301",
			script = "Actor/Npc/TempNPC",
			id = 141301,
			pos = "Event_20503",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}