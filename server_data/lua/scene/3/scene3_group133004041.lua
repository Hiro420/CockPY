--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 98, monster_id = 20011201, pos = { x = 2455.5, y = 305.7, z = -333.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 14, drop_id = 1000100 },
	{ config_id = 99, monster_id = 20011301, pos = { x = 2450.5, y = 305.7, z = -334.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 14, drop_id = 1000100 },
	{ config_id = 100, monster_id = 20011201, pos = { x = 2453.2, y = 305.6, z = -338.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 14, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 165, gadget_id = 70900007, pos = { x = 2452.8, y = 305.7, z = -335.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, persistent = true },
	{ config_id = 166, gadget_id = 70211111, pos = { x = 2452.7, y = 305.8, z = -332.7 }, rot = { x = 0.0, y = 91.3, z = 355.8 }, level = 20, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_35", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35", action = "action_EVENT_GADGET_STATE_CHANGE_35" },
	{ name = "CHALLENGE_SUCCESS_36", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "41", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_36" },
	{ name = "CHALLENGE_FAIL_37", event = EventType.EVENT_CHALLENGE_FAIL, source = "41", condition = "", action = "action_EVENT_CHALLENGE_FAIL_37" }
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
		gadgets = { 165 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_35", "CHALLENGE_SUCCESS_36", "CHALLENGE_FAIL_37" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_35(context, evt)
	if 165 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_35(context, evt)
	-- 创建编号为41（该挑战的识别id),挑战内容为129的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 41, 129, 30, 133004041, 3, 0) then
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 99, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 100, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_36(context, evt)
	-- 创建id为166的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 166 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_37(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004041, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 165 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
