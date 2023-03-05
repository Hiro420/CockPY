--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 442, monster_id = 20010301, pos = { x = 1813.4, y = 220.4, z = 53.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_id = 1000100 },
	{ config_id = 443, monster_id = 20010301, pos = { x = 1815.3, y = 220.5, z = 51.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_id = 1000100 },
	{ config_id = 444, monster_id = 20010301, pos = { x = 1812.2, y = 219.9, z = 49.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 965, gadget_id = 70211112, pos = { x = 1813.6, y = 220.2, z = 50.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 497, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1813.7, y = 220.9, z = 50.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_497", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_497", action = "action_EVENT_ENTER_REGION_497" },
	{ name = "ANY_MONSTER_DIE_498", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_498", action = "action_EVENT_ANY_MONSTER_DIE_498" },
	{ name = "GADGET_CREATE_499", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_499", action = "action_EVENT_GADGET_CREATE_499", trigger_count = 0 }
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
		gadgets = { 965 },
		regions = { 497 },
		triggers = { "ENTER_REGION_497", "GADGET_CREATE_499" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 442, 443, 444 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_498" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_497(context, evt)
	if evt.param1 ~= 497 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_497(context, evt)
	-- 将configid为 965 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 965, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102255, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_498(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_498(context, evt)
	-- 将configid为 965 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 965, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_499(context, evt)
	if 965 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_499(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102255, 2)
	
	return 0
end
