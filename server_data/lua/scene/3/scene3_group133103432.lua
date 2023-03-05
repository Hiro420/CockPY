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
	{ config_id = 432001, gadget_id = 70211112, pos = { x = 55.1, y = 245.1, z = 1099.5 }, rot = { x = 345.1, y = 180.0, z = 358.6 }, level = 24, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 432002, gadget_id = 70380002, pos = { x = 86.2, y = 241.1, z = 1091.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, isOneoff = true, route_id = 310300162, persistent = true },
	{ config_id = 432003, gadget_id = 70380002, pos = { x = 43.1, y = 246.3, z = 1071.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, isOneoff = true, route_id = 310300163, persistent = true },
	{ config_id = 432004, gadget_id = 70380002, pos = { x = 49.6, y = 242.6, z = 1128.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, isOneoff = true, route_id = 310300164, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_432005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_432005", action = "action_EVENT_ANY_GADGET_DIE_432005" }
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
		-- description = ,
		monsters = { },
		gadgets = { 432001, 432002, 432003, 432004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_432005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_432005(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133103432}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_432005(context, evt)
	-- 将configid为 432001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 432001, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1011, 3, 1) then
	      return -1
	    end
	
	return 0
end
