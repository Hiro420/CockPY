--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 225, monster_id = 20011001, pos = { x = 2147.0, y = 219.3, z = -493.1 }, rot = { x = 0.0, y = 225.6, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 226, monster_id = 20011001, pos = { x = 2147.0, y = 219.5, z = -495.2 }, rot = { x = 0.0, y = 320.7, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 227, monster_id = 20011001, pos = { x = 2145.0, y = 219.6, z = -495.1 }, rot = { x = 0.0, y = 49.7, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 228, monster_id = 20011001, pos = { x = 2145.0, y = 219.5, z = -493.1 }, rot = { x = 0.0, y = 124.2, z = 0.0 }, level = 10, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 294, gadget_id = 70500000, pos = { x = 2148.0, y = 219.3, z = -494.1 }, rot = { x = 0.0, y = 327.8, z = 0.0 }, level = 15, point_type = 2003 },
	{ config_id = 295, gadget_id = 70500000, pos = { x = 2146.0, y = 219.6, z = -496.2 }, rot = { x = 0.0, y = 50.0, z = 0.0 }, level = 15, point_type = 2003 },
	{ config_id = 296, gadget_id = 70500000, pos = { x = 2144.0, y = 219.7, z = -494.1 }, rot = { x = 0.0, y = 82.7, z = 0.0 }, level = 15, point_type = 2003 },
	{ config_id = 297, gadget_id = 70500000, pos = { x = 2146.0, y = 219.3, z = -492.1 }, rot = { x = 0.0, y = 48.2, z = 0.0 }, level = 15, point_type = 2003 },
	{ config_id = 298, gadget_id = 70211101, pos = { x = 2146.0, y = 219.5, z = -494.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_74", event = EventType.EVENT_GATHER, source = "294", condition = "condition_EVENT_GATHER_74", action = "action_EVENT_GATHER_74" },
	{ name = "ANY_MONSTER_DIE_75", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_75", action = "action_EVENT_ANY_MONSTER_DIE_75", tlog_tag = "奔狼岭_16_谜题破解_结算" },
	{ name = "GATHER_142", event = EventType.EVENT_GATHER, source = "295", condition = "condition_EVENT_GATHER_142", action = "action_EVENT_GATHER_142" },
	{ name = "GATHER_143", event = EventType.EVENT_GATHER, source = "296", condition = "condition_EVENT_GATHER_143", action = "action_EVENT_GATHER_143" },
	{ name = "GATHER_144", event = EventType.EVENT_GATHER, source = "297", condition = "condition_EVENT_GATHER_144", action = "action_EVENT_GATHER_144" }
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
		gadgets = { 294, 295, 296, 297 },
		regions = { },
		triggers = { "GATHER_74", "ANY_MONSTER_DIE_75", "GATHER_142", "GATHER_143", "GATHER_144" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_74(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004016}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_74(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_75(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_75(context, evt)
	-- 创建id为298的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 298 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_142(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004016}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_142(context, evt)
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
function condition_EVENT_GATHER_143(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004016}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_143(context, evt)
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
function condition_EVENT_GATHER_144(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004016}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_144(context, evt)
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
