-- Trigger变量
local defs = {
	gadget_id_1 = 38,
	gadget_id_2 = 39,
	gadget_id_3 = 1492
}


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
	{ config_id = 1493, gadget_id = 70300004, pos = { x = 1980.2, y = 255.8, z = -529.2 }, rot = { x = 346.4, y = 159.8, z = 359.4 }, level = 10 },
	{ config_id = 1494, gadget_id = 70300005, pos = { x = 1980.2, y = 255.8, z = -529.2 }, rot = { x = 346.4, y = 159.8, z = 359.4 }, level = 10 },
	{ config_id = 1495, gadget_id = 70900201, pos = { x = 1980.2, y = 255.8, z = -529.2 }, rot = { x = 0.0, y = 119.1, z = 0.0 }, level = 10 },
	{ config_id = 1498, gadget_id = 70690001, pos = { x = 1965.6, y = 248.4, z = -509.2 }, rot = { x = 312.6, y = 102.6, z = 285.8 }, level = 10 },
	{ config_id = 1500, gadget_id = 70300013, pos = { x = 1973.7, y = 230.0, z = -481.3 }, rot = { x = 33.9, y = 207.1, z = 332.8 }, level = 10 },
	{ config_id = 1501, gadget_id = 70300013, pos = { x = 1946.4, y = 232.1, z = -502.4 }, rot = { x = 50.6, y = 74.1, z = 325.0 }, level = 10 }
}

-- 区域
regions = {
	{ config_id = 180, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1980.5, y = 255.9, z = -529.7 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_178", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_178", action = "action_EVENT_GADGET_CREATE_178", tlog_tag = "酒庄_171_醉汉峡飞行挑战_开始" },
	{ name = "ENTER_REGION_180", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180", action = "", tag = "171" },
	{ name = "CHALLENGE_SUCCESS_181", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "171", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_181", tlog_tag = "酒庄_171_醉汉峡飞行挑战_成功" },
	{ name = "CHALLENGE_FAIL_182", event = EventType.EVENT_CHALLENGE_FAIL, source = "171", condition = "", action = "action_EVENT_CHALLENGE_FAIL_182", tlog_tag = "酒庄_171_醉汉峡飞行挑战_失败" },
	{ name = "ANY_GADGET_DIE_183", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_183", action = "action_EVENT_ANY_GADGET_DIE_183" },
	{ name = "ANY_GADGET_DIE_184", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_184", action = "action_EVENT_ANY_GADGET_DIE_184" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1493, 1495, 1498, 1500, 1501 },
		regions = { 180 },
		triggers = { "GADGET_CREATE_178", "ENTER_REGION_180", "CHALLENGE_SUCCESS_181", "CHALLENGE_FAIL_182", "ANY_GADGET_DIE_183", "ANY_GADGET_DIE_184" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_178(context, evt)
	if 1493 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_178(context, evt)
	-- 触发镜头注目，注目位置为坐标（1980，256，-529），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1980, y=256, z=-529}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 创建编号为171（该挑战的识别id),挑战内容为135的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 171, 135, 30, 4, 171, 1) then
		return -1
	end
	
	-- 解锁目标38
	if 0 ~= ScriptLib.UnlockForce(context, 38) then
		return -1
	end
	
	-- 解锁目标39
	if 0 ~= ScriptLib.UnlockForce(context, 39) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180(context, evt)
	if evt.param1 ~= 180 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_181(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002172, suite = 2 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002171, suite = 1 }) then
			return -1
		end
	
	-- 锁定风场目标38
	ScriptLib.LockForce(context, defs.gadget_id_1) 
	
	-- 锁定风场目标39
	ScriptLib.LockForce(context, defs.gadget_id_2)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_182(context, evt)
	-- 锁定风场目标38
	ScriptLib.LockForce(context, defs.gadget_id_1)
	
	ScriptLib.LockForce(context, defs.gadget_id_2)
	
	-- 改变指定group组133002069中， configid为1492的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133002069, defs.gadget_id_3, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002171, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_183(context, evt)
	if 1500 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_183(context, evt)
	-- 锁定风场目标38
	if 0 ~= ScriptLib.LockForce(context, 38) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_184(context, evt)
	if 1501 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_184(context, evt)
	-- 锁定风场目标39
	if 0 ~= ScriptLib.LockForce(context, 39) then
		return -1
	end
	
	return 0
end
