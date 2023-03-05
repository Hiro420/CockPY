--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38, monster_id = 20020101, pos = { x = 958.7, y = 340.2, z = 1432.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "元素之核" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 199, gadget_id = 70211011, pos = { x = 951.5, y = 343.2, z = 1433.1 }, rot = { x = 342.3, y = 280.1, z = 345.9 }, level = 24, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_58", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58", action = "action_EVENT_ANY_MONSTER_DIE_58" }
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
		monsters = { 38 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 创建id为199的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199 }) then
	  return -1
	end
	
	return 0
end
