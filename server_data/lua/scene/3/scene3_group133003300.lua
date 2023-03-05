-- Trigger变量
local defs = {
	gadget_id_1 = 980,
	gadget_id_2 = 981,
	gadget_id_3 = 982,
	gadget_id_4 = 983
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 980, monster_id = 20011001, pos = { x = 2405.9, y = 208.4, z = -1184.1 }, rot = { x = 0.0, y = 102.3, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 981, monster_id = 20011001, pos = { x = 2408.4, y = 208.7, z = -1190.2 }, rot = { x = 0.0, y = 40.1, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 982, monster_id = 20011001, pos = { x = 2413.5, y = 208.2, z = -1188.7 }, rot = { x = 0.0, y = 285.6, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 983, monster_id = 20011001, pos = { x = 2412.2, y = 208.1, z = -1182.8 }, rot = { x = 0.0, y = 192.3, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3206, gadget_id = 70211101, pos = { x = 2410.2, y = 208.4, z = -1186.5 }, rot = { x = 347.5, y = 123.0, z = 358.3 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 3207, gadget_id = 70500000, pos = { x = 2407.6, y = 208.4, z = -1184.6 }, rot = { x = 0.0, y = 178.6, z = 0.0 }, level = 2, point_type = 2003, isOneoff = true },
	{ config_id = 3208, gadget_id = 70500000, pos = { x = 2408.7, y = 208.6, z = -1188.9 }, rot = { x = 0.0, y = 103.9, z = 0.0 }, level = 2, point_type = 2003, isOneoff = true },
	{ config_id = 3209, gadget_id = 70500000, pos = { x = 2412.4, y = 208.3, z = -1188.0 }, rot = { x = 0.0, y = 24.2, z = 0.0 }, level = 2, point_type = 2003, isOneoff = true },
	{ config_id = 3210, gadget_id = 70500000, pos = { x = 2411.5, y = 208.3, z = -1184.2 }, rot = { x = 0.0, y = 299.3, z = 0.0 }, level = 2, point_type = 2003, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_218", event = EventType.EVENT_GATHER, source = "3207", condition = "", action = "action_EVENT_GATHER_218" },
	{ name = "GATHER_219", event = EventType.EVENT_GATHER, source = "3208", condition = "", action = "action_EVENT_GATHER_219" },
	{ name = "GATHER_220", event = EventType.EVENT_GATHER, source = "3209", condition = "", action = "action_EVENT_GATHER_220" },
	{ name = "GATHER_221", event = EventType.EVENT_GATHER, source = "3210", condition = "", action = "action_EVENT_GATHER_221" },
	{ name = "ANY_MONSTER_DIE_222", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_222", action = "action_EVENT_ANY_MONSTER_DIE_222", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "v980", value = 0, no_refresh = true },
	{ name = "v981", value = 0, no_refresh = true },
	{ name = "v982", value = 0, no_refresh = true },
	{ name = "v983", value = 0, no_refresh = true }
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
		gadgets = { 3207, 3208, 3209, 3210 },
		regions = { },
		triggers = { "GATHER_218", "GATHER_219", "GATHER_220", "GATHER_221", "ANY_MONSTER_DIE_222" },
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
function action_EVENT_GATHER_218(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 980, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_219(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 981, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_220(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 982, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_221(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 983, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_222(context, evt)
	if defs.gadget_id_1 == evt.param1 then
		-- 将本组内变量名为 "v980" 的变量设置为 1
	 
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "v980", 1) then
	    return -1
	  end
	
	end
	
	if defs.gadget_id_2 == evt.param1 then
		-- 将本组内变量名为 "v981" 的变量设置为 1
	 
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "v981", 1) then
	    return -1
	  end
	
	end
	
	if defs.gadget_id_3 == evt.param1 then
		-- 将本组内变量名为 "v982" 的变量设置为 1
	 
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "v982", 1) then
	    return -1
	  end
	
	end
	
	if defs.gadget_id_4 == evt.param1 then
		-- 将本组内变量名为 "v983" 的变量设置为 1
	 
	  if 0 ~= ScriptLib.SetGroupVariableValue(context, "v983", 1) then
	    return -1
	  end
	
	end
	
	-- 获取本组内变量名为 "v980" 的变量值
	if ScriptLib.GetGroupVariableValue(context, "v980") + ScriptLib.GetGroupVariableValue(context, "v981") + ScriptLib.GetGroupVariableValue(context, "v982") + ScriptLib.GetGroupVariableValue(context, "v983") == 4  then
	  
	return true
	
	end
	
	
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_222(context, evt)
	-- 创生gadget 3206
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3206 }) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（2410，208，-1186），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2410, y=208, z=-1186}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1 }) then
					return -1
				end 
	
	return 0
end
