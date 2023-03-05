--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 542001, monster_id = 20011201, pos = { x = 1587.6, y = 301.6, z = 188.4 }, rot = { x = 359.2, y = 0.6, z = 4.1 }, level = 16, drop_id = 1000100 },
	{ config_id = 542002, monster_id = 20011201, pos = { x = 1589.6, y = 301.6, z = 184.1 }, rot = { x = 357.8, y = 0.1, z = 1.3 }, level = 16, drop_id = 1000100 },
	{ config_id = 542003, monster_id = 20011201, pos = { x = 1585.1, y = 301.5, z = 184.7 }, rot = { x = 1.8, y = 1.1, z = 7.4 }, level = 16, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 542004, gadget_id = 70211102, pos = { x = 1587.0, y = 301.6, z = 185.7 }, rot = { x = 357.8, y = 0.1, z = 1.3 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 542005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1586.5, y = 302.6, z = 185.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_542005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_542005", action = "action_EVENT_ENTER_REGION_542005" },
	{ name = "ANY_MONSTER_DIE_542006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_542006", action = "action_EVENT_ANY_MONSTER_DIE_542006" },
	{ name = "GADGET_CREATE_542007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_542007", action = "action_EVENT_GADGET_CREATE_542007", trigger_count = 0 }
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
		gadgets = { 542004 },
		regions = { 542005 },
		triggers = { "ENTER_REGION_542005", "GADGET_CREATE_542007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 542001, 542002, 542003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_542006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_542005(context, evt)
	if evt.param1 ~= 542005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_542005(context, evt)
	-- 将configid为 542004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 542004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102542, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_542006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_542006(context, evt)
	-- 将configid为 542004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 542004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_542007(context, evt)
	if 542004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_542007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102542, 2)
	
	return 0
end
