--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010101, pos = { x = 52.0, y = -0.5, z = -115.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3002, monster_id = 21010101, pos = { x = 62.3, y = -0.5, z = -109.0 }, rot = { x = 0.0, y = 254.4, z = 0.0 }, level = 1 },
	{ config_id = 3003, monster_id = 21010101, pos = { x = 55.7, y = -0.5, z = -101.5 }, rot = { x = 0.0, y = 201.9, z = 0.0 }, level = 1 },
	{ config_id = 3004, monster_id = 21010201, pos = { x = 53.5, y = -0.5, z = -114.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3005, monster_id = 21010201, pos = { x = 62.1, y = -0.5, z = -108.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3006, monster_id = 21010201, pos = { x = 54.5, y = -0.5, z = -102.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3007, monster_id = 21010101, pos = { x = 54.9, y = -0.5, z = -113.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3008, monster_id = 21010101, pos = { x = 61.3, y = -0.5, z = -107.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3009, monster_id = 21010101, pos = { x = 54.3, y = -0.5, z = -101.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3010, monster_id = 21010201, pos = { x = 50.8, y = -0.5, z = -111.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3011, monster_id = 21010201, pos = { x = 51.2, y = -0.5, z = -106.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3012, gadget_id = 70211002, pos = { x = 54.9, y = -0.5, z = -108.8 }, rot = { x = 0.0, y = 87.7, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20" }
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
	rand_suite = true,
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
		monsters = { 3001, 3002, 3003 },
		gadgets = { 3012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3004, 3005, 3006 },
		gadgets = { 3012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3007, 3008, 3009, 3010, 3011 },
		gadgets = { 3012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 解锁目标3012
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3012, state = GadgetState.Default }) then
		return -1
	end
	
	-- 调用提示id为 20010301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010301) then
		return -1
	end
	
	return 0
end
