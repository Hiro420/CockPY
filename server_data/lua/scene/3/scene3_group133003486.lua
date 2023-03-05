--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1763, monster_id = 20011001, pos = { x = 2492.3, y = 300.1, z = -1804.8 }, rot = { x = 0.0, y = 277.2, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 1764, monster_id = 20011101, pos = { x = 2490.4, y = 300.2, z = -1806.6 }, rot = { x = 4.1, y = 265.6, z = 359.7 }, level = 10, drop_id = 1000100 },
	{ config_id = 1765, monster_id = 20011001, pos = { x = 2492.9, y = 300.6, z = -1808.4 }, rot = { x = 0.0, y = 267.1, z = 0.0 }, level = 10, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4471, gadget_id = 70211112, pos = { x = 2492.3, y = 300.3, z = -1806.6 }, rot = { x = 2.8, y = 265.5, z = 354.2 }, level = 10, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 598, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2492.5, y = 301.1, z = -1806.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_598", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_598", action = "action_EVENT_ENTER_REGION_598" },
	{ name = "ANY_MONSTER_DIE_599", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_599", action = "action_EVENT_ANY_MONSTER_DIE_599" },
	{ name = "GADGET_CREATE_600", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_600", action = "action_EVENT_GADGET_CREATE_600", trigger_count = 0 }
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
		gadgets = { 4471 },
		regions = { 598 },
		triggers = { "ENTER_REGION_598", "GADGET_CREATE_600" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1763, 1764, 1765 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_599" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_598(context, evt)
	if evt.param1 ~= 598 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_598(context, evt)
	-- 将configid为 4471 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4471, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003486, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_599(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_599(context, evt)
	-- 将configid为 4471 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4471, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_600(context, evt)
	if 4471 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_600(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003486, 2)
	
	return 0
end
