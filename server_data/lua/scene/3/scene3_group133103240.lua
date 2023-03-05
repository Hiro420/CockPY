--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 240005, monster_id = 28010301, pos = { x = 758.4, y = 226.1, z = 1302.7 }, rot = { x = 0.0, y = 148.3, z = 0.0 }, level = 24, drop_tag = "采集动物" },
	{ config_id = 240006, monster_id = 28010301, pos = { x = 756.2, y = 226.2, z = 1303.1 }, rot = { x = 0.0, y = 182.7, z = 0.0 }, level = 24, drop_tag = "采集动物" },
	{ config_id = 240007, monster_id = 28010301, pos = { x = 757.3, y = 226.0, z = 1303.5 }, rot = { x = 0.0, y = 334.3, z = 0.0 }, level = 24, drop_tag = "采集动物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 240001, gadget_id = 70360001, pos = { x = 752.7, y = 228.3, z = 1313.5 }, rot = { x = 0.0, y = 175.4, z = 0.0 }, level = 19, isOneoff = true, persistent = true },
	{ config_id = 240002, gadget_id = 70211111, pos = { x = 757.2, y = 226.2, z = 1302.8 }, rot = { x = 0.0, y = 359.4, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_240003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_240003", action = "action_EVENT_GADGET_CREATE_240003", trigger_count = 0 },
	{ name = "SELECT_OPTION_240004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_240004", action = "action_EVENT_SELECT_OPTION_240004" }
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
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { 240005, 240006, 240007 },
		gadgets = { 240001 },
		regions = { },
		triggers = { "GADGET_CREATE_240003", "SELECT_OPTION_240004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 240002 },
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
function condition_EVENT_GADGET_CREATE_240003(context, evt)
	-- 判断是gadgetid 240001
	if 240001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_240003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_240004(context, evt)
	if 240001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_240004(context, evt)
	-- 删除指定group： 133103240 ；指定config：240001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103240, 240001, 169) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103240, suite = 2 }) then
			return -1
		end
	
	return 0
end
