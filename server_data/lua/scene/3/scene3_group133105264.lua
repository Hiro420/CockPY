--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 264001, monster_id = 21030401, pos = { x = 841.6, y = 205.6, z = -37.8 }, rot = { x = 0.0, y = 104.7, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 264002, monster_id = 21011201, pos = { x = 854.6, y = 207.3, z = -43.2 }, rot = { x = 0.0, y = 306.4, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 264003, monster_id = 21011201, pos = { x = 852.0, y = 207.0, z = -38.4 }, rot = { x = 0.0, y = 200.3, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 264005, monster_id = 21011001, pos = { x = 857.4, y = 206.3, z = -26.3 }, rot = { x = 0.0, y = 190.0, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 264006, monster_id = 21020301, pos = { x = 858.3, y = 206.6, z = -30.0 }, rot = { x = 0.0, y = 209.4, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 264007, monster_id = 21011001, pos = { x = 860.7, y = 206.7, z = -27.1 }, rot = { x = 0.0, y = 208.7, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 264008, monster_id = 21011001, pos = { x = 854.5, y = 213.4, z = -47.7 }, rot = { x = 0.0, y = 338.9, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 264009, monster_id = 21011201, pos = { x = 849.1, y = 206.9, z = -43.9 }, rot = { x = 0.0, y = 48.6, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 264004, gadget_id = 70300107, pos = { x = 852.0, y = 206.9, z = -41.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 264011, gadget_id = 70300084, pos = { x = 863.2, y = 209.1, z = -41.4 }, rot = { x = 6.9, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 264012, gadget_id = 70300084, pos = { x = 851.3, y = 206.2, z = -30.5 }, rot = { x = 6.9, y = 283.0, z = 0.0 }, level = 25 },
	{ config_id = 264013, gadget_id = 70300084, pos = { x = 837.5, y = 204.3, z = -33.8 }, rot = { x = 3.0, y = 233.9, z = 0.7 }, level = 1 },
	{ config_id = 264014, gadget_id = 70220013, pos = { x = 858.1, y = 208.7, z = -48.1 }, rot = { x = 12.2, y = 1.0, z = 9.8 }, level = 1 },
	{ config_id = 264015, gadget_id = 70310001, pos = { x = 854.8, y = 207.0, z = -33.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, state = GadgetState.GearStart },
	{ config_id = 264016, gadget_id = 70310001, pos = { x = 860.5, y = 208.2, z = -37.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_264010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_264010", action = "action_EVENT_ANY_MONSTER_DIE_264010" }
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
		-- description = suite_1,
		monsters = { 264001, 264002, 264003, 264008, 264009 },
		gadgets = { 264004, 264011, 264012, 264013, 264014, 264015, 264016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_264010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 264005, 264006, 264007 },
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
function condition_EVENT_ANY_MONSTER_DIE_264010(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) <= 2 then
		return true
	
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_264010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105264, 2)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=853, y=206, z=-31}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	return 0
end
