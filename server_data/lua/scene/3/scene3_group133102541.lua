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
	{ config_id = 541001, gadget_id = 70620002, pos = { x = 1534.0, y = 240.7, z = 137.9 }, rot = { x = 2.5, y = 1.5, z = 352.9 }, level = 10, isOneoff = true, persistent = true },
	{ config_id = 541002, gadget_id = 70211101, pos = { x = 1534.0, y = 240.7, z = 137.7 }, rot = { x = 2.4, y = 0.4, z = 352.8 }, level = 10, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 541004, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 1534.0, y = 241.6, z = 137.9 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_541003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_541003", action = "action_EVENT_GADGET_STATE_CHANGE_541003" },
	{ name = "ENTER_REGION_541004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_541004", action = "action_EVENT_ENTER_REGION_541004" },
	{ name = "GADGET_CREATE_541005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_541005", action = "action_EVENT_GADGET_CREATE_541005", trigger_count = 0 }
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
		gadgets = { 541001, 541002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_541003", "GADGET_CREATE_541005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 541001 },
		regions = { 541004 },
		triggers = { "ENTER_REGION_541004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_541003(context, evt)
	if 541002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_541003(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133102541, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1000, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_541004(context, evt)
	if evt.param1 ~= 541004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_541004(context, evt)
	-- 将configid为 541002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 541002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_541005(context, evt)
	if 541001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_541005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102541, 2)
	
	return 0
end
