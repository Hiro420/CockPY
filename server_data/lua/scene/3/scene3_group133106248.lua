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
	{ config_id = 248001, gadget_id = 70380007, pos = { x = -171.7, y = 179.1, z = 946.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, route_id = 310600092, start_route = false, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_248003", event = EventType.EVENT_VARIABLE_CHANGE, source = "finish", condition = "condition_EVENT_VARIABLE_CHANGE_248003", action = "action_EVENT_VARIABLE_CHANGE_248003" }
}

-- 变量
variables = {
	{ name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 248001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_248003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_248003(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_248003(context, evt)
	-- 通知场景上的所有玩家播放名字为310624801 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310624801, 0) then
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 248001) then
	  return -1
	end
	
	return 0
end
