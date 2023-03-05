-- 任务配置

-- 父任务id

main_id = 20016

sub_ids =
{
    2001601,
    2001602,
    2001603,
    2001604,
    2001605,
    2001606,
    2001607,
    2001608,
    2001609,
    2001610,
    2001611,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

rewind_data["2001601"] =
{

}

rewind_data["2001602"] =
{
 
}

quest_data = {}

quest_data["2001602"] = 
{
    npcs = {
        {
            id = 157301,
            alias = "Npc157301",
            script = "Actor/Npc/TempNPC",
            pos = "Event20301NPCSpawn1",
            scene_id  = 3,
            room_id = 0,
			      data_index = 1,
        },
        {
          id = 157501,
          alias = "Npc157501",
          script = "Actor/Npc/TempNPC",
          pos = "Event20301NPCSpawn2",
          scene_id  = 3,
          room_id = 0,
          data_index = 2,
        },
        {
          id = 157701,
          alias = "Npc157701",
          script = "Actor/Npc/TempNPC",
          pos = "Event20301NPCSpawn3",
          scene_id  = 3,
          room_id = 0,
          data_index = 3,
      }
    }
}

quest_data["2001603"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Event20301NPCSpawn1",
            scene_id  = 3,
            room_id = 0,
			      data_index = 1,
        }
    }
}

