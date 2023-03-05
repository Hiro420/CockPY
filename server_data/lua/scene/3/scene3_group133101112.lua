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
	{ config_id = 112001, gadget_id = 70211112, pos = { x = 1455.8, y = 243.5, z = 1279.8 }, rot = { x = 4.3, y = 112.9, z = 347.5 }, level = 19, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 112002, gadget_id = 70380002, pos = { x = 1456.2, y = 254.3, z = 1289.1 }, rot = { x = 0.0, y = 85.8, z = 0.0 }, level = 19, isOneoff = true, route_id = 310100076, persistent = true },
	{ config_id = 112003, gadget_id = 70380002, pos = { x = 1456.4, y = 245.9, z = 1278.3 }, rot = { x = 0.0, y = 102.9, z = 0.0 }, level = 19, isOneoff = true, route_id = 310100077, persistent = true },
	{ config_id = 112004, gadget_id = 70380002, pos = { x = 1455.7, y = 249.4, z = 1285.9 }, rot = { x = 0.0, y = 122.7, z = 0.0 }, level = 19, isOneoff = true, route_id = 310100078, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_112005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_112005", action = "action_EVENT_ANY_GADGET_DIE_112005" }
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
		gadgets = { 112001, 112002, 112003, 112004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_112005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_112005(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133101112}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_112005(context, evt)
	-- 将configid为 112001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112001, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1011, 3, 1) then
	      return -1
	    end
	
	return 0
end
