--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33002, monster_id = 21011201, pos = { x = -52.7, y = 0.5, z = -27.3 }, rot = { x = 0.0, y = 331.5, z = 0.0 }, level = 18, disableWander = true, pose_id = 9012 },
	{ config_id = 33004, monster_id = 21011201, pos = { x = -59.8, y = 1.0, z = -18.3 }, rot = { x = 0.0, y = 221.0, z = 0.0 }, level = 18, disableWander = true, pose_id = 9012 },
	{ config_id = 33005, monster_id = 20011301, pos = { x = -60.9, y = 1.0, z = -19.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30 },
	{ config_id = 33007, monster_id = 20011301, pos = { x = -54.3, y = 1.0, z = -27.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30 },
	{ config_id = 33008, monster_id = 21020301, pos = { x = -60.7, y = 0.5, z = -25.5 }, rot = { x = 0.0, y = 78.3, z = 0.0 }, level = 25 },
	{ config_id = 33009, monster_id = 21020301, pos = { x = -60.7, y = 0.5, z = -25.5 }, rot = { x = 0.0, y = 78.3, z = 0.0 }, level = 25 },
	{ config_id = 33027, monster_id = 21011201, pos = { x = -49.4, y = 0.5, z = -32.5 }, rot = { x = 0.0, y = 16.0, z = 0.0 }, level = 18, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 33010, gadget_id = 70300077, pos = { x = -50.0, y = 0.5, z = -19.2 }, rot = { x = 0.0, y = 72.7, z = 0.0 }, level = 1 },
	{ config_id = 33011, gadget_id = 70300102, pos = { x = -54.3, y = 0.5, z = -27.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 33012, gadget_id = 70300102, pos = { x = -60.8, y = 0.5, z = -19.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 33013, gadget_id = 70300089, pos = { x = -65.3, y = 0.5, z = -29.9 }, rot = { x = 0.0, y = 99.9, z = 0.0 }, level = 1 },
	{ config_id = 33014, gadget_id = 70300089, pos = { x = -47.6, y = 0.5, z = -23.6 }, rot = { x = 0.0, y = 72.1, z = 0.0 }, level = 1 },
	{ config_id = 33015, gadget_id = 70300088, pos = { x = -60.8, y = 0.5, z = -33.7 }, rot = { x = 0.0, y = 281.3, z = 0.0 }, level = 1 },
	{ config_id = 33016, gadget_id = 70300088, pos = { x = -55.7, y = 0.5, z = -15.0 }, rot = { x = 0.0, y = 100.6, z = 0.0 }, level = 1 },
	{ config_id = 33017, gadget_id = 70300088, pos = { x = -66.5, y = 0.5, z = -23.9 }, rot = { x = 0.0, y = 12.2, z = 0.0 }, level = 1 },
	{ config_id = 33022, gadget_id = 70220005, pos = { x = -50.3, y = 0.5, z = -19.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 33023, gadget_id = 70220005, pos = { x = -66.4, y = 0.5, z = -25.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_33006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "33008", condition = "condition_EVENT_ANY_MONSTER_DIE_33006", action = "action_EVENT_ANY_MONSTER_DIE_33006" }
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
		-- description = suite_1,
		monsters = { 33002, 33004, 33005, 33007, 33008 },
		gadgets = { 33010, 33011, 33012, 33013, 33014, 33015, 33016, 33017, 33022, 33023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_33006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 33009, 33027 },
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
function condition_EVENT_ANY_MONSTER_DIE_33006(context, evt)
	-- 判断剩余怪物数量是否是3
	if ScriptLib.GetGroupMonsterCount(context) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015033, 2)
	
	return 0
end
