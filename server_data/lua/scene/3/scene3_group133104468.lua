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
	{ config_id = 468001, gadget_id = 70220008, pos = { x = 35.3, y = 247.9, z = 437.1 }, rot = { x = 5.4, y = 359.5, z = 349.1 }, level = 19, isOneoff = true },
	{ config_id = 468002, gadget_id = 70220008, pos = { x = 33.5, y = 248.3, z = 432.7 }, rot = { x = 0.7, y = 359.9, z = 350.9 }, level = 19, isOneoff = true },
	{ config_id = 468003, gadget_id = 70220008, pos = { x = 37.1, y = 247.7, z = 433.4 }, rot = { x = 2.7, y = 359.8, z = 352.9 }, level = 19, isOneoff = true },
	{ config_id = 468004, gadget_id = 70211111, pos = { x = 35.5, y = 247.9, z = 434.6 }, rot = { x = 0.1, y = 360.0, z = 348.9 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_468005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_468005", action = "action_EVENT_ANY_GADGET_DIE_468005", trigger_count = 0 }
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
		gadgets = { 468001, 468002, 468003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_468005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_468005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133104468}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_468005(context, evt)
	-- 创建id为468004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 468004 }) then
	  return -1
	end
	
	return 0
end
