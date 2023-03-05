-- 任务配置

-- 父任务id

main_id = 20501

sub_ids =
{
    2050101,
    2050102,
    2050103,
    2050104,
    2050105,
    2050106,
    2050107,
    2050108,
    2050109,
    2050110,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}


rewind_data["2050101"] = 
{

}

---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["2050102"] = 
{
    npcs = {
        {
            alias = "Npc141301",
			script = "Actor/Npc/TempNPC",
			id = 141301,
			pos = "Q2050105_Jack",
			scene_id = 40100,
			room_ID = 0,
			data_index = 0,
        },
        {
            alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q2050105_Paimon",
			scene_id = 40100,
			room_ID = 0,
			data_index = 0,
        }
    }
}