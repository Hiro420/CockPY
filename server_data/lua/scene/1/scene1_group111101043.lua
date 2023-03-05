--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 20010401, pos = { x = 2302.7, y = 253.2, z = -1436.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 43002, monster_id = 20010301, pos = { x = 2298.5, y = 252.3, z = -1437.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 43003, monster_id = 20010301, pos = { x = 2300.8, y = 252.4, z = -1433.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43004, gadget_id = 70211102, pos = { x = 2300.9, y = 252.7, z = -1435.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 43008, gadget_id = 70290009, pos = { x = 2300.8, y = 252.8, z = -1437.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 43009, gadget_id = 70500000, pos = { x = 2300.8, y = 252.8, z = -1437.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 3005, owner = 43008 },
	{ config_id = 43010, gadget_id = 70290009, pos = { x = 2303.3, y = 253.0, z = -1434.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 43011, gadget_id = 70500000, pos = { x = 2303.3, y = 253.0, z = -1434.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 3005, owner = 43010 },
	{ config_id = 43012, gadget_id = 70290009, pos = { x = 2298.3, y = 252.0, z = -1434.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 43013, gadget_id = 70500000, pos = { x = 2298.3, y = 252.0, z = -1434.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 3005, owner = 43012 }
}

-- 区域
regions = {
	{ config_id = 43005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2301.0, y = 253.3, z = -1435.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_43005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43005", action = "action_EVENT_ENTER_REGION_43005" },
	{ name = "ANY_MONSTER_DIE_43006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43006", action = "action_EVENT_ANY_MONSTER_DIE_43006" },
	{ name = "GADGET_CREATE_43007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_43007", action = "action_EVENT_GADGET_CREATE_43007", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 43004, 43008, 43009, 43010, 43011, 43012, 43013 },
		regions = { 43005 },
		triggers = { "ENTER_REGION_43005", "GADGET_CREATE_43007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 43001, 43002, 43003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_43006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_43005(context, evt)
	if evt.param1 ~= 43005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43005(context, evt)
	-- 将configid为 43004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101043, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43006(context, evt)
	-- 将configid为 43004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_43007(context, evt)
	if 43004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_43007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101043, 2)
	
	return 0
end
