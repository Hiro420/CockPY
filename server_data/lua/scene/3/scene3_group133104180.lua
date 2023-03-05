--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 441, monster_id = 20010501, pos = { x = 268.5, y = 234.2, z = 859.6 }, rot = { x = 3.6, y = 0.1, z = 2.7 }, level = 19, drop_id = 1000100 },
	{ config_id = 442, monster_id = 20010501, pos = { x = 272.0, y = 234.9, z = 855.1 }, rot = { x = 4.5, y = 0.1, z = 1.8 }, level = 19, drop_id = 1000100 },
	{ config_id = 443, monster_id = 20010501, pos = { x = 265.8, y = 235.5, z = 853.0 }, rot = { x = 357.3, y = 0.0, z = 359.1 }, level = 19, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 651, gadget_id = 70211112, pos = { x = 268.9, y = 235.1, z = 854.8 }, rot = { x = 9.8, y = 0.0, z = 359.1 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 314, shape = RegionShape.SPHERE, radius = 5, pos = { x = 269.0, y = 236.2, z = 854.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_314", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_314", action = "action_EVENT_ENTER_REGION_314" },
	{ name = "ANY_MONSTER_DIE_315", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_315", action = "action_EVENT_ANY_MONSTER_DIE_315" },
	{ name = "GADGET_CREATE_316", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_316", action = "action_EVENT_GADGET_CREATE_316", trigger_count = 0 }
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
		gadgets = { 651 },
		regions = { 314 },
		triggers = { "ENTER_REGION_314", "GADGET_CREATE_316" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 441, 442, 443 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_315" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_314(context, evt)
	if evt.param1 ~= 314 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_314(context, evt)
	-- 将configid为 651 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 651, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104180, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_315(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_315(context, evt)
	-- 将configid为 651 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 651, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_316(context, evt)
	if 651 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_316(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104180, 2)
	
	return 0
end
