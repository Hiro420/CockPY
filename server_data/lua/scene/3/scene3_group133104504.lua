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
	{ config_id = 504001, gadget_id = 70211112, pos = { x = 966.1, y = 223.4, z = 812.4 }, rot = { x = 0.0, y = 66.7, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 504002, gadget_id = 70380002, pos = { x = 941.9, y = 250.4, z = 781.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, isOneoff = true, route_id = 310400203, persistent = true },
	{ config_id = 504003, gadget_id = 70380002, pos = { x = 959.0, y = 234.5, z = 798.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, isOneoff = true, route_id = 310400204, persistent = true },
	{ config_id = 504004, gadget_id = 70380002, pos = { x = 962.6, y = 227.8, z = 807.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, isOneoff = true, route_id = 310400205, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_504005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_504005", action = "action_EVENT_ANY_GADGET_DIE_504005" }
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
		gadgets = { 504001, 504002, 504003, 504004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_504005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_504005(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133104504}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_504005(context, evt)
	-- 将configid为 504001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 504001, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1011, 3, 1) then
	      return -1
	    end
	
	return 0
end
