--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35, monster_id = 21010201, pos = { x = -37.9, y = -0.5, z = -143.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 36, monster_id = 21010301, pos = { x = -44.1, y = -0.5, z = -149.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 37, monster_id = 21010201, pos = { x = -62.6, y = -0.5, z = -142.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 38, monster_id = 21010301, pos = { x = -69.3, y = -0.5, z = -148.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 39, monster_id = 21010201, pos = { x = -55.9, y = -0.5, z = -172.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 40, monster_id = 21010301, pos = { x = -51.4, y = -0.5, z = -164.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 145, monster_id = 20011401, pos = { x = -37.5, y = -0.5, z = -143.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 146, monster_id = 20011401, pos = { x = -42.7, y = -0.5, z = -148.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 147, monster_id = 20011401, pos = { x = -63.2, y = -0.5, z = -142.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 148, monster_id = 20011401, pos = { x = -70.3, y = -0.5, z = -147.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 149, monster_id = 20011401, pos = { x = -56.0, y = -0.5, z = -173.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 150, monster_id = 20011401, pos = { x = -52.1, y = -0.5, z = -166.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 152, monster_id = 20010301, pos = { x = -43.9, y = -0.5, z = -149.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 153, monster_id = 20010301, pos = { x = -38.7, y = -0.5, z = -142.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 154, monster_id = 20010301, pos = { x = -51.7, y = -0.5, z = -164.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 155, monster_id = 20010301, pos = { x = -55.8, y = -0.5, z = -172.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 156, monster_id = 20010301, pos = { x = -63.5, y = -0.5, z = -142.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 157, monster_id = 20010301, pos = { x = -66.1, y = -0.5, z = -151.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 70, gadget_id = 70211002, pos = { x = -51.6, y = -0.5, z = -153.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked },
	{ config_id = 71, gadget_id = 70211002, pos = { x = -70.6, y = -0.5, z = -169.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_25", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25", action = "action_EVENT_ANY_MONSTER_DIE_25" }
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
		monsters = { 35, 36, 37, 38, 39, 40 },
		gadgets = { 70, 71 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 145, 146, 147, 148, 149, 150 },
		gadgets = { 71 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 70, 71 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 152, 153, 154, 155, 156, 157 },
		gadgets = { 71 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25(context, evt)
	-- 解锁目标70
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 70, state = GadgetState.Default }) then
		return -1
	end
	
	-- 解锁目标71
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 71, state = GadgetState.Default }) then
		return -1
	end
	
	-- 调用提示id为 20010301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010301) then
		return -1
	end
	
	return 0
end
