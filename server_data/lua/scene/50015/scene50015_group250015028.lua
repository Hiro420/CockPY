--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 20011201, pos = { x = 1556.3, y = 288.6, z = 690.3 }, rot = { x = 4.7, y = 260.6, z = 345.1 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28002, monster_id = 20011201, pos = { x = 1552.7, y = 287.2, z = 693.4 }, rot = { x = 350.8, y = 208.2, z = 347.3 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28003, monster_id = 20011201, pos = { x = 1551.3, y = 288.7, z = 687.6 }, rot = { x = 13.7, y = 304.3, z = 352.4 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28011, monster_id = 20011401, pos = { x = 1498.5, y = 252.2, z = 731.5 }, rot = { x = 353.7, y = 241.2, z = 7.7 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28013, monster_id = 20011401, pos = { x = 1496.2, y = 252.4, z = 731.0 }, rot = { x = 350.1, y = 294.8, z = 359.5 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28014, monster_id = 20011401, pos = { x = 1497.6, y = 252.6, z = 733.9 }, rot = { x = 1.1, y = 195.7, z = 9.9 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28015, monster_id = 20011401, pos = { x = 1495.3, y = 252.6, z = 733.4 }, rot = { x = 1.1, y = 195.7, z = 9.9 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28016, monster_id = 20010501, pos = { x = 1539.0, y = 272.5, z = 719.2 }, rot = { x = 0.0, y = 261.2, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28017, monster_id = 20010501, pos = { x = 1536.7, y = 273.6, z = 713.4 }, rot = { x = 2.1, y = 240.8, z = 346.2 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28018, monster_id = 20010501, pos = { x = 1535.1, y = 272.2, z = 718.8 }, rot = { x = 2.1, y = 240.8, z = 346.2 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28019, monster_id = 20010501, pos = { x = 1540.6, y = 274.0, z = 714.2 }, rot = { x = 2.1, y = 240.8, z = 346.2 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28004, gadget_id = 70360005, pos = { x = 1556.8, y = 290.5, z = 684.4 }, rot = { x = 15.3, y = 0.6, z = 4.7 }, level = 1 },
	{ config_id = 28005, gadget_id = 70360025, pos = { x = 1471.4, y = 261.8, z = 756.7 }, rot = { x = 12.7, y = 0.1, z = 1.1 }, level = 1 },
	{ config_id = 28006, gadget_id = 70900201, pos = { x = 1471.4, y = 261.8, z = 756.7 }, rot = { x = 12.7, y = 0.1, z = 1.1 }, level = 1 },
	{ config_id = 28012, gadget_id = 70300057, pos = { x = 1496.8, y = 252.4, z = 732.2 }, rot = { x = 356.5, y = 1.4, z = 350.7 }, level = 1 },
	{ config_id = 28020, gadget_id = 70300057, pos = { x = 1537.6, y = 273.0, z = 716.7 }, rot = { x = 356.5, y = 1.4, z = 350.7 }, level = 1 },
	{ config_id = 28021, gadget_id = 70220005, pos = { x = 1496.8, y = 252.4, z = 732.2 }, rot = { x = 356.5, y = 1.4, z = 350.7 }, level = 1 },
	{ config_id = 28022, gadget_id = 70300057, pos = { x = 1552.8, y = 288.0, z = 690.5 }, rot = { x = 356.5, y = 1.4, z = 350.7 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 28007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1471.4, y = 261.8, z = 756.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_28007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28007", action = "", tag = "666", forbid_guest = false },
	{ name = "CHALLENGE_SUCCESS_28008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_28008", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_28009", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_28009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_28010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28010", action = "action_EVENT_GADGET_STATE_CHANGE_28010", trigger_count = 0 }
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
		gadgets = { 28004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_28010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 28001, 28002, 28003, 28011, 28013, 28014, 28015, 28016, 28017, 28018, 28019 },
		gadgets = { 28005, 28006, 28012, 28020, 28021, 28022 },
		regions = { 28007 },
		triggers = { "ENTER_REGION_28007", "CHALLENGE_SUCCESS_28008", "CHALLENGE_FAIL_28009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_28007(context, evt)
	if evt.param1 ~= 28007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_28008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015028, 2)
	
	-- 将configid为 28004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_28009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015028, 2)
	
	-- 将configid为 28004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28010(context, evt)
	if 28004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015028, 2)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 15, 4, 666, 3) then
		return -1
	end
	
	return 0
end
