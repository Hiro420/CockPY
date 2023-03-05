--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20010801, pos = { x = -190.7, y = 22.0, z = 41.3 }, rot = { x = 0.0, y = 88.8, z = 0.0 }, level = 1 },
	{ config_id = 5018, monster_id = 20010801, pos = { x = -197.7, y = 21.5, z = 52.3 }, rot = { x = 0.0, y = 136.2, z = 0.0 }, level = 1, pose_id = 901 },
	{ config_id = 5019, monster_id = 20010801, pos = { x = -186.5, y = 21.5, z = 68.9 }, rot = { x = 0.0, y = 136.2, z = 0.0 }, level = 1, pose_id = 901 },
	{ config_id = 5021, monster_id = 20010801, pos = { x = -201.0, y = 21.5, z = 83.4 }, rot = { x = 0.0, y = 136.2, z = 0.0 }, level = 1, pose_id = 901 },
	{ config_id = 5022, monster_id = 20010801, pos = { x = -191.5, y = 22.8, z = 106.9 }, rot = { x = 0.0, y = 136.2, z = 0.0 }, level = 1, pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5002, gadget_id = 70350019, pos = { x = -192.8, y = 21.5, z = 43.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5003, gadget_id = 70350019, pos = { x = -189.9, y = 21.5, z = 62.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5004, gadget_id = 70350019, pos = { x = -196.0, y = 21.5, z = 75.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5005, gadget_id = 70350019, pos = { x = -186.8, y = 21.5, z = 90.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5006, gadget_id = 70350019, pos = { x = -196.6, y = 21.8, z = 104.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5009, gadget_id = 70350019, pos = { x = -194.4, y = 21.5, z = 52.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5010, gadget_id = 70350019, pos = { x = -179.9, y = 25.2, z = 128.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5012, gadget_id = 70350019, pos = { x = -190.3, y = 25.3, z = 118.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5013, gadget_id = 70350019, pos = { x = -196.3, y = 25.3, z = 130.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 5007, shape = RegionShape.SPHERE, radius = 10.27, pos = { x = -190.2, y = 21.7, z = 111.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_5007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5007", action = "action_EVENT_ENTER_REGION_5007", forbid_guest = false }
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
		monsters = { 5001, 5018, 5019, 5021, 5022 },
		gadgets = { 5002, 5003, 5004, 5005, 5006, 5009, 5010, 5012, 5013 },
		regions = { 5007 },
		triggers = { "ENTER_REGION_5007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5007(context, evt)
	if evt.param1 ~= 5007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5007(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005005, monsters = {}, gadgets = {5002,5003,5004,5005} }) then
			return -1
		end
	
	return 0
end
