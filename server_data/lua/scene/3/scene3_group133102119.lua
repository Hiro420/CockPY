--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119001, monster_id = 20030101, pos = { x = 1591.1, y = 242.2, z = 727.8 }, rot = { x = 0.0, y = 245.9, z = 0.0 }, level = 17, drop_id = 1000100 },
	{ config_id = 119002, monster_id = 20030101, pos = { x = 1589.8, y = 242.7, z = 722.2 }, rot = { x = 0.0, y = 340.4, z = 0.0 }, level = 17, drop_id = 1000100 },
	{ config_id = 119003, monster_id = 20030101, pos = { x = 1592.0, y = 242.5, z = 724.5 }, rot = { x = 0.0, y = 270.3, z = 0.0 }, level = 17, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 119004, gadget_id = 70211102, pos = { x = 1587.8, y = 241.9, z = 723.9 }, rot = { x = 0.6, y = 280.3, z = 356.5 }, level = 18, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 119005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1587.3, y = 243.4, z = 723.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_119005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_119005", action = "action_EVENT_ENTER_REGION_119005" },
	{ name = "ANY_MONSTER_DIE_119006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_119006", action = "action_EVENT_ANY_MONSTER_DIE_119006" },
	{ name = "GADGET_CREATE_119007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_119007", action = "action_EVENT_GADGET_CREATE_119007", trigger_count = 0 }
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
		gadgets = { 119004 },
		regions = { 119005 },
		triggers = { "ENTER_REGION_119005", "GADGET_CREATE_119007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 119001, 119002, 119003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_119006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_119005(context, evt)
	if evt.param1 ~= 119005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_119005(context, evt)
	-- 将configid为 119004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 119004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102119, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_119006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119006(context, evt)
	-- 将configid为 119004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 119004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_119007(context, evt)
	if 119004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_119007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102119, 2)
	
	return 0
end
