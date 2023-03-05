-- 任务配置

-- 父任务id

main_id = 20036

sub_ids =
{
    2003601,
    2003602,
    2003603,
    2003604,
    2003605,
    2003606,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

rewind_data["2003601"] =
{
  npcs = {
      {
          id = 1521,
          alias = "Npc1521",
          script = "Actor/Npc/TempNPC",
          pos = "Event_21000",
          scene_id  = 3,
      }
  }
}

rewind_data["2003602"] =
{
    gadgets =
    {
        {
            id = 70710009,
            pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
            alias = "InteractionPoint", -- optional default : ""
            scene_id = 3, -- optional default : sceneData.DefaultSceneID
            room_id = 0, -- optional default : 0
           
            
        }
    }
 
}

rewind_data["2003603"] =
{
    gadgets =
    {
        {
            id = 70710009,
            pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
            alias = "InteractionPoint", -- optional default : ""
            scene_id = 3, -- optional default : sceneData.DefaultSceneID
            room_id = 0, -- optional default : 0
           
            
        }
    }
}

rewind_data["2003604"] =
{
    gadgets =
    {
        {
            id = 70710009,
            pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
            alias = "InteractionPoint", -- optional default : ""
            scene_id = 3, -- optional default : sceneData.DefaultSceneID
            room_id = 0, -- optional default : 0
           
            
        }
    }
}

rewind_data["2003605"] =
{
    gadgets =
    {
        {
            id = 70710009,
            pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
            alias = "InteractionPoint", -- optional default : ""
            scene_id = 3, -- optional default : sceneData.DefaultSceneID
            room_id = 0, -- optional default : 0
           
            
        }
    }
}

rewind_data["2003606"] =
{
    gadgets =
    {
        {
            id = 70710009,
            pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
            alias = "InteractionPoint", -- optional default : ""
            scene_id = 3, -- optional default : sceneData.DefaultSceneID
            room_id = 0, -- optional default : 0
           
            
        }
    }
  
}

quest_data = {}


quest_data["2003601"] = 
{
    gadgets =
{
	{
		id = 70710009,
		pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
		alias = "InteractionPoint", -- optional default : ""
		scene_id = 3, -- optional default : sceneData.DefaultSceneID
		room_id = 0, -- optional default : 0
		
		
	}
}

}
quest_data["2003602"] = 
{
    gadgets =
{
	{
		id = 70710009,
		pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
		alias = "InteractionPoint", -- optional default : ""
		scene_id = 3, -- optional default : sceneData.DefaultSceneID
		room_id = 0, -- optional default : 0
		
		
	}
}
}

quest_data["2003603"] = 
{
    gadgets =
{
	{
		id = 70710009,
		pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
		alias = "InteractionPoint", -- optional default : ""
		scene_id = 3, -- optional default : sceneData.DefaultSceneID
		room_id = 0, -- optional default : 0
		
		
	}
}
}

quest_data["2003604"] = 
{
    gadgets =
{
	{
		id = 70710009,
		pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
		alias = "InteractionPoint", -- optional default : ""
		scene_id = 3, -- optional default : sceneData.DefaultSceneID
		room_id = 0, -- optional default : 0
		
		
	}
}
}

quest_data["2003605"] = 
{
    gadgets =
{
	{
		id = 70710009,
		pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
		alias = "InteractionPoint", -- optional default : ""
		scene_id = 3, -- optional default : sceneData.DefaultSceneID
		room_id = 0, -- optional default : 0
		
		
	}
}
}

quest_data["2003606"] = 
{
    gadgets =
{
	{
		id = 70710009,
		pos = "",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
		alias = "InteractionPoint", -- optional default : ""
		scene_id = 3, -- optional default : sceneData.DefaultSceneID
		room_id = 0, -- optional default : 0
		
		
	}
}
}
