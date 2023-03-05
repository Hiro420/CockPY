--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 20030201, pos = { x = -467.6, y = 187.3, z = 1073.3 }, rot = { x = 0.0, y = 330.2, z = 0.0 }, level = 32, drop_id = 1000100 },
	{ config_id = 80002, monster_id = 20030201, pos = { x = -466.1, y = 187.3, z = 1071.5 }, rot = { x = 0.0, y = 330.2, z = 0.0 }, level = 32, drop_id = 1000100 },
	{ config_id = 80003, monster_id = 20030201, pos = { x = -469.2, y = 187.3, z = 1070.1 }, rot = { x = 0.0, y = 330.2, z = 0.0 }, level = 32, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 80004, gadget_id = 70211102, pos = { x = -467.6, y = 187.3, z = 1071.2 }, rot = { x = 0.0, y = 330.2, z = 0.0 }, level = 32, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 80005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -467.5, y = 187.9, z = 1071.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_80005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80005", action = "action_EVENT_ENTER_REGION_80005" },
	{ name = "ANY_MONSTER_DIE_80006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80006", action = "action_EVENT_ANY_MONSTER_DIE_80006" },
	{ name = "GADGET_CREATE_80007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80007", action = "action_EVENT_GADGET_CREATE_80007", trigger_count = 0 }
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
		gadgets = { 80004 },
		regions = { 80005 },
		triggers = { "ENTER_REGION_80005", "GADGET_CREATE_80007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 80001, 80002, 80003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_80005(context, evt)
	if evt.param1 ~= 80005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80005(context, evt)
	-- 将configid为 80004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106080, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80006(context, evt)
	-- 将configid为 80004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_80007(context, evt)
	if 80004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106080, 2)
	
	return 0
end
