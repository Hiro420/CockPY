-- 任务配置

-- 父任务id

main_id = 20508

sub_ids =
{
    2050801,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}


rewind_data["2050801"] = 
{

}

---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["2050802"] = 
{
    gadgets =
    {
        {
            id = 70900201,
            pos = "Q20508_Target1",
            alias = "Q20508Target", 
            scene_id = 40100,
            room_id = 0,
            data_index = 1,
        },
    }
}

quest_data["2050804"] = 
{
    gadgets =
    {
        {
            id = 70900201,
            pos = "Q20502Target2",
            alias = "Q20508Target", 
            scene_id = 40200,
            room_id = 0,
            data_index = 1,
        },
    }
}

quest_data["2050806"] = 
{
    gadgets =
    {
        {
            id = 70900201,
            pos = "Q20508_Target3",
            alias = "Q20508Target", 
            scene_id = 40300,
            room_id = 0,
            data_index = 1,
        },
    }
}

quest_data["2050808"] = 
{
    gadgets =
    {
        {
            id = 70900201,
            pos = "Q20508_Target4",
            alias = "Q20508Target", 
            scene_id = 40400,
            room_id = 0,
            data_index = 1,
        },
    }
}