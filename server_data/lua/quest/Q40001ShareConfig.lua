-- 任务配置

-- 父任务id

main_id = 40001

sub_ids =
{
    4000101,
    4000102,
    4000103,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}
rewind_data["4000101"] = 
{

   
}


---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["4000101"] = 
{
    npcs = 
    {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q4000101_Paimon",
            sceneID = 3,
            roomID = 0,
            subIndex = 0,
        }
    },
}

quest_data["4000110"] = 
{
    npcs = 
    {
        {
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            id = 1005,
            pos = "Q4000103_Paimon",
            sceneID = 3,
            roomID = 0,
            subIndex = 0,
        }
    },
}