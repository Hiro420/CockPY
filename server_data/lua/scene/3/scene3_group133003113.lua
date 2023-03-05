--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2546, gadget_id = 70690001, pos = { x = 2514.1, y = 346.2, z = -1684.2 }, rot = { x = 0.0, y = 320.1, z = 0.0 }, level = 10 },
	{ config_id = 2547, gadget_id = 70690001, pos = { x = 2508.3, y = 345.6, z = -1678.0 }, rot = { x = 0.0, y = 317.2, z = 0.0 }, level = 10 },
	{ config_id = 2548, gadget_id = 70690001, pos = { x = 2476.8, y = 339.2, z = -1648.2 }, rot = { x = 1.7, y = 321.0, z = 359.6 }, level = 10 },
	{ config_id = 2549, gadget_id = 70690001, pos = { x = 2452.3, y = 327.6, z = -1622.8 }, rot = { x = 30.6, y = 308.5, z = 345.7 }, level = 10 },
	{ config_id = 2550, gadget_id = 70690001, pos = { x = 2426.4, y = 315.5, z = -1597.0 }, rot = { x = 0.0, y = 319.6, z = 0.0 }, level = 10 },
	{ config_id = 2551, gadget_id = 70690001, pos = { x = 2379.2, y = 294.3, z = -1548.3 }, rot = { x = 11.9, y = 316.9, z = 356.8 }, level = 10 },
	{ config_id = 2558, gadget_id = 70211111, pos = { x = 2291.5, y = 248.0, z = -1468.1 }, rot = { x = 352.4, y = 165.2, z = 3.9 }, level = 10, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 2578, gadget_id = 70900201, pos = { x = 2291.2, y = 247.8, z = -1467.2 }, rot = { x = 0.0, y = 114.4, z = 0.0 }, level = 10 },
	{ config_id = 2614, gadget_id = 70900039, pos = { x = 2521.4, y = 345.3, z = -1694.1 }, rot = { x = 0.0, y = 30.4, z = 356.2 }, level = 10, persistent = true }
}

-- 区域
regions = {
	{ config_id = 98, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2291.7, y = 247.8, z = -1467.0 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_91", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91", action = "action_EVENT_GADGET_STATE_CHANGE_91", trigger_count = 0, tlog_tag = "神殿_飞行挑战_顶峰_开始" },
	{ name = "ENTER_REGION_98", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_98", action = "action_EVENT_ENTER_REGION_98", trigger_count = 0, tag = "6" },
	{ name = "CHALLENGE_FAIL_115", event = EventType.EVENT_CHALLENGE_FAIL, source = "113", condition = "condition_EVENT_CHALLENGE_FAIL_115", action = "action_EVENT_CHALLENGE_FAIL_115", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_116", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "113", condition = "condition_EVENT_CHALLENGE_SUCCESS_116", action = "action_EVENT_CHALLENGE_SUCCESS_116", tlog_tag = "神殿_飞行挑战_顶峰_成功" }
}

-- 变量
variables = {
	{ name = "challenge", value = 1, no_refresh = false }
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
		gadgets = { 2614 },
		regions = { 98 },
		triggers = { "GADGET_STATE_CHANGE_91", "ENTER_REGION_98", "CHALLENGE_FAIL_115", "CHALLENGE_SUCCESS_116" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2614 },
		regions = { 98 },
		triggers = { "ENTER_REGION_98", "CHALLENGE_FAIL_115", "CHALLENGE_SUCCESS_116" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_FAIL_115", "CHALLENGE_SUCCESS_116" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 2546, 2547, 2548, 2549, 2550, 2551, 2578 },
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
function condition_EVENT_GADGET_STATE_CHANGE_91(context, evt)
	if 2614 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"challenge"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003113, 4)
	
	-- 触发镜头注目，注目位置为坐标（2514，346，-1684），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2514, y=346, z=-1684}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 变量"challenge"赋值为0
	ScriptLib.SetGroupVariableValue(context, "challenge", 0)
	
	-- 创建编号为113（该挑战的识别id),挑战内容为127的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 113, 127, 60, 4, 6, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_98(context, evt)
	if evt.param1 ~= 98 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"challenge"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_98(context, evt)
	-- 变量"challenge"赋值为0
	ScriptLib.SetGroupVariableValue(context, "challenge", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_FAIL_115(context, evt)
	-- 判断变量"challenge"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_115(context, evt)
	-- 将本组内变量名为 "challenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003113, 4)
	
	-- 将configid为 2614 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2614, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_SUCCESS_116(context, evt)
	-- 判断变量"challenge"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_116(context, evt)
	-- 创建id为2558的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2558 }) then
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003113, 4)
	
	return 0
end
