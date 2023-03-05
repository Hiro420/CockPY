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
	{ config_id = 2937, gadget_id = 70500000, pos = { x = 1382.8, y = 317.9, z = -1320.1 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2938, gadget_id = 70500000, pos = { x = 1378.3, y = 317.6, z = -1318.0 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2939, gadget_id = 70500000, pos = { x = 1379.6, y = 316.7, z = -1314.0 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2940, gadget_id = 70500000, pos = { x = 1382.8, y = 316.8, z = -1315.6 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2941, gadget_id = 70211101, pos = { x = 1380.4, y = 317.3, z = -1317.2 }, rot = { x = 1.2, y = 113.1, z = 12.6 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_356", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_356", action = "action_EVENT_GATHER_356", trigger_count = 0 }
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
		gadgets = { 2937, 2938, 2939, 2940 },
		regions = { },
		triggers = { "GATHER_356" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_356(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133001260}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_356(context, evt)
	-- 创建id为2936的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2936 }) then
	  return -1
	end
	
	return 0
end
