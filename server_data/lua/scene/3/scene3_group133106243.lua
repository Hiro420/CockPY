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
	{ config_id = 243001, gadget_id = 70900039, pos = { x = -862.0, y = 194.9, z = 1289.7 }, rot = { x = 0.0, y = 263.7, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 243002, gadget_id = 70690001, pos = { x = -855.2, y = 196.0, z = 1287.1 }, rot = { x = 0.0, y = 87.5, z = 0.0 }, level = 32 },
	{ config_id = 243003, gadget_id = 70690006, pos = { x = -845.6, y = 170.2, z = 1289.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 243004, gadget_id = 70690001, pos = { x = -827.6, y = 193.7, z = 1301.5 }, rot = { x = 0.0, y = 19.4, z = 0.0 }, level = 32 },
	{ config_id = 243005, gadget_id = 70690001, pos = { x = -825.9, y = 194.3, z = 1310.8 }, rot = { x = 0.0, y = 338.9, z = 0.0 }, level = 32 },
	{ config_id = 243007, gadget_id = 70690001, pos = { x = -832.6, y = 192.3, z = 1320.4 }, rot = { x = 0.0, y = 290.0, z = 0.0 }, level = 32 },
	{ config_id = 243008, gadget_id = 70690006, pos = { x = -842.5, y = 156.7, z = 1324.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 243009, gadget_id = 70690001, pos = { x = -853.8, y = 191.7, z = 1326.3 }, rot = { x = 0.0, y = 272.6, z = 0.0 }, level = 32 },
	{ config_id = 243010, gadget_id = 70690006, pos = { x = -848.4, y = 164.5, z = 1325.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 243011, gadget_id = 70690001, pos = { x = -872.6, y = 190.9, z = 1327.3 }, rot = { x = 337.3, y = 272.6, z = 0.0 }, level = 32 },
	{ config_id = 243013, gadget_id = 70690001, pos = { x = -890.7, y = 193.3, z = 1325.2 }, rot = { x = 0.0, y = 246.5, z = 0.0 }, level = 32 },
	{ config_id = 243015, gadget_id = 70690001, pos = { x = -906.5, y = 194.6, z = 1312.4 }, rot = { x = 0.0, y = 208.1, z = 0.0 }, level = 32 },
	{ config_id = 243017, gadget_id = 70690001, pos = { x = -909.4, y = 193.6, z = 1298.5 }, rot = { x = 0.0, y = 176.2, z = 0.0 }, level = 32 },
	{ config_id = 243018, gadget_id = 70690001, pos = { x = -900.1, y = 196.6, z = 1282.3 }, rot = { x = 0.0, y = 89.7, z = 0.0 }, level = 32 },
	{ config_id = 243019, gadget_id = 70690001, pos = { x = -892.5, y = 196.5, z = 1281.7 }, rot = { x = 0.0, y = 83.0, z = 0.0 }, level = 32 },
	{ config_id = 243020, gadget_id = 70690006, pos = { x = -911.5, y = 169.0, z = 1283.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 243021, gadget_id = 70690006, pos = { x = -913.1, y = 191.9, z = 1282.3 }, rot = { x = 3.6, y = 2.0, z = 284.0 }, level = 32 },
	{ config_id = 243022, gadget_id = 70900201, pos = { x = -866.3, y = 194.9, z = 1289.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 243028, gadget_id = 70211121, pos = { x = -863.9, y = 194.9, z = 1289.3 }, rot = { x = 0.0, y = 265.4, z = 0.0 }, level = 32, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 243023, shape = RegionShape.SPHERE, radius = 8.8, pos = { x = -909.6, y = 191.7, z = 1295.8 } },
	{ config_id = 243024, shape = RegionShape.SPHERE, radius = 5.9, pos = { x = -865.7, y = 196.3, z = 1289.8 } },
	{ config_id = 243029, shape = RegionShape.SPHERE, radius = 2.9, pos = { x = -855.8, y = 194.9, z = 1287.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_243023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243023", action = "action_EVENT_ENTER_REGION_243023" },
	{ name = "ENTER_REGION_243024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243024", action = "", tag = "666" },
	{ name = "GADGET_STATE_CHANGE_243025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243025", action = "action_EVENT_GADGET_STATE_CHANGE_243025", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_243026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_243026" },
	{ name = "CHALLENGE_FAIL_243027", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_243027", trigger_count = 0 },
	{ name = "ENTER_REGION_243029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243029", action = "action_EVENT_ENTER_REGION_243029" }
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
		gadgets = { 243001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_243025", "CHALLENGE_SUCCESS_243026", "CHALLENGE_FAIL_243027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 243002, 243003, 243004, 243005, 243007 },
		regions = { 243029 },
		triggers = { "ENTER_REGION_243029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 243008, 243009, 243010, 243011, 243013, 243015, 243017, 243018, 243019, 243020, 243021 },
		regions = { 243023 },
		triggers = { "ENTER_REGION_243023" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 243022 },
		regions = { 243024 },
		triggers = { "ENTER_REGION_243024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_243023(context, evt)
	if evt.param1 ~= 243023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106243, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_243024(context, evt)
	if evt.param1 ~= 243024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_243025(context, evt)
	if 243001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_243025(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为127的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 127, 60, 4, 666, 1) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106243, 2)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_243026(context, evt)
	-- 创建id为243028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243028 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 4)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_243027(context, evt)
	-- 将configid为 243001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243001, GadgetState.Default) then
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_243029(context, evt)
	if evt.param1 ~= 243029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106243, 3)
	
	return 0
end
