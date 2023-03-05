-- Trigger变量
local defs = {
	gadget_id_1 = 2112,
	gadget_id_2 = 2113,
	gadget_id_3 = 2114,
	gadget_id_4 = 2115,
	gadget_id_5 = 2116
}


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
	{ config_id = 2112, gadget_id = 70220007, pos = { x = 1917.4, y = 241.0, z = -1039.3 }, rot = { x = 0.0, y = 357.6, z = 0.0 }, level = 5 },
	{ config_id = 2113, gadget_id = 70220007, pos = { x = 1920.1, y = 241.1, z = -1041.7 }, rot = { x = 0.0, y = 266.8, z = 0.0 }, level = 5 },
	{ config_id = 2114, gadget_id = 70220007, pos = { x = 1917.7, y = 240.8, z = -1044.1 }, rot = { x = 0.0, y = 357.2, z = 0.0 }, level = 5 },
	{ config_id = 2115, gadget_id = 70220007, pos = { x = 1917.9, y = 245.6, z = -1043.8 }, rot = { x = 90.0, y = 352.2, z = 0.0 }, level = 5 },
	{ config_id = 2116, gadget_id = 70220007, pos = { x = 1915.1, y = 241.0, z = -1042.1 }, rot = { x = 0.0, y = 266.8, z = 0.0 }, level = 5 },
	{ config_id = 2117, gadget_id = 70211102, pos = { x = 1917.4, y = 241.4, z = -1041.4 }, rot = { x = 0.0, y = 349.9, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_291", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_291", action = "action_EVENT_ANY_GADGET_DIE_291", tlog_tag = "酒庄_248_清泉镇后山石块宝箱_挑战成功" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_291(context, evt)
	if defs.gadget_id_1 == evt.param1 then
		return true
	end
	
	if defs.gadget_id_2 == evt.param1 then
		return true
	end
	
	if defs.gadget_id_3 == evt.param1 then
		return true
	end
	
	if defs.gadget_id_4 == evt.param1 then
		return true
	end
	
	if defs.gadget_id_5 == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_291(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002248, monsters = {}, gadgets = {2112,2113,2114,2115,2116} }) then
			return -1
		end
	
	-- 解锁目标2117
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2117, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
