--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 20010301, pos = { x = 1617.8, y = 233.4, z = 1380.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 121002, monster_id = 20010301, pos = { x = 1619.3, y = 232.3, z = 1378.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 121003, monster_id = 20010301, pos = { x = 1616.2, y = 233.1, z = 1376.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 121004, gadget_id = 70211102, pos = { x = 1617.8, y = 232.6, z = 1378.0 }, rot = { x = 0.5, y = 359.9, z = 347.3 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 121005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1617.9, y = 233.2, z = 1378.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_121005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121005", action = "action_EVENT_ENTER_REGION_121005" },
	{ name = "ANY_MONSTER_DIE_121006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_121006", action = "action_EVENT_ANY_MONSTER_DIE_121006" },
	{ name = "GADGET_CREATE_121007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_121007", action = "action_EVENT_GADGET_CREATE_121007", trigger_count = 0 }
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
		gadgets = { 121004 },
		regions = { 121005 },
		triggers = { "ENTER_REGION_121005", "GADGET_CREATE_121007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 121001, 121002, 121003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_121006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_121005(context, evt)
	if evt.param1 ~= 121005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121005(context, evt)
	-- 将configid为 121004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101121, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_121006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_121006(context, evt)
	-- 将configid为 121004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_121007(context, evt)
	if 121004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_121007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101121, 2)
	
	return 0
end
