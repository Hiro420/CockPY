-- 任务配置

-- 父任务id

main_id = 461

sub_ids =
{
    46100,
    46101,
    46102,
    46103,
    46104,
    46107,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

--[[rewind_data["46101"] = 
{
    npcs = {
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            pos = "Q461KaeyaIn",
        }
    }
}]]

rewind_data["46102"] = 
{    
    npcs = {
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            pos = "Q461KaeyaOut",
        }
    }
}

rewind_data["46103"] = 
{    
    npcs = {
        
    }
}

---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["46101"] = 
{
    npcs = 
	{
		{
			alias = "Gaia",
			script = "Actor/Npc/TempNPC",
			id = 1004,
			pos = "Q461KaeyaIn",
			scene_id = 1004,
			room_id = 1,
			data_index = 1,
		},
		{
			alias = "Gaia",
			script = "Actor/Npc/TempNPC",
			id = 1004,
			pos = "Q46102Kaeya",
			scene_id = 3,
			room_id = 0,
			data_index = 2,
        }
		
    }
}

quest_data["46102"] = 
{
    npcs = 
	{
		{
			alias = "Gaia",
			script = "Actor/Npc/TempNPC",
			id = 1004,
			pos = "Q46102Kaeya",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["46109"] = 
{
    npcs = 
	{
		{
			alias = "Gaia",
			script = "Actor/Npc/TempNPC",
			id = 1004,
			pos = "Q46102Kaeya",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["46104"] = 
{
    npcs = 
	{
		{
			alias = "Gaia",
			script = "Actor/Npc/TempNPC",
			id = 1004,
			pos = "Q461KaeyaIn",
			scene_id = 1004,
			room_id = 1,
			data_index = 0,
        }
    }
}

quest_data["46107"] = 
{
    npcs = 
	{
		{
			alias = "Gaia",
			script = "Actor/Npc/TempNPC",
			id = 1004,
			pos = "Q461KaeyaOut2",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    }
}