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
	{ config_id = 45002, gadget_id = 70300089, pos = { x = -183.9, y = 208.4, z = -1037.2 }, rot = { x = 0.0, y = 27.0, z = 0.0 }, level = 32 },
	{ config_id = 45003, gadget_id = 70300089, pos = { x = -176.1, y = 208.4, z = -1033.4 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 32 },
	{ config_id = 45004, gadget_id = 70300089, pos = { x = -187.3, y = 208.4, z = -1029.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 45005, gadget_id = 70300089, pos = { x = -179.7, y = 208.4, z = -1025.4 }, rot = { x = 0.0, y = 327.1, z = 0.0 }, level = 32 },
	{ config_id = 45006, gadget_id = 70300089, pos = { x = -187.3, y = 208.4, z = -1033.7 }, rot = { x = 0.0, y = 350.3, z = 0.0 }, level = 32 },
	{ config_id = 45007, gadget_id = 70300089, pos = { x = -176.5, y = 208.4, z = -1028.6 }, rot = { x = 0.0, y = 285.9, z = 0.0 }, level = 32 },
	{ config_id = 45008, gadget_id = 70300089, pos = { x = -179.2, y = 208.4, z = -1036.9 }, rot = { x = 0.0, y = 35.9, z = 0.0 }, level = 32 },
	{ config_id = 45009, gadget_id = 70211111, pos = { x = -180.6, y = 208.9, z = -1034.3 }, rot = { x = 0.3, y = 340.1, z = 360.0 }, level = 32, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_45001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_45001", action = "action_EVENT_ANY_GADGET_DIE_45001" }
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
		gadgets = { 45002, 45003, 45004, 45005, 45006, 45007, 45008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_45001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_45001(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133108045}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_45001(context, evt)
	-- 创建id为45009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 45009 }) then
	  return -1
	end
	
	return 0
end
