--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23, monster_id = 21020201, pos = { x = 187.4, y = 57.0, z = 386.2 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 24, monster_id = 21020101, pos = { x = 194.9, y = 57.0, z = 385.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 50, gadget_id = 70211011, pos = { x = 191.5, y = 57.0, z = 381.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, type = GadgetType.GADGET_DUNGEON_PASS_CHEST },
	{ config_id = 51, gadget_id = 70211011, pos = { x = 192.4, y = 57.0, z = 382.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", type = GadgetType.GADGET_DUNGEON_PASS_CHEST },
	{ config_id = 52, gadget_id = 70211011, pos = { x = 190.7, y = 57.0, z = 383.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", type = GadgetType.GADGET_DUNGEON_PASS_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_19", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19", action = "action_EVENT_ANY_MONSTER_DIE_19" }
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
	rand_suite = false,
	npcs = { }
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
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 23, 24 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 创生gadget 50
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50 }) then
		return -1
	end
	
	-- 创生gadget 51
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 51 }) then
		return -1
	end
	
	-- 创生gadget 52
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 52 }) then
		return -1
	end
	
	-- 创生gadget 53
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53 }) then
		return -1
	end
	
	return 0
end
