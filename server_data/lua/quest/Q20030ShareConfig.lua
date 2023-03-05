-- 任务配置

-- 父任务id

main_id = 20030

sub_ids =
{
    2003001,
    2003002,
    2003003,
    2003004,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

quest_data = {}

quest_data["2003001"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q20030CamTarget",
            scene_id  = 3,
            room_id = 0,
			data_index = 1
        }
    }
}






