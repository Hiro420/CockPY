-- 任务配置

-- 父任务id

main_id = 20012

sub_ids =
{
    2001201,
    2001202,
    2001203,
    2001204,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

rewind_data["2001204"] =
{
  npcs = {
      {
          id = 157001,
          alias = "Npc157001",
          script = "Actor/Npc/TempNPC",
          pos = "Event_20502",
          scene_id  = 3,
      }
  }
}

rewind_data["2001201"] =
{
 
  }



rewind_data["2001202"] =
{

}

rewind_data["2001203"] =
{
}

quest_data = {}

quest_data["2001204"] = 
{
	npcs = 
	{
		{
			alias = "Npc157001",
			script = "Actor/Npc/TempNPC",
			id = 157001,
			pos = "Event_20502",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

quest_data["2001201"] = 
{
	npcs = 
	{
		{
			alias = "Npc157001",
			script = "Actor/Npc/TempNPC",
			id = 157001,
			pos = "Event_20502",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


quest_data["2001202"] = 
{
	npcs = 
	{
		{
			alias = "Npc157001",
			script = "Actor/Npc/TempNPC",
			id = 157001,
			pos = "Event_20502",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}


quest_data["2001203"] = 
{
	npcs = 
	{
		{
			alias = "Npc157001",
			script = "Actor/Npc/TempNPC",
			id = 157001,
			pos = "Event_20502",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

