--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 69, monster_id = 20011201, pos = { x = 755.7, y = 370.3, z = 1873.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_id = 1000100, pose_id = 0 },
	{ config_id = 70, monster_id = 20011201, pos = { x = 757.2, y = 370.3, z = 1871.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_id = 1000100, pose_id = 0 },
	{ config_id = 71, monster_id = 20011201, pos = { x = 755.4, y = 370.6, z = 1871.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_id = 1000100, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 246, gadget_id = 70211112, pos = { x = 753.8, y = 370.5, z = 1874.4 }, rot = { x = 12.2, y = 96.3, z = 2.2 }, level = 24, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 80, shape = RegionShape.SPHERE, radius = 5, pos = { x = 755.9, y = 370.9, z = 1871.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_80", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80", action = "action_EVENT_ENTER_REGION_80" },
	{ name = "ANY_MONSTER_DIE_81", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81", action = "action_EVENT_ANY_MONSTER_DIE_81" },
	{ name = "GADGET_CREATE_126", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_126", action = "action_EVENT_GADGET_CREATE_126", trigger_count = 0 }
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
		gadgets = { 246 },
		regions = { 80 },
		triggers = { "ENTER_REGION_80", "GADGET_CREATE_126" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 69, 70, 71 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_81" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_80(context, evt)
	if evt.param1 ~= 80 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80(context, evt)
	-- 将configid为 246 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103079, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81(context, evt)
	-- 将configid为 246 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_126(context, evt)
	if 246 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_126(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103079, 2)
	
	return 0
end
