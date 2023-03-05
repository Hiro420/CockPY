--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265, monster_id = 22010101, pos = { x = 389.2, y = 208.1, z = -106.7 }, rot = { x = 0.0, y = 55.7, z = 0.0 }, level = 21, drop_tag = "深渊法师", affix = { 1001 }, isElite = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 411, gadget_id = 70211011, pos = { x = 389.3, y = 207.6, z = -106.4 }, rot = { x = 0.0, y = 55.3, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 412, gadget_id = 70300107, pos = { x = 388.0, y = 207.6, z = -107.2 }, rot = { x = 0.5, y = 331.9, z = 358.5 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_196", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196", action = "action_EVENT_ANY_MONSTER_DIE_196" },
	{ name = "GADGET_STATE_CHANGE_154001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_154001", action = "action_EVENT_GADGET_STATE_CHANGE_154001" }
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
		gadgets = { 412 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_154001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 265 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_196" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_196(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196(context, evt)
	-- 创建id为411的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 411 }) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_154001(context, evt)
	if 412 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_154001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105154, 2)
	
	return 0
end
