--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 303001, monster_id = 20010901, pos = { x = 1566.1, y = 241.7, z = -108.7 }, rot = { x = 341.0, y = 359.6, z = 2.7 }, level = 15, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 303002, gadget_id = 70900288, pos = { x = 1566.1, y = 241.7, z = -108.7 }, rot = { x = 347.3, y = 318.2, z = 14.5 }, level = 16, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 303003, gadget_id = 70211101, pos = { x = 1567.4, y = 241.8, z = -108.5 }, rot = { x = 341.0, y = 0.3, z = 6.8 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_303004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303004", action = "action_EVENT_GADGET_STATE_CHANGE_303004" },
	{ name = "ANY_MONSTER_DIE_303005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_303005", action = "action_EVENT_ANY_MONSTER_DIE_303005" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 303002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_303004", "ANY_MONSTER_DIE_303005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_303004(context, evt)
	if 303002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_303004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 303001, delay_time = 0 }) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_303005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_303005(context, evt)
	-- 创建id为303003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 303003 }) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      return -1
	    end
	
	return 0
end
