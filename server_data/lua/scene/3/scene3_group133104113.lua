--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 318, monster_id = 20010801, pos = { x = 526.5, y = 200.6, z = 52.3 }, rot = { x = 0.0, y = 317.1, z = 0.0 }, level = 19, drop_id = 1000100, pose_id = 0 },
	{ config_id = 319, monster_id = 20010801, pos = { x = 532.0, y = 200.6, z = 51.6 }, rot = { x = 0.0, y = 317.1, z = 0.0 }, level = 19, drop_id = 1000100, pose_id = 0 },
	{ config_id = 320, monster_id = 20010901, pos = { x = 529.6, y = 200.6, z = 49.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 309, gadget_id = 70211112, pos = { x = 529.1, y = 199.8, z = 51.5 }, rot = { x = 0.0, y = 45.5, z = 4.7 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 173, shape = RegionShape.SPHERE, radius = 5, pos = { x = 529.3, y = 200.6, z = 51.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_173", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_173", action = "action_EVENT_ENTER_REGION_173" },
	{ name = "ANY_MONSTER_DIE_174", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_174", action = "action_EVENT_ANY_MONSTER_DIE_174" },
	{ name = "GADGET_CREATE_175", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_175", action = "action_EVENT_GADGET_CREATE_175", trigger_count = 0 }
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
		gadgets = { 309 },
		regions = { 173 },
		triggers = { "ENTER_REGION_173", "GADGET_CREATE_175" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 318, 319, 320 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_174" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_173(context, evt)
	if evt.param1 ~= 173 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_173(context, evt)
	-- 将configid为 309 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104113, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_174(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_174(context, evt)
	-- 将configid为 309 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_175(context, evt)
	if 259 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_175(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104113, 2)
	
	return 0
end
