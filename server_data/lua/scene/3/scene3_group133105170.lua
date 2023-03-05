--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 525, gadget_id = 70211121, pos = { x = 814.1, y = 262.9, z = -147.6 }, rot = { x = 6.4, y = 327.6, z = 11.6 }, level = 25, chest_drop_id = 2000200, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 170001, gadget_id = 70360001, pos = { x = 815.8, y = 263.9, z = -147.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 170004, gadget_id = 70360040, pos = { x = 815.8, y = 263.8, z = -147.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "QUEST_FINISH_226", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_226", action = "action_EVENT_QUEST_FINISH_226" },
	{ name = "GADGET_CREATE_170002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_170002", action = "action_EVENT_GADGET_CREATE_170002", trigger_count = 0 },
	{ name = "SELECT_OPTION_170003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_170003", action = "action_EVENT_SELECT_OPTION_170003", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_226" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 170001, 170004 },
		regions = { },
		triggers = { "GADGET_CREATE_170002", "SELECT_OPTION_170003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 525 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_226(context, evt)
	--检查ID为2100708的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2100708 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_226(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105170, 2)
	
	-- 杀死Group内所有NPC
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133105167, kill_policy = GroupKillPolicy.GROUP_KILL_NPC }) then
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_170002(context, evt)
	if 170001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_170002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105170, 170001, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_170003(context, evt)
	-- 判断是gadgetid 170001 option_id 169
	if 170001 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_170003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105170, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 170001 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 170004 }) then
		    return -1
		end
		
	
	return 0
end
