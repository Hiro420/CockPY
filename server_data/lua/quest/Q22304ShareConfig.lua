-- 父任务id
main_id = 22304

-- 子任务id
sub_ids = {
	2230401,
	2230402,
	2230403,
	2230404,
	2230405,
	2230411,
	2230412,
	2230413,
	2230421,
	2230422,
	2230423,
	2230431,
	2230432,
	2230433,
	2230441,
	2230442,
	2230443,
	2230451,

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
			{"3","133102570,1"},
			{"3","133102902,1"},
			{"3","133102591,1"},
			{"3","133102592,1"},
			{"3","133102593,1"},
			{"3","133102594,1"},
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{"100392,100393,100394,100395,100396"},
		}
	},
}



cancel_action = 
{
	CLIENT = {},
	SERVER = {	
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{"3","133102570,1"},
			{"3","133102902,1"},
			{"3","133102591,1"},
			{"3","133102592,1"},
			{"3","133102593,1"},
			{"3","133102594,1"},
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{"100392,100393,100394,100395,100396"},
		}
	},
}