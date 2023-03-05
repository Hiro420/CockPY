-- 父任务id
main_id = 22302

-- 子任务id
sub_ids = {
	2230201,
	2230202,
	2230203,
	2230204,
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	
}

rewind_data["2230204"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q22302FYSH",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	
}
quest_data["2230202"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q22302FYSH",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}