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
	{ config_id = 360, gadget_id = 70690006, pos = { x = 2758.5, y = 240.4, z = 393.6 }, rot = { x = 0.0, y = 132.1, z = 0.0 }, level = 23 },
	{ config_id = 361, gadget_id = 70690001, pos = { x = 2756.1, y = 269.0, z = 387.3 }, rot = { x = 0.0, y = 15.4, z = 0.0 }, level = 23 },
	{ config_id = 362, gadget_id = 70690001, pos = { x = 2749.1, y = 266.5, z = 359.7 }, rot = { x = 0.0, y = 19.2, z = 0.0 }, level = 23 },
	{ config_id = 363, gadget_id = 70690001, pos = { x = 2736.8, y = 264.0, z = 329.7 }, rot = { x = 0.0, y = 19.1, z = 0.0 }, level = 23 },
	{ config_id = 364, gadget_id = 70690001, pos = { x = 2719.9, y = 261.5, z = 292.4 }, rot = { x = 0.0, y = 20.6, z = 0.0 }, level = 23 },
	{ config_id = 365, gadget_id = 70690001, pos = { x = 2708.9, y = 260.7, z = 265.8 }, rot = { x = 0.0, y = 25.0, z = 0.0 }, level = 23 },
	{ config_id = 383, gadget_id = 70900201, pos = { x = 2693.5, y = 239.5, z = 232.6 }, rot = { x = 0.0, y = 76.9, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
	{ config_id = 46, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2693.8, y = 238.4, z = 233.4 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_43", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_43", action = "action_EVENT_GADGET_CREATE_43", tlog_tag = "风龙_44_风场挑战_开始" },
	{ name = "CHALLENGE_FAIL_44", event = EventType.EVENT_CHALLENGE_FAIL, source = "221", condition = "", action = "action_EVENT_CHALLENGE_FAIL_44", tlog_tag = "风龙_44_风场挑战_失败" },
	{ name = "CHALLENGE_SUCCESS_45", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "221", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_45", tlog_tag = "风龙_44_风场挑战_成功" },
	{ name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "", tag = "906" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 360, 361, 362, 363, 364, 365, 383 },
		regions = { 46 },
		triggers = { "GADGET_CREATE_43", "CHALLENGE_FAIL_44", "CHALLENGE_SUCCESS_45", "ENTER_REGION_46" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_43(context, evt)
	if 360 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_43(context, evt)
	-- 触发镜头注目，注目位置为坐标（2694，238，233），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2694, y=238, z=233}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 创建编号为221（该挑战的识别id),挑战内容为149的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 221, 149, 50, 4, 906, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_44(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007221, suite = 1 }) then
			return -1
		end
	
	-- 改变指定group组133007044中， configid为370的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007044, 370, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_45(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007222, suite = 2 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007221, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_46(context, evt)
	if evt.param1 ~= 46 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
