-- 任务配置

-- 父任务id

main_id = 360

sub_ids =
{
    36001,
    --36002,
    36003,
    36004,
    36005,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["36001"] = 
{

}

rewind_data["36003"] = 
{

}

rewind_data["36004"] = 
{
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q360Ambor1",
            data_index = 0,
            scene_id  = 3,
        }
    },
}

rewind_data["36005"] = 
{

}
---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["36003"] = 
{
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q360Ambor1",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}

quest_data["36004"] = 
{
    npcs = {
        {
            id = 1002,
            alias = "Ambor",
            script = "Actor/Quest/Q301/Ambor301",
            pos = "Q301Hidden",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    }
}
