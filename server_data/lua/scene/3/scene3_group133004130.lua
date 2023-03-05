--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363, monster_id = 20011001, pos = { x = 2380.9, y = 295.8, z = -316.9 }, rot = { x = 0.0, y = 225.6, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 364, monster_id = 20011001, pos = { x = 2380.9, y = 295.8, z = -318.9 }, rot = { x = 0.0, y = 320.7, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 365, monster_id = 20011001, pos = { x = 2378.9, y = 295.7, z = -318.8 }, rot = { x = 0.0, y = 49.7, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 366, monster_id = 20011001, pos = { x = 2378.9, y = 295.7, z = -316.9 }, rot = { x = 0.0, y = 124.2, z = 0.0 }, level = 10, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 796, gadget_id = 70500000, pos = { x = 2381.9, y = 295.9, z = -317.9 }, rot = { x = 0.0, y = 327.8, z = 0.0 }, level = 15, point_type = 2003 },
	{ config_id = 797, gadget_id = 70500000, pos = { x = 2379.9, y = 295.7, z = -319.9 }, rot = { x = 0.0, y = 50.0, z = 0.0 }, level = 15, point_type = 2003 },
	{ config_id = 798, gadget_id = 70500000, pos = { x = 2377.9, y = 295.7, z = -317.8 }, rot = { x = 0.0, y = 82.7, z = 0.0 }, level = 15, point_type = 2003 },
	{ config_id = 799, gadget_id = 70500000, pos = { x = 2379.9, y = 295.7, z = -315.9 }, rot = { x = 0.0, y = 48.2, z = 0.0 }, level = 15, point_type = 2003 },
	{ config_id = 800, gadget_id = 70211101, pos = { x = 2379.9, y = 295.8, z = -317.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_165", event = EventType.EVENT_GATHER, source = "294", condition = "condition_EVENT_GATHER_165", action = "action_EVENT_GATHER_165" },
	{ name = "ANY_MONSTER_DIE_166", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_166", action = "action_EVENT_ANY_MONSTER_DIE_166", tlog_tag = "奔狼岭_16_谜题破解_结算" },
	{ name = "GATHER_168", event = EventType.EVENT_GATHER, source = "295", condition = "condition_EVENT_GATHER_168", action = "action_EVENT_GATHER_168" },
	{ name = "GATHER_169", event = EventType.EVENT_GATHER, source = "296", condition = "condition_EVENT_GATHER_169", action = "action_EVENT_GATHER_169" },
	{ name = "GATHER_170", event = EventType.EVENT_GATHER, source = "297", condition = "condition_EVENT_GATHER_170", action = "action_EVENT_GATHER_170" }
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
		gadgets = { 796, 797, 798, 799 },
		regions = { },
		triggers = { "GATHER_165", "ANY_MONSTER_DIE_166", "GATHER_168", "GATHER_169", "GATHER_170" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_165(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004016}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_165(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 225, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 226, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 227, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 228, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_166(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_166(context, evt)
	-- 创建id为298的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 298 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_168(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004016}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_168(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 225, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 226, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 227, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 228, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_169(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004016}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_169(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 225, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 226, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 227, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 228, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_170(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004016}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_170(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 225, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 226, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 227, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 228, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
