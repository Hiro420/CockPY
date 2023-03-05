-- 任务配置

-- 父任务id

main_id = 464

sub_ids =
{
    46400,
    46401,
    46402,
    46403,
    46404,
    46407,
    46408,
    46409,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["46405"] = 
{
    
}

rewind_data["46407"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q464Diluc1",
            scene_id = 3,
			room_id = 0,
			data_index = 1,
        },
--[[         {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q464Hoffman1",
            data_index = 0,
        }, ]]
    }
}

rewind_data["46408"] = 
{

}

rewind_data["46409"] = 
{
    npcs = {
        {
            id = 1218,
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            pos = "Q464Hoffman2",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
        },
    }
}
---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["46406"] = 
{
    npcs = {
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q464Diluc1",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
        },
    }
}

quest_data["46407"] = 
{
    npcs = {
        {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            pos = "Q301Hidden",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
        },
        {
            id = 1505,
            alias = "QQ1",
            script = "Actor/Quest/Q410/Qiuqiu",
            pos = "Q464Monster6",
			scene_id = 3,
			room_id = 0,
			data_index = 2,
        },
        {
            id = 1506,
            alias = "QQ2",
            script = "Actor/Quest/Q410/Qiuqiu",
            pos = "Q464Monster5",
			scene_id = 3,
			room_id = 0,
			data_index = 3,
        },
        {
            id = 1507,
            alias = "QQ3",
            script = "Actor/Quest/Q410/Qiuqiu",
            pos = "Q464Monster4",
			scene_id = 3,
			room_id = 0,
			data_index = 4,
        },
    }
}

quest_data["46408"] = 
{
    npcs = {
        {
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            id = 1218,
            pos = "Q464Hoffman2",
		 	scene_id = 3,
		 	room_id = 0,
         	data_index = 1,
        },
    }
}

quest_data["46409"] = 
{
    npcs = {
        {
            alias = "Hoffman",
            script = "Actor/Quest/Q376/Soldier",
            id = 1218,
            pos = "Q465Hoffman2",
		 	scene_id = 3,
		 	room_id = 0,
         	data_index = 1,
        },
    }
}