--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105, monster_id = 21010101, pos = { x = 29.7, y = -12.0, z = 667.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 611, gadget_id = 70900007, pos = { x = 32.6, y = -12.0, z = 664.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 612, gadget_id = 70211111, pos = { x = 32.4, y = -12.0, z = 669.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_172", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_172", action = "action_EVENT_GADGET_STATE_CHANGE_172" },
	{ name = "CHALLENGE_SUCCESS_173", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "41", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_173" },
	{ name = "CHALLENGE_FAIL_174", event = EventType.EVENT_CHALLENGE_FAIL, source = "41", condition = "", action = "action_EVENT_CHALLENGE_FAIL_174" }
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
	rand_suite = false,
	npcs = { }
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
		gadgets = { 611 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_172", "CHALLENGE_SUCCESS_173", "CHALLENGE_FAIL_174" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 105 },
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
function condition_EVENT_GADGET_STATE_CHANGE_172(context, evt)
	if 611 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_172(context, evt)
	-- 创建编号为41（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 41, 180, 60, 220000087, 1, 0) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220000087, 2)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_173(context, evt)
	-- 创建id为612的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 612 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_174(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220000087, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000087, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 611 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 611, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
