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
	{ config_id = 3384, gadget_id = 70380002, pos = { x = 2845.0, y = 272.3, z = -1848.3 }, rot = { x = 0.0, y = 138.3, z = 0.0 }, level = 15, route_id = 3003196 },
	{ config_id = 3385, gadget_id = 70380002, pos = { x = 2848.0, y = 272.3, z = -1848.3 }, rot = { x = 0.0, y = 168.7, z = 0.0 }, level = 15, route_id = 3003196 },
	{ config_id = 3386, gadget_id = 70380002, pos = { x = 2851.0, y = 272.3, z = -1848.3 }, rot = { x = 0.0, y = 327.9, z = 0.0 }, level = 15, route_id = 3003196 },
	{ config_id = 3387, gadget_id = 70380002, pos = { x = 2854.0, y = 272.3, z = -1848.3 }, rot = { x = 0.0, y = 158.1, z = 0.0 }, level = 15, route_id = 3003196 },
	{ config_id = 3388, gadget_id = 70211111, pos = { x = 2847.2, y = 260.4, z = -1865.3 }, rot = { x = 0.0, y = 32.2, z = 358.3 }, level = 15, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_259", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_259", action = "action_EVENT_ANY_GADGET_DIE_259", tlog_tag = "望风山地_340_射击自然靶标_结算" }
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
	rand_suite = true
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
		gadgets = { 3384, 3385, 3386, 3387 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_259" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_259(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003340}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_259(context, evt)
	-- 创建id为3388的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3388 }) then
	  return -1
	end
	
	return 0
end
