-- 任务配置

-- 父任务id

main_id = 462

sub_ids =
{
    46200,
    46201,
    46202,
    46203,
    46204,
    46207,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["46203"] = 
{
    npcs = {
        {
            id = 1213,
            alias = "KaeyaNpc",
            script = "Actor/Npc/TempNPC",
            pos = "Q462NPCTo",
            scene_id  = 3,
            room_id = 0,
        }
    }
}


rewind_data["46205"] = 
{
    npcs = {
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            pos = "Q461KaeyaIn",
            scene_id  = 1004,
            room_id = 1,
        }
    }
}

rewind_data["46206"] = 
{
    npcs = {
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            pos = "Q461KaeyaIn",
            scene_id  = 1004,
            room_id = 1,
        }
    }
}

rewind_data["46207"] = 
{
    npcs = {
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            pos = "Q461KaeyaIn",
            scene_id  = 1004,
            room_id = 1,
        }
    }
}


rewind_data["46208"] = 
{
    npcs = {
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            pos = "Q461KaeyaIn",
            scene_id  = 1004,
            room_id = 1,
        }
    }
}


rewind_data["46209"] = 
{
    npcs = {
        {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            pos = "Q461KaeyaIn",
            scene_id  = 1004,
            room_id = 1,
        }
    }
}


---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["46201"] = 
{
    npcs = 
	{
		{
			alias = "KaeyaNpc",
			script = "Actor/Npc/TempNPC",
			id = 1213,
			pos = "Q462NPCBorn",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["46202"] = 
{
    npcs = 
	{
		{
			alias = "KaeyaNpc",
			script = "Actor/Npc/TempNPC",
			id = 1213,
			pos = "Q462NPCBorn",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["46204"] = 
{
    npcs = 
	{
		{
			alias = "KaeyaNpc",
			script = "Actor/Npc/TempNPC",
			id = 1004,
			pos = "Q461KaeyaIn",
			scene_id = 1004,
			room_id = 1,
			data_index = 0,
        },
        {
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q46204Paimon",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["46206"] = 
{
    npcs = 
	{
		{
			alias = "KaeyaNpc",
			script = "Actor/Npc/TempNPC",
			id = 1004,
			pos = "Q461KaeyaIn",
			scene_id = 1004,
			room_id = 1,
			data_index = 0,
        },
    }
}