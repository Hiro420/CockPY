--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1425, monster_id = 28030401, pos = { x = 2209.1, y = 229.6, z = -1360.3 }, rot = { x = 0.0, y = 68.4, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1426, monster_id = 28030402, pos = { x = 2211.9, y = 230.1, z = -1358.2 }, rot = { x = 0.0, y = 282.2, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1427, monster_id = 28030402, pos = { x = 2210.6, y = 230.1, z = -1357.0 }, rot = { x = 0.0, y = 351.3, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1428, monster_id = 28020102, pos = { x = 2231.2, y = 234.0, z = -1370.7 }, rot = { x = 0.0, y = 184.6, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 427001, monster_id = 20010301, pos = { x = 2231.1, y = 235.8, z = -1372.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4092, gadget_id = 70220008, pos = { x = 2231.2, y = 234.1, z = -1372.3 }, rot = { x = 0.0, y = 2.1, z = 0.0 }, level = 5, isOneoff = true },
	{ config_id = 427004, gadget_id = 70211001, pos = { x = 2234.0, y = 234.2, z = -1373.9 }, rot = { x = 0.0, y = 316.1, z = 0.0 }, level = 5, drop_tag = "战斗低级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_427002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_427002", action = "action_EVENT_ANY_GADGET_DIE_427002" },
	{ name = "ANY_MONSTER_DIE_427003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_427003", action = "action_EVENT_ANY_MONSTER_DIE_427003" }
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
		monsters = { 1425, 1426, 1427, 1428 },
		gadgets = { 4092 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_427002", "ANY_MONSTER_DIE_427003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_427002(context, evt)
	if 4092 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_427002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 427001, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_427003(context, evt)
	if 427001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_427003(context, evt)
	-- 创建id为427004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427004 }) then
	  return -1
	end
	
	return 0
end
