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
	{ config_id = 3001, gadget_id = 70350020, pos = { x = 83.9, y = 42.6, z = 112.0 }, rot = { x = 288.8, y = 30.7, z = 133.8 }, level = 1 },
	{ config_id = 3002, gadget_id = 70350020, pos = { x = 83.1, y = 39.8, z = 127.7 }, rot = { x = 281.2, y = 10.6, z = 17.8 }, level = 1 },
	{ config_id = 3003, gadget_id = 70350030, pos = { x = 136.9, y = 40.2, z = 126.4 }, rot = { x = 19.2, y = 280.6, z = 4.5 }, level = 1 },
	{ config_id = 3004, gadget_id = 70220013, pos = { x = 52.5, y = 42.0, z = 113.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3005, gadget_id = 70220013, pos = { x = 51.2, y = 42.0, z = 111.1 }, rot = { x = 0.0, y = 329.3, z = 0.0 }, level = 1 },
	{ config_id = 3006, gadget_id = 70350029, pos = { x = 83.6, y = 39.5, z = 111.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3007, gadget_id = 70350030, pos = { x = 136.8, y = 40.0, z = 120.7 }, rot = { x = 271.4, y = 41.0, z = 359.7 }, level = 1 },
	{ config_id = 3008, gadget_id = 70350030, pos = { x = 138.2, y = 39.8, z = 123.4 }, rot = { x = 292.2, y = 98.7, z = 45.9 }, level = 1 },
	{ config_id = 3009, gadget_id = 70220025, pos = { x = 51.4, y = 42.1, z = 111.4 }, rot = { x = 273.7, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3010, gadget_id = 70310001, pos = { x = 148.3, y = 39.6, z = 121.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3011, gadget_id = 70350002, pos = { x = 174.1, y = 42.0, z = 120.9 }, rot = { x = 0.0, y = 269.1, z = 0.0 }, level = 1 },
	{ config_id = 3013, gadget_id = 70900201, pos = { x = 178.4, y = 39.5, z = 122.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3012, shape = RegionShape.CUBIC, size = { x = 5.0, y = 30.0, z = 30.0 }, pos = { x = 154.7, y = 41.5, z = 120.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_3012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3012", action = "action_EVENT_ENTER_REGION_3012", trigger_count = 0 }
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011 },
		regions = { 3012 },
		triggers = { "ENTER_REGION_3012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3013 },
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
function condition_EVENT_ENTER_REGION_3012(context, evt)
	if evt.param1 ~= 3012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3012(context, evt)
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
