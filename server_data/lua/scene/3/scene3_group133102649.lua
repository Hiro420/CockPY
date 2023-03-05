--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 649007, monster_id = 20010301, pos = { x = 1887.3, y = 211.9, z = 759.3 }, rot = { x = 0.0, y = 287.4, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 649008, monster_id = 20010301, pos = { x = 1884.8, y = 212.3, z = 758.3 }, rot = { x = 0.0, y = 9.3, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 649009, monster_id = 20010301, pos = { x = 1885.6, y = 211.6, z = 761.8 }, rot = { x = 0.0, y = 224.2, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 649010, monster_id = 20010301, pos = { x = 1883.7, y = 211.6, z = 760.5 }, rot = { x = 0.0, y = 95.7, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 649001, gadget_id = 70220001, pos = { x = 1863.1, y = 215.5, z = 795.5 }, rot = { x = 0.4, y = 62.5, z = 333.2 }, level = 18 },
	{ config_id = 649002, gadget_id = 70220001, pos = { x = 1885.3, y = 212.0, z = 760.4 }, rot = { x = 10.3, y = 0.8, z = 7.3 }, level = 18 },
	{ config_id = 649003, gadget_id = 70220001, pos = { x = 1874.4, y = 210.4, z = 777.2 }, rot = { x = 356.0, y = 0.8, z = 358.1 }, level = 18 },
	{ config_id = 649005, gadget_id = 70210101, pos = { x = 1863.3, y = 215.7, z = 795.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜通用璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 649011, gadget_id = 70210101, pos = { x = 1874.6, y = 210.5, z = 777.2 }, rot = { x = 355.6, y = 327.6, z = 0.6 }, level = 18, drop_tag = "搜刮点解谜通用璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 649014, gadget_id = 70211111, pos = { x = 1889.2, y = 212.1, z = 752.3 }, rot = { x = 3.1, y = 337.6, z = 351.1 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_649004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_649004", action = "action_EVENT_ANY_GADGET_DIE_649004" },
	{ name = "ANY_GADGET_DIE_649006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_649006", action = "action_EVENT_ANY_GADGET_DIE_649006" },
	{ name = "ANY_GADGET_DIE_649012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_649012", action = "action_EVENT_ANY_GADGET_DIE_649012" },
	{ name = "ANY_MONSTER_DIE_649013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_649013", action = "action_EVENT_ANY_MONSTER_DIE_649013" }
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
		gadgets = { 649001, 649002, 649003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_649004", "ANY_GADGET_DIE_649006", "ANY_GADGET_DIE_649012", "ANY_MONSTER_DIE_649013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_649004(context, evt)
	if 649002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_649004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 649007, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 649008, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 649009, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 649010, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_649006(context, evt)
	if 649001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_649006(context, evt)
	-- 创建id为649005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 649005 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_649012(context, evt)
	if 649003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_649012(context, evt)
	-- 创建id为649011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 649011 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_649013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_649013(context, evt)
	-- 创建id为649014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 649014 }) then
	  return -1
	end
	
	return 0
end
