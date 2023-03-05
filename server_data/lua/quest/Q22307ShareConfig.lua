-- 父任务id
main_id = 22307

-- 子任务id
sub_ids = {
	2230701,
	2230702,
	2230703,
	2230704,
	2230705,
	2230711,
	2230712,
	2230713,
	2230721,
	2230722,
	2230723,
	2230731,
	2230732,
	2230733,
	2230741,
	2230742,
	2230743,
	2230751,

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
			{"3","133108099,1"},
			{"3","133108102,1"},
			{"3","133108100,1"},
			{"3","133108103,1"},
			{"3","133108101,1"},
			{"3","133108104,1"},
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{"100417,100418,100419,100395,100396"},
		}
	},
}



cancel_action = 
{
	CLIENT = {},
	SERVER = {	
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{"3","133108099,1"},
			{"3","133108102,1"},
			{"3","133108100,1"},
			{"3","133108103,1"},
			{"3","133108101,1"},
			{"3","133108104,1"},
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{"100417,100418,100419,100395,100396"},
		}
	},
}