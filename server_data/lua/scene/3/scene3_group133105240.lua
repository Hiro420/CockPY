--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 240001, monster_id = 20030201, pos = { x = 672.1, y = 280.1, z = -353.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_id = 1000100 },
	{ config_id = 240002, monster_id = 20030101, pos = { x = 673.8, y = 280.3, z = -356.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_id = 1000100 },
	{ config_id = 240003, monster_id = 20030201, pos = { x = 670.5, y = 280.3, z = -355.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 240004, gadget_id = 70211112, pos = { x = 672.1, y = 279.1, z = -355.6 }, rot = { x = 0.0, y = 221.3, z = 0.0 }, level = 25, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 240005, shape = RegionShape.SPHERE, radius = 3.6, pos = { x = 672.2, y = 279.8, z = -355.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_240005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_240005", action = "action_EVENT_ENTER_REGION_240005" },
	{ name = "ANY_MONSTER_DIE_240006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_240006", action = "action_EVENT_ANY_MONSTER_DIE_240006" },
	{ name = "GADGET_CREATE_240007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_240007", action = "action_EVENT_GADGET_CREATE_240007", trigger_count = 0 }
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
		gadgets = { 240004 },
		regions = { 240005 },
		triggers = { "ENTER_REGION_240005", "GADGET_CREATE_240007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 240001, 240002, 240003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_240006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_240005(context, evt)
	if evt.param1 ~= 240005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_240005(context, evt)
	-- 将configid为 240004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 240004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105240, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_240006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_240006(context, evt)
	-- 将configid为 240004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 240004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_240007(context, evt)
	if 240004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_240007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105240, 2)
	
	return 0
end
