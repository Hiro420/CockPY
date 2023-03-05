--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 328007, monster_id = 20011401, pos = { x = 1682.5, y = 256.6, z = -91.5 }, rot = { x = 349.0, y = 359.1, z = 9.5 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 328008, monster_id = 20011401, pos = { x = 1685.2, y = 258.5, z = -85.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 328009, monster_id = 20011401, pos = { x = 1677.6, y = 257.2, z = -85.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 328001, gadget_id = 70220008, pos = { x = 1676.4, y = 257.1, z = -85.7 }, rot = { x = 335.9, y = 21.8, z = 348.2 }, level = 16, isOneoff = true, persistent = true },
	{ config_id = 328002, gadget_id = 70220008, pos = { x = 1686.2, y = 258.8, z = -84.6 }, rot = { x = 343.6, y = 22.4, z = 3.4 }, level = 16, isOneoff = true, persistent = true },
	{ config_id = 328003, gadget_id = 70220008, pos = { x = 1682.6, y = 256.4, z = -92.6 }, rot = { x = 346.2, y = 22.5, z = 4.4 }, level = 16, isOneoff = true, persistent = true },
	{ config_id = 328004, gadget_id = 70211011, pos = { x = 1681.9, y = 259.7, z = -86.3 }, rot = { x = 4.5, y = 1.4, z = 7.1 }, level = 16, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_328005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_328005", action = "action_EVENT_ANY_GADGET_DIE_328005" },
	{ name = "ANY_MONSTER_DIE_328010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_328010", action = "action_EVENT_ANY_MONSTER_DIE_328010" }
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
		gadgets = { 328001, 328002, 328003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_328005", "ANY_MONSTER_DIE_328010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_328005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133002328}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_328005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328007, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328008, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328009, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_328010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_328010(context, evt)
	-- 创建id为328004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 328004 }) then
	  return -1
	end
	
	return 0
end
