--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011301, pos = { x = 61.0, y = -1.0, z = 30.5 }, rot = { x = 0.0, y = 164.5, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 20011201, pos = { x = 60.4, y = -1.0, z = 36.7 }, rot = { x = 0.0, y = 177.4, z = 0.0 }, level = 1 },
	{ config_id = 3003, monster_id = 20011201, pos = { x = 59.3, y = -1.0, z = 28.4 }, rot = { x = 0.0, y = 97.9, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3004, gadget_id = 70900013, pos = { x = 71.7, y = -2.2, z = 33.1 }, rot = { x = 3.9, y = 326.0, z = 180.0 }, level = 1, state = GadgetState.GearAction1, arguments = { 0, 0, 0 } },
	{ config_id = 3005, gadget_id = 70900013, pos = { x = 87.4, y = -2.3, z = 33.2 }, rot = { x = 0.0, y = 0.0, z = 180.0 }, level = 1, state = GadgetState.GearAction1, arguments = { 0, 0, 0 } },
	{ config_id = 3006, gadget_id = 70900013, pos = { x = 102.3, y = -2.3, z = 33.0 }, rot = { x = 0.0, y = 0.0, z = 180.0 }, level = 1, state = GadgetState.GearAction1, arguments = { 0, 0, 0 } },
	{ config_id = 3007, gadget_id = 70380009, pos = { x = 72.3, y = -1.4, z = 33.0 }, rot = { x = 0.0, y = 180.0, z = 180.0 }, level = 1, route_id = 11, start_route = false },
	{ config_id = 3008, gadget_id = 70380009, pos = { x = 87.3, y = -1.4, z = 33.0 }, rot = { x = 0.0, y = 180.0, z = 180.0 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 3009, gadget_id = 70380009, pos = { x = 102.2, y = -1.3, z = 32.9 }, rot = { x = 0.0, y = 180.0, z = 180.0 }, level = 1, route_id = 7, start_route = false },
	{ config_id = 3010, gadget_id = 70211001, pos = { x = 59.0, y = -1.0, z = 26.6 }, rot = { x = 0.0, y = 357.9, z = 0.0 }, level = 10, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
	{ config_id = 3, shape = RegionShape.CUBIC, size = { x = 16.2, y = 7.2, z = 27.4 }, pos = { x = 56.3, y = -1.0, z = 33.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_3", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3", action = "action_EVENT_ENTER_REGION_3" }
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
		gadgets = { 3004, 3005, 3006, 3007, 3008, 3009, 3010 },
		regions = { 3 },
		triggers = { "ENTER_REGION_3" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3(context, evt)
	if evt.param1 ~= 3 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3(context, evt)
	
	-- 将configid为 33 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3005, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 34 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3006, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 5 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStart) then
			return -1
		end 
	
	-- 启动移动平台
	ScriptLib.StartPlatform(context, 3007) 
	
	
	-- 启动移动平台
	ScriptLib.StartPlatform(context, 3008)
	
	
	-- 启动移动平台
	ScriptLib.StartPlatform(context, 3009) 
	
	
	
	return 0
end
