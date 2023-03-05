--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 386, monster_id = 20030101, pos = { x = 457.8, y = 208.3, z = 143.0 }, rot = { x = 346.6, y = 353.3, z = 53.1 }, level = 17, drop_id = 1000100 },
	{ config_id = 387, monster_id = 20030101, pos = { x = 461.3, y = 210.6, z = 142.8 }, rot = { x = 69.6, y = 1.8, z = 2.6 }, level = 17, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 533, gadget_id = 70211112, pos = { x = 460.4, y = 208.6, z = 140.8 }, rot = { x = 358.3, y = 188.8, z = 357.7 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 260, shape = RegionShape.SPHERE, radius = 5, pos = { x = 460.5, y = 208.7, z = 140.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_260", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_260", action = "action_EVENT_ENTER_REGION_260" },
	{ name = "ANY_MONSTER_DIE_261", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_261", action = "action_EVENT_ANY_MONSTER_DIE_261" },
	{ name = "GADGET_CREATE_262", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_262", action = "action_EVENT_GADGET_CREATE_262", trigger_count = 0 }
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
		gadgets = { 533 },
		regions = { 260 },
		triggers = { "ENTER_REGION_260", "GADGET_CREATE_262" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 386, 387 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_261" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_260(context, evt)
	if evt.param1 ~= 260 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_260(context, evt)
	-- 将configid为 533 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 533, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104161, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_261(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_261(context, evt)
	-- 将configid为 533 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 533, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_262(context, evt)
	if 533 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_262(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104161, 2)
	
	return 0
end
