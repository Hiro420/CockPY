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
	{ config_id = 241, gadget_id = 70350004, pos = { x = 746.9, y = 5.7, z = 361.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 243, gadget_id = 70900216, pos = { x = 777.4, y = 5.2, z = 370.2 }, rot = { x = 0.0, y = 299.2, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 82, shape = RegionShape.SPHERE, radius = 5, pos = { x = 743.3, y = 6.0, z = 360.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_82", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82", action = "action_EVENT_ENTER_REGION_82", forbid_guest = false }
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
		gadgets = { 241 },
		regions = { 82 },
		triggers = { "ENTER_REGION_82" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_82(context, evt)
	if evt.param1 ~= 82 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82(context, evt)
	-- 将configid为 241 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
