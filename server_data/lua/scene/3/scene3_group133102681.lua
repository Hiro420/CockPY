--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 681007, monster_id = 20011501, pos = { x = 1313.8, y = 203.1, z = 229.3 }, rot = { x = 0.0, y = 219.4, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 681008, monster_id = 20011501, pos = { x = 1308.2, y = 202.3, z = 226.9 }, rot = { x = 0.0, y = 111.3, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 681009, monster_id = 20011501, pos = { x = 1312.2, y = 202.2, z = 223.2 }, rot = { x = 0.0, y = 344.7, z = 0.0 }, level = 16, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 681001, gadget_id = 70220008, pos = { x = 1313.8, y = 202.7, z = 229.5 }, rot = { x = 345.0, y = 357.6, z = 18.4 }, level = 16, isOneoff = true, persistent = true },
	{ config_id = 681002, gadget_id = 70220008, pos = { x = 1312.1, y = 202.0, z = 222.5 }, rot = { x = 350.3, y = 0.0, z = 0.0 }, level = 16, isOneoff = true, persistent = true },
	{ config_id = 681003, gadget_id = 70220008, pos = { x = 1307.8, y = 202.1, z = 227.1 }, rot = { x = 0.0, y = 325.1, z = 0.0 }, level = 16, isOneoff = true, persistent = true },
	{ config_id = 681004, gadget_id = 70211001, pos = { x = 1312.2, y = 202.0, z = 222.5 }, rot = { x = 351.2, y = 0.0, z = 0.0 }, level = 16, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 681005, gadget_id = 70211001, pos = { x = 1307.8, y = 202.1, z = 227.1 }, rot = { x = 0.0, y = 131.0, z = 0.0 }, level = 16, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 681006, gadget_id = 70211001, pos = { x = 1313.8, y = 202.7, z = 229.5 }, rot = { x = 17.5, y = 239.2, z = 0.5 }, level = 16, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_681010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_681010", action = "action_EVENT_ANY_MONSTER_DIE_681010", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_681011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_681011", action = "action_EVENT_ANY_GADGET_DIE_681011", trigger_count = 0 }
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
		gadgets = { 681001, 681002, 681003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_681011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 681007, 681008, 681009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_681010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_ANY_MONSTER_DIE_681010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_681010(context, evt)
	-- 创建id为681004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 681004 }) then
	  return -1
	end
	
	-- 创建id为681005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 681005 }) then
	  return -1
	end
	
	-- 创建id为681006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 681006 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_681011(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133102681}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_681011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102681, 2)
	
	return 0
end
