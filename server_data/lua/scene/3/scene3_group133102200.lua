--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361, monster_id = 20010801, pos = { x = 1674.0, y = 200.0, z = 181.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 362, monster_id = 20010801, pos = { x = 1673.7, y = 200.0, z = 180.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 363, monster_id = 20010801, pos = { x = 1675.5, y = 200.0, z = 179.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 723, gadget_id = 70211102, pos = { x = 1675.6, y = 199.5, z = 180.6 }, rot = { x = 0.0, y = 283.9, z = 0.0 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 396, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1675.7, y = 199.6, z = 181.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_396", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_396", action = "action_EVENT_ENTER_REGION_396" },
	{ name = "ANY_MONSTER_DIE_397", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_397", action = "action_EVENT_ANY_MONSTER_DIE_397" },
	{ name = "GADGET_CREATE_398", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_398", action = "action_EVENT_GADGET_CREATE_398", trigger_count = 0 }
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
		gadgets = { 723 },
		regions = { 396 },
		triggers = { "ENTER_REGION_396", "GADGET_CREATE_398" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 361, 362, 363 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_397" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_396(context, evt)
	if evt.param1 ~= 396 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_396(context, evt)
	-- 将configid为 723 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102200, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_397(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_397(context, evt)
	-- 将configid为 723 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_398(context, evt)
	if 723 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_398(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102200, 2)
	
	return 0
end
