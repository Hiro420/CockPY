--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16001, monster_id = 20011001, pos = { x = 600.2, y = 184.3, z = 1178.5 }, rot = { x = 0.0, y = 149.5, z = 0.0 }, level = 24, drop_id = 1000100 },
	{ config_id = 16002, monster_id = 20011001, pos = { x = 601.1, y = 184.4, z = 1180.4 }, rot = { x = 0.0, y = 149.5, z = 0.0 }, level = 24, drop_id = 1000100 },
	{ config_id = 16003, monster_id = 20011001, pos = { x = 603.5, y = 184.7, z = 1178.8 }, rot = { x = 0.0, y = 149.5, z = 0.0 }, level = 24, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 16004, gadget_id = 70211102, pos = { x = 601.8, y = 184.5, z = 1179.2 }, rot = { x = 0.0, y = 149.5, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 16005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 601.7, y = 185.5, z = 1179.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_16005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16005", action = "action_EVENT_ENTER_REGION_16005" },
	{ name = "ANY_MONSTER_DIE_16006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16006", action = "action_EVENT_ANY_MONSTER_DIE_16006" },
	{ name = "GADGET_CREATE_16007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_16007", action = "action_EVENT_GADGET_CREATE_16007", trigger_count = 0 }
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
		gadgets = { 16004 },
		regions = { 16005 },
		triggers = { "ENTER_REGION_16005", "GADGET_CREATE_16007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 16001, 16002, 16003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_16006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_16005(context, evt)
	if evt.param1 ~= 16005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16005(context, evt)
	-- 将configid为 16004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103016, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16006(context, evt)
	-- 将configid为 16004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_16007(context, evt)
	if 16004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_16007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103016, 2)
	
	return 0
end
