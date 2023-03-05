--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13, monster_id = 21010701, pos = { x = 254.1, y = -10.3, z = 205.2 }, rot = { x = 0.0, y = 177.4, z = 0.0 }, level = 10 },
	{ config_id = 14, monster_id = 21010701, pos = { x = 255.1, y = -10.3, z = 203.2 }, rot = { x = 0.0, y = 177.8, z = 0.0 }, level = 10 },
	{ config_id = 15, monster_id = 21010701, pos = { x = 256.3, y = -10.3, z = 204.7 }, rot = { x = 0.0, y = 198.2, z = 0.0 }, level = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308, gadget_id = 70350004, pos = { x = 255.2, y = -10.3, z = 201.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 309, gadget_id = 70900208, pos = { x = 253.4, y = -10.3, z = 190.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 310, gadget_id = 70900208, pos = { x = 256.9, y = -10.3, z = 190.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 311, gadget_id = 70900208, pos = { x = 253.4, y = -10.3, z = 193.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 312, gadget_id = 70900208, pos = { x = 256.8, y = -10.3, z = 192.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 313, gadget_id = 70900208, pos = { x = 253.4, y = -10.3, z = 195.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 314, gadget_id = 70900208, pos = { x = 256.8, y = -10.3, z = 195.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 315, gadget_id = 70900208, pos = { x = 253.3, y = -10.3, z = 196.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 316, gadget_id = 70900208, pos = { x = 256.8, y = -10.3, z = 196.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 317, gadget_id = 70900208, pos = { x = 253.3, y = -10.3, z = 198.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 318, gadget_id = 70900208, pos = { x = 256.8, y = -10.3, z = 198.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 319, gadget_id = 70900208, pos = { x = 253.4, y = -10.3, z = 200.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 320, gadget_id = 70900208, pos = { x = 256.8, y = -10.3, z = 200.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 61, shape = RegionShape.SPHERE, radius = 5, pos = { x = 254.9, y = -10.3, z = 189.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_61", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61", action = "action_EVENT_ENTER_REGION_61", forbid_guest = false }
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
		monsters = { 13, 14, 15 },
		gadgets = { 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320 },
		regions = { 61 },
		triggers = { "ENTER_REGION_61" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_61(context, evt)
	if evt.param1 ~= 61 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61(context, evt)
	-- 将configid为 308 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
