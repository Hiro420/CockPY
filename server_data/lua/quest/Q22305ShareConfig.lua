-- 父任务id
main_id = 22305

-- 子任务id
sub_ids = {
	2230501,
	2230502,
	2230503,
	2230504,
	2230505,
	2230506,
	2230507,
	2230508,
	2230509,
	2230510,
	2230511,
	2230512,
	2230513,
	2230514,
	2230515,
	2230516,
	2230517,
	2230518,
	2230519,
	2230520,
	2230521,
	2230522,
	2230523,
	2230524,
	2230525,
	2230526,
	2230527,
	2230528,
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
			{"3","133107909,1"},
		},
	}
}



cancel_action = 
{
	CLIENT = {},
	SERVER = {
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{"3","133107909,1"},
		},
	}
}
