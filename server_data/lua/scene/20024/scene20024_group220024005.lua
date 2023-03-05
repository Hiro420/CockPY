--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17, monster_id = 21010301, pos = { x = 187.8, y = 57.0, z = 384.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 18, monster_id = 21010301, pos = { x = 195.2, y = 57.0, z = 384.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 42, monster_id = 24010101, pos = { x = 191.4, y = 59.0, z = 399.9 }, rot = { x = 0.0, y = 169.7, z = 0.0 }, level = 1, disableWander = true, affix = { 1008 }, isElite = true, pose_id = 100 },
	{ config_id = 49, monster_id = 22010201, pos = { x = 191.6, y = 57.0, z = 388.7 }, rot = { x = 0.0, y = 0.9, z = 0.0 }, level = 1, pose_id = 9013 },
	{ config_id = 50, monster_id = 21030101, pos = { x = 181.7, y = 57.1, z = 383.7 }, rot = { x = 0.0, y = 107.2, z = 0.0 }, level = 1, pose_id = 9012 },
	{ config_id = 51, monster_id = 21030101, pos = { x = 201.4, y = 57.0, z = 383.1 }, rot = { x = 0.0, y = 273.8, z = 0.0 }, level = 1, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 90, gadget_id = 70220005, pos = { x = 201.0, y = 57.0, z = 370.0 }, rot = { x = 0.0, y = 293.6, z = 0.0 }, level = 1 },
	{ config_id = 91, gadget_id = 70220005, pos = { x = 200.8, y = 57.0, z = 379.1 }, rot = { x = 0.0, y = 276.6, z = 0.0 }, level = 1 },
	{ config_id = 92, gadget_id = 70220005, pos = { x = 200.4, y = 57.0, z = 387.7 }, rot = { x = 0.0, y = 275.7, z = 0.0 }, level = 1 },
	{ config_id = 93, gadget_id = 70220005, pos = { x = 183.2, y = 57.0, z = 388.6 }, rot = { x = 0.0, y = 113.7, z = 0.0 }, level = 1 },
	{ config_id = 94, gadget_id = 70220005, pos = { x = 182.8, y = 57.0, z = 379.4 }, rot = { x = 0.0, y = 110.3, z = 0.0 }, level = 1 },
	{ config_id = 95, gadget_id = 70220005, pos = { x = 183.0, y = 57.0, z = 369.9 }, rot = { x = 0.0, y = 101.1, z = 0.0 }, level = 1 },
	{ config_id = 96, gadget_id = 70220023, pos = { x = 181.3, y = 57.0, z = 374.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 97, gadget_id = 70220023, pos = { x = 201.9, y = 57.0, z = 374.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 98, gadget_id = 70220023, pos = { x = 201.2, y = 57.0, z = 384.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 99, gadget_id = 70220023, pos = { x = 180.7, y = 57.0, z = 384.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 24, shape = RegionShape.CUBIC, size = { x = 50.0, y = 10.0, z = 2.0 }, pos = { x = 195.4, y = 60.9, z = 358.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_24", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24", action = "action_EVENT_ENTER_REGION_24", forbid_guest = false }
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
		monsters = { 17, 42, 49, 50, 51 },
		gadgets = { 90, 91, 92, 93, 94, 95, 96, 97, 98, 99 },
		regions = { 24 },
		triggers = { "ENTER_REGION_24" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_24(context, evt)
	if evt.param1 ~= 24 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24(context, evt)
	-- 改变指定group组220024008中， configid为83的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024008, 83, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end
