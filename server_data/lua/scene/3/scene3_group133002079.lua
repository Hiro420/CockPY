-- Trigger变量
local defs = {
	monster_id_1 = 163
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163, monster_id = 20010301, pos = { x = 1887.6, y = 241.3, z = -886.6 }, rot = { x = 0.0, y = 286.2, z = 0.0 }, level = 7, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1034, gadget_id = 70500000, pos = { x = 1886.4, y = 240.9, z = -883.1 }, rot = { x = 0.0, y = 118.0, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 1035, gadget_id = 70500000, pos = { x = 1883.8, y = 240.5, z = -882.4 }, rot = { x = 0.0, y = 118.0, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 1036, gadget_id = 70500000, pos = { x = 1883.0, y = 240.6, z = -885.5 }, rot = { x = 0.0, y = 118.0, z = 0.0 }, level = 10, point_type = 2019 },
	{ config_id = 1037, gadget_id = 70500000, pos = { x = 1882.4, y = 240.7, z = -888.3 }, rot = { x = 0.0, y = 118.0, z = 0.0 }, level = 10, point_type = 2019 },
	{ config_id = 1039, gadget_id = 70500000, pos = { x = 1885.8, y = 241.0, z = -886.2 }, rot = { x = 0.0, y = 118.0, z = 0.0 }, level = 10, point_type = 2019 },
	{ config_id = 1040, gadget_id = 70500000, pos = { x = 1885.3, y = 241.1, z = -888.7 }, rot = { x = 0.0, y = 118.0, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 1394, gadget_id = 70220017, pos = { x = 1862.8, y = 237.7, z = -888.3 }, rot = { x = 347.8, y = 87.5, z = 0.0 }, level = 10 },
	{ config_id = 1395, gadget_id = 70220017, pos = { x = 1851.4, y = 236.6, z = -885.9 }, rot = { x = 0.0, y = 148.1, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_75", event = EventType.EVENT_GATHER, source = "1034", condition = "", action = "action_EVENT_GATHER_75" },
	{ name = "GATHER_76", event = EventType.EVENT_GATHER, source = "1035", condition = "", action = "action_EVENT_GATHER_76" },
	{ name = "GATHER_77", event = EventType.EVENT_GATHER, source = "1036", condition = "", action = "action_EVENT_GATHER_77" },
	{ name = "GATHER_78", event = EventType.EVENT_GATHER, source = "1037", condition = "", action = "action_EVENT_GATHER_78" },
	{ name = "GATHER_79", event = EventType.EVENT_GATHER, source = "1039", condition = "", action = "action_EVENT_GATHER_79" },
	{ name = "GATHER_80", event = EventType.EVENT_GATHER, source = "1040", condition = "", action = "action_EVENT_GATHER_80" }
}

-- 变量
variables = {
	{ name = "1034", value = 0, no_refresh = false },
	{ name = "1035", value = 0, no_refresh = false },
	{ name = "1036", value = 0, no_refresh = false },
	{ name = "1037", value = 0, no_refresh = false },
	{ name = "1039", value = 0, no_refresh = false },
	{ name = "1040", value = 0, no_refresh = false }
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
	rand_suite = true
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
		gadgets = { 1034, 1035, 1036, 1037, 1039, 1040, 1394, 1395 },
		regions = { },
		triggers = { "GATHER_75", "GATHER_76", "GATHER_77", "GATHER_78", "GATHER_79", "GATHER_80" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_75(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1034", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_76(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1035", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_77(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1036", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_78(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1037", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_79(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1039", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_80(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1040", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end
