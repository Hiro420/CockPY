--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 319001, gadget_id = 70620002, pos = { x = 1618.3, y = 283.5, z = -1247.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, isOneoff = true, persistent = true },
	{ config_id = 319002, gadget_id = 70211101, pos = { x = 1618.3, y = 283.3, z = -1247.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 319004, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1618.3, y = 286.2, z = -1247.4 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_319003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319003", action = "action_EVENT_GADGET_STATE_CHANGE_319003" },
	{ name = "ENTER_REGION_319004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_319004", action = "action_EVENT_ENTER_REGION_319004" },
	{ name = "GADGET_CREATE_319005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_319005", action = "action_EVENT_GADGET_CREATE_319005", trigger_count = 0 }
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
		gadgets = { 319001, 319002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_319003", "GADGET_CREATE_319005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 319001 },
		regions = { 319004 },
		triggers = { "ENTER_REGION_319004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_319003(context, evt)
	if 319002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_319003(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133001319, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1000, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_319004(context, evt)
	if evt.param1 ~= 319004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_319004(context, evt)
	-- 将configid为 319002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 319002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_319005(context, evt)
	if 319001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_319005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001319, 2)
	
	return 0
end
