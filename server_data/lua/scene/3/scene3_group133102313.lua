--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 313001, monster_id = 20010501, pos = { x = 1177.7, y = 200.0, z = 227.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 313002, monster_id = 20010501, pos = { x = 1179.8, y = 200.2, z = 224.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 313003, monster_id = 20010501, pos = { x = 1177.6, y = 200.0, z = 224.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 313004, gadget_id = 70211102, pos = { x = 1178.5, y = 199.6, z = 226.1 }, rot = { x = 344.2, y = 93.9, z = 355.9 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 313005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1178.1, y = 201.2, z = 225.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_313005", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_313005", action = "action_EVENT_ENTER_REGION_313005" },
	{ name = "ANY_MONSTER_DIE_313006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_313006", action = "action_EVENT_ANY_MONSTER_DIE_313006" },
	{ name = "GADGET_CREATE_313007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_313007", action = "action_EVENT_GADGET_CREATE_313007", trigger_count = 0 }
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
		gadgets = { 313004 },
		regions = { 313005 },
		triggers = { "ENTER_REGION_313005", "GADGET_CREATE_313007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 313001, 313002, 313003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_313006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_313005(context, evt)
	if evt.param1 ~= 313005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_313005(context, evt)
	-- 将configid为 313004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102313, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_313006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_313006(context, evt)
	-- 将configid为 313004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_313007(context, evt)
	if 313004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_313007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102313, 2)
	
	return 0
end
