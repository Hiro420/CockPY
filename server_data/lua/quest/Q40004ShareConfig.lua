-- 任务配置

-- 父任务id

main_id = 40004

sub_ids =
{
    4000401,
    4000402,
    4000403,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}
rewind_data["4000401"] = 
{

}


---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["4000402"] = 
{
    npcs = 
	{
		{
			alias = "Keaya",
			script = "Actor/Quest/Q301/Gaia301",
			id = 1004,
			pos = "Q40004_Kaeya",
			scene_id = 1009,
			room_id = 1,
			data_index = 0,
		}
    }
}

quest_data["4000403"] = 
{
    npcs = 
    {
        {
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            id = 146101,
            pos = "Q40004_Spy",
            sceneID = 3,
            roomID = 0,
            subIndex = 0,
        }
    },
}

quest_data["4000406"] = 
{
    npcs = 
    {
        {
            alias = "Npc10207",
            script = "Actor/Npc/TempNPC",
            id = 10207,
            pos = "Q40004Thoarder1",
            sceneID = 3,
            roomID = 0,
            subIndex = 0,
        },
        {
            alias = "Npc10208",
            script = "Actor/Npc/TempNPC",
            id = 10208,
            pos = "Q40004Thoarder2",
            sceneID = 3,
            roomID = 0,
            subIndex = 0,
        }
    },
}

quest_data["4000408"] = 
{
    npcs = 
    {
        {
            alias = "Npc10207",
            script = "Actor/Npc/TempNPC",
            id = 10207,
            pos = "Q40004Thoarder1",
            sceneID = 3,
            roomID = 0,
            subIndex = 0,
        },
        {
            alias = "Npc10208",
            script = "Actor/Npc/TempNPC",
            id = 10208,
            pos = "Q40004Thoarder2",
            sceneID = 3,
            roomID = 0,
            subIndex = 0,
        }
    },
}