--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 465, monster_id = 21010101, pos = { x = 254.9, y = 210.2, z = 327.8 }, rot = { x = 0.0, y = 154.3, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 466, monster_id = 21010601, pos = { x = 256.3, y = 210.2, z = 326.4 }, rot = { x = 0.0, y = 319.4, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 468, monster_id = 21010401, pos = { x = 263.1, y = 215.9, z = 334.1 }, rot = { x = 0.0, y = 107.8, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 469, monster_id = 21010401, pos = { x = 265.7, y = 211.9, z = 332.9 }, rot = { x = 0.0, y = 166.3, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 191001, monster_id = 21010501, pos = { x = 267.1, y = 216.2, z = 326.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true, affix = { 1019 }, isElite = true, pose_id = 32 },
	{ config_id = 191002, monster_id = 21011001, pos = { x = 263.1, y = 216.2, z = 333.9 }, rot = { x = 0.0, y = 176.3, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true, affix = { 1019 }, isElite = true, pose_id = 32 },
	{ config_id = 191003, monster_id = 21011201, pos = { x = 264.0, y = 210.3, z = 326.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_id = 1000100, pose_id = 9003 },
	{ config_id = 191004, monster_id = 21011201, pos = { x = 263.5, y = 210.3, z = 331.3 }, rot = { x = 0.0, y = 173.4, z = 0.0 }, level = 19, drop_id = 1000100, pose_id = 9003 },
	{ config_id = 191005, monster_id = 21011201, pos = { x = 260.9, y = 210.3, z = 329.0 }, rot = { x = 0.0, y = 87.7, z = 0.0 }, level = 19, drop_id = 1000100, pose_id = 9003 },
	{ config_id = 191008, monster_id = 21010901, pos = { x = 266.9, y = 216.3, z = 327.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 32 },
	{ config_id = 191009, monster_id = 21030101, pos = { x = 263.5, y = 210.3, z = 332.0 }, rot = { x = 0.0, y = 180.2, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 9012 },
	{ config_id = 191010, monster_id = 21010201, pos = { x = 263.6, y = 210.3, z = 326.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 9012 },
	{ config_id = 191011, monster_id = 21010201, pos = { x = 266.0, y = 210.3, z = 329.6 }, rot = { x = 0.0, y = 264.8, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 727, gadget_id = 70211001, pos = { x = 255.5, y = 210.0, z = 327.4 }, rot = { x = 338.0, y = 11.3, z = 332.0 }, level = 19, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 728, gadget_id = 70220013, pos = { x = 265.7, y = 210.3, z = 332.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 729, gadget_id = 70220013, pos = { x = 267.6, y = 210.3, z = 328.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 730, gadget_id = 70220005, pos = { x = 260.8, y = 210.1, z = 331.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 191006, gadget_id = 70310006, pos = { x = 263.4, y = 210.3, z = 329.1 }, rot = { x = 357.9, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_191007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_191007", action = "action_EVENT_ANY_MONSTER_DIE_191007" }
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
		monsters = { 465, 466, 468, 469 },
		gadgets = { 727, 728, 729, 730 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 191001, 191002, 191003, 191004, 191005 },
		gadgets = { 191006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_191007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 191002, 191003, 191004, 191005, 191008 },
		gadgets = { 191006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_191007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 191001, 191002, 191009, 191010, 191011 },
		gadgets = { 191006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_191007" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_191007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_191007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310419101") then
	  return -1
	end
	
	return 0
end
