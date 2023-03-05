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
	{ config_id = 240, gadget_id = 70900009, pos = { x = 440.3, y = 200.3, z = -422.2 }, rot = { x = 0.0, y = 56.2, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 241, gadget_id = 70900201, pos = { x = 456.1, y = 256.1, z = -418.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 242, gadget_id = 70211111, pos = { x = 457.1, y = 256.8, z = -418.2 }, rot = { x = 1.9, y = 64.1, z = 8.0 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 142, shape = RegionShape.SPHERE, radius = 2, pos = { x = 456.5, y = 256.5, z = -418.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_142", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_142", action = "", trigger_count = 0, tag = "9" },
	{ name = "GADGET_STATE_CHANGE_143", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_143", action = "action_EVENT_GADGET_STATE_CHANGE_143", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_144", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "667", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_144" },
	{ name = "CHALLENGE_FAIL_145", event = EventType.EVENT_CHALLENGE_FAIL, source = "667", condition = "", action = "action_EVENT_CHALLENGE_FAIL_145", trigger_count = 0 }
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
		gadgets = { 240 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_143", "CHALLENGE_SUCCESS_144", "CHALLENGE_FAIL_145" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 241 },
		regions = { 142 },
		triggers = { "ENTER_REGION_142" },
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
function condition_EVENT_ENTER_REGION_142(context, evt)
	if evt.param1 ~= 142 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_143(context, evt)
	if 240 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_143(context, evt)
	-- 创建编号为667（该挑战的识别id),挑战内容为135的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 667, 135, 48, 4, 9, 1) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（454，228，-420），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=454, y=228, z=-420}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105094, 2)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_144(context, evt)
	-- 创建id为242的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 242 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 241 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_145(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105094, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 240 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 240, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
