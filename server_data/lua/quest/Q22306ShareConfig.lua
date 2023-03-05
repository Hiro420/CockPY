-- 父任务id
main_id = 22306

-- 子任务id
sub_ids = {
	2230601,
	2230602,
	2230603,
	2230604,
	2230605,
	2230611,
	2230612,
	2230613,
	2230621,
	2230622,
	2230623,
	2230631,
	2230632,
	2230633,

}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	
}

finish_action = {}
fail_action = {}
cancel_action = {}

finish_action =
{
	CLIENT = {},
	SERVER = {
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{"3","133104442,1"},
			{"3","133104446,1"},
			{"3","133104443,1"},
			{"3","133104447,1"},
			{"3","133104444,1"},
			{"3","133104448,1"},
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{"100414,100415,100416,100395,100396"},
		}
	},
}



cancel_action = 
{
	CLIENT = {},
	SERVER = {	
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{"3","133104442,1"},
			{"3","133104446,1"},
			{"3","133104443,1"},
			{"3","133104447,1"},
			{"3","133104444,1"},
			{"3","133104448,1"},
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{"100414,100415,100416,100395,100396"},
		}
	},
}