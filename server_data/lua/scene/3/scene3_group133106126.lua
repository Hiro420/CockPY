-- Trigger变量
local defs = {
	gadget_id = 126004
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
	{ config_id = 126001, gadget_id = 70220008, pos = { x = -246.0, y = 195.7, z = 994.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, isOneoff = true, persistent = true },
	{ config_id = 126002, gadget_id = 70220008, pos = { x = -237.4, y = 186.8, z = 991.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, isOneoff = true, persistent = true },
	{ config_id = 126003, gadget_id = 70220008, pos = { x = -241.2, y = 186.4, z = 980.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, isOneoff = true, persistent = true },
	{ config_id = 126004, gadget_id = 70211111, pos = { x = -247.9, y = 189.0, z = 986.9 }, rot = { x = 1.1, y = 141.7, z = 4.6 }, level = 32, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_126007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126007", action = "action_EVENT_ANY_GADGET_DIE_126007" }
}

-- 变量
variables = {
	{ name = "start", value = 0, no_refresh = true }
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
		gadgets = { 126001, 126002, 126003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_126007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126007(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133106126}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126007(context, evt)
	-- 创建id为126004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126004 }) then
	  return -1
	end
	
	return 0
end
