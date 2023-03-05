--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26001, monster_id = 20011401, pos = { x = -677.8, y = 282.6, z = 548.4 }, rot = { x = 0.0, y = 182.4, z = 0.0 }, level = 24, drop_id = 1000100 },
	{ config_id = 26002, monster_id = 20011401, pos = { x = -676.5, y = 282.6, z = 548.7 }, rot = { x = 0.0, y = 192.6, z = 0.0 }, level = 24, drop_id = 1000100 },
	{ config_id = 26003, monster_id = 20011401, pos = { x = -679.2, y = 282.9, z = 548.0 }, rot = { x = 0.0, y = 118.9, z = 0.0 }, level = 24, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 26004, gadget_id = 70211102, pos = { x = -677.9, y = 282.6, z = 549.6 }, rot = { x = 2.5, y = 172.9, z = 359.2 }, level = 24, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 26005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -678.1, y = 282.6, z = 550.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_26005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26005", action = "action_EVENT_ENTER_REGION_26005" },
	{ name = "ANY_MONSTER_DIE_26006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26006", action = "action_EVENT_ANY_MONSTER_DIE_26006" },
	{ name = "GADGET_CREATE_26007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_26007", action = "action_EVENT_GADGET_CREATE_26007", trigger_count = 0 }
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
		gadgets = { 26004 },
		regions = { 26005 },
		triggers = { "ENTER_REGION_26005", "GADGET_CREATE_26007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 26001, 26002, 26003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_26006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_26005(context, evt)
	if evt.param1 ~= 26005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26005(context, evt)
	-- 将configid为 26004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107026, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26006(context, evt)
	-- 将configid为 26004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_26007(context, evt)
	if 26004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_26007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107026, 2)
	
	return 0
end
