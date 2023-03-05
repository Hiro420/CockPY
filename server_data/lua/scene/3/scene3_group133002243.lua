--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 836, monster_id = 23030101, pos = { x = 1884.4, y = 237.4, z = -797.1 }, rot = { x = 0.0, y = 94.7, z = 0.0 }, level = 9, drop_tag = "召唤师", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2132, gadget_id = 70211012, pos = { x = 1887.1, y = 237.5, z = -797.2 }, rot = { x = 5.1, y = 343.6, z = 1.7 }, level = 10, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2133, gadget_id = 70220005, pos = { x = 1890.4, y = 237.8, z = -796.1 }, rot = { x = 357.6, y = 47.3, z = 1.2 }, level = 10 },
	{ config_id = 2134, gadget_id = 70220013, pos = { x = 1881.9, y = 237.8, z = -799.7 }, rot = { x = 3.0, y = 125.6, z = 14.0 }, level = 10 },
	{ config_id = 2135, gadget_id = 70220013, pos = { x = 1881.0, y = 237.7, z = -797.5 }, rot = { x = 352.4, y = 194.2, z = 11.7 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_296", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_296", action = "action_EVENT_ANY_MONSTER_DIE_296" }
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
		monsters = { 836 },
		gadgets = { 2132, 2133, 2134, 2135 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_296" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_ANY_MONSTER_DIE_296(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_296(context, evt)
	-- 解锁目标2132
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2132, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
