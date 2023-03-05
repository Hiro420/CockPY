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
	{ config_id = 352001, gadget_id = 70211101, pos = { x = 1461.6, y = 242.3, z = -1532.0 }, rot = { x = 0.0, y = 279.5, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 352002, gadget_id = 70220021, pos = { x = 1460.6, y = 242.3, z = -1532.8 }, rot = { x = 0.0, y = 64.2, z = 0.0 }, level = 15, isOneoff = true, persistent = true },
	{ config_id = 352004, gadget_id = 70220021, pos = { x = 1461.2, y = 242.3, z = -1528.3 }, rot = { x = 0.0, y = 103.1, z = 0.0 }, level = 15, isOneoff = true, persistent = true },
	{ config_id = 352005, gadget_id = 70220021, pos = { x = 1460.2, y = 241.3, z = -1536.9 }, rot = { x = 0.0, y = 33.5, z = 0.0 }, level = 15, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_352003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_352003", action = "action_EVENT_ANY_GADGET_DIE_352003" }
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
		gadgets = { 352001, 352002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_352003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_352003(context, evt)
	if 352002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_352003(context, evt)
	-- 将configid为 352001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 352001, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      return -1
	    end
	
	return 0
end
