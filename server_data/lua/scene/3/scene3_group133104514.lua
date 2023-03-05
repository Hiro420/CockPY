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
	{ config_id = 514001, gadget_id = 70220008, pos = { x = 829.8, y = 210.8, z = 583.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, isOneoff = true, persistent = true },
	{ config_id = 514002, gadget_id = 70220008, pos = { x = 822.0, y = 210.7, z = 585.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, isOneoff = true, persistent = true },
	{ config_id = 514003, gadget_id = 70220008, pos = { x = 827.0, y = 210.9, z = 587.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, isOneoff = true, persistent = true },
	{ config_id = 514005, gadget_id = 70211001, pos = { x = 825.6, y = 211.1, z = 581.0 }, rot = { x = 2.3, y = 16.6, z = 1.6 }, level = 19, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_514004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_514004", action = "action_EVENT_ANY_GADGET_DIE_514004" }
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
		gadgets = { 514001, 514002, 514003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_514004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_514004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133104514}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_514004(context, evt)
	-- 创建id为514005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 514005 }) then
	  return -1
	end
	
	return 0
end
