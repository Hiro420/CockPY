-- 任务配置

-- 父任务id

main_id = 40006

sub_ids =
{
    4000601,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}
rewind_data["4000601"] = 
{

}


---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["4000601"] = 
{
   
}

---任务被销毁时要执行的事情
cancel_action = 
{
        CLIENT = {},
        SERVER = {        
                QUEST_EXEC_REFRESH_GROUP_SUITE = 
                {
                        {"3","133107011,1"},
                        {"3","133107018,1"},
                        {"3","133104903,1"},
                        {"3","133107902,1"},
                        {"3","133107903,1"},
                },
                QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
                {
                        {"100237,100238"},
                }
        },
}