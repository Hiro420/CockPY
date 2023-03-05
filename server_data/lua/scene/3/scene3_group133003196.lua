--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 776, monster_id = 20011201, pos = { x = 2424.0, y = 210.5, z = -1109.0 }, rot = { x = 0.0, y = 123.9, z = 0.0 }, level = 2, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 777, monster_id = 20011201, pos = { x = 2426.2, y = 209.9, z = -1113.4 }, rot = { x = 0.0, y = 21.1, z = 0.0 }, level = 2, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 778, monster_id = 20011201, pos = { x = 2430.5, y = 210.0, z = -1110.7 }, rot = { x = 0.0, y = 282.7, z = 0.0 }, level = 2, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 779, monster_id = 20011201, pos = { x = 2428.5, y = 210.7, z = -1106.3 }, rot = { x = 0.0, y = 203.8, z = 0.0 }, level = 2, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2902, gadget_id = 70500000, pos = { x = 2426.5, y = 210.0, z = -1112.3 }, rot = { x = 3.2, y = 75.4, z = 1.6 }, level = 2, point_type = 2003, isOneoff = true },
	{ config_id = 2903, gadget_id = 70500000, pos = { x = 2425.1, y = 210.3, z = -1109.2 }, rot = { x = 0.0, y = 178.7, z = 0.0 }, level = 2, point_type = 2003, isOneoff = true },
	{ config_id = 2904, gadget_id = 70500000, pos = { x = 2429.5, y = 210.0, z = -1110.4 }, rot = { x = 0.0, y = 353.0, z = 0.0 }, level = 2, point_type = 2003, isOneoff = true },
	{ config_id = 2905, gadget_id = 70500000, pos = { x = 2428.1, y = 210.5, z = -1107.5 }, rot = { x = 0.0, y = 255.4, z = 0.0 }, level = 2, point_type = 2003, isOneoff = true },
	{ config_id = 2910, gadget_id = 70211102, pos = { x = 2427.3, y = 210.1, z = -1109.9 }, rot = { x = 0.0, y = 98.0, z = 0.0 }, level = 2, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_159", event = EventType.EVENT_GATHER, source = "2902", condition = "condition_EVENT_GATHER_159", action = "action_EVENT_GATHER_159" },
	{ name = "ANY_MONSTER_DIE_160", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_160", action = "action_EVENT_ANY_MONSTER_DIE_160" },
	{ name = "GATHER_228", event = EventType.EVENT_GATHER, source = "2903", condition = "condition_EVENT_GATHER_228", action = "action_EVENT_GATHER_228" },
	{ name = "GATHER_229", event = EventType.EVENT_GATHER, source = "2904", condition = "condition_EVENT_GATHER_229", action = "action_EVENT_GATHER_229" },
	{ name = "GATHER_230", event = EventType.EVENT_GATHER, source = "2905", condition = "condition_EVENT_GATHER_230", action = "action_EVENT_GATHER_230" }
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
		gadgets = { 2902, 2903, 2904, 2905 },
		regions = { },
		triggers = { "GATHER_159", "ANY_MONSTER_DIE_160", "GATHER_228", "GATHER_229", "GATHER_230" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_159(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003196}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_159(context, evt)
	-- 创生gadget 2910
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2910 }) then
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 776, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 778, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 779, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_160(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_160(context, evt)
	-- 解锁目标2910
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2910, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_228(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003196}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_228(context, evt)
	-- 创生gadget 2910
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2910 }) then
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 776, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 778, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 779, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_229(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003196}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_229(context, evt)
	-- 创生gadget 2910
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2910 }) then
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 776, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 778, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 779, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_230(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003196}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_230(context, evt)
	-- 创生gadget 2910
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2910 }) then
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 776, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 778, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 779, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
