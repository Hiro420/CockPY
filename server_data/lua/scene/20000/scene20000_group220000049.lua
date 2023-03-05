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
	{ config_id = 224, gadget_id = 70900206, pos = { x = 644.9, y = 5.8, z = 367.4 }, rot = { x = 0.0, y = 133.2, z = 0.0 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 225, gadget_id = 70900206, pos = { x = 654.2, y = 5.8, z = 345.8 }, rot = { x = 0.0, y = 133.2, z = 0.0 }, level = 1, state = GadgetState.GearAction2 },
	{ config_id = 226, gadget_id = 70900206, pos = { x = 661.8, y = 5.8, z = 368.6 }, rot = { x = 0.0, y = 133.2, z = 0.0 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 227, gadget_id = 71000004, pos = { x = 635.0, y = 5.8, z = 358.1 }, rot = { x = 0.0, y = 267.3, z = 0.0 }, level = 1 },
	{ config_id = 228, gadget_id = 71000004, pos = { x = 644.5, y = 5.8, z = 365.6 }, rot = { x = 0.0, y = 267.3, z = 0.0 }, level = 1 },
	{ config_id = 229, gadget_id = 71000004, pos = { x = 652.6, y = 5.8, z = 347.1 }, rot = { x = 0.0, y = 267.3, z = 0.0 }, level = 1 },
	{ config_id = 230, gadget_id = 71000004, pos = { x = 660.7, y = 5.8, z = 367.8 }, rot = { x = 0.0, y = 267.3, z = 0.0 }, level = 1 },
	{ config_id = 237, gadget_id = 71000004, pos = { x = 652.7, y = 5.8, z = 357.1 }, rot = { x = 0.0, y = 267.3, z = 0.0 }, level = 1 },
	{ config_id = 246, gadget_id = 71000004, pos = { x = 636.2, y = 5.8, z = 363.0 }, rot = { x = 0.0, y = 267.3, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 81, shape = RegionShape.SPHERE, radius = 5, pos = { x = 671.0, y = 5.9, z = 361.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_81", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81", action = "action_EVENT_ENTER_REGION_81", forbid_guest = false }
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
	rand_suite = true,
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
		monsters = { },
		gadgets = { 224, 225, 226, 227, 228, 229, 230, 237, 246 },
		regions = { 81 },
		triggers = { "ENTER_REGION_81" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_81(context, evt)
	if evt.param1 ~= 81 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81(context, evt)
	-- 将configid为 224 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 224, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 225 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 225, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 226 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
