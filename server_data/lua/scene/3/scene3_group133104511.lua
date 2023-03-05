--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 511001, monster_id = 21030401, pos = { x = 371.7, y = 207.5, z = 628.9 }, rot = { x = 0.0, y = 147.6, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 511002, monster_id = 21011201, pos = { x = 370.9, y = 207.5, z = 624.0 }, rot = { x = 0.0, y = 354.4, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 511003, monster_id = 21011201, pos = { x = 374.8, y = 207.5, z = 627.0 }, rot = { x = 0.0, y = 294.0, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 511004, monster_id = 21011001, pos = { x = 367.2, y = 212.8, z = 612.2 }, rot = { x = 0.0, y = 38.0, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 511005, monster_id = 20011301, pos = { x = 377.6, y = 207.9, z = 633.2 }, rot = { x = 356.3, y = 174.8, z = 358.5 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 511006, monster_id = 21020301, pos = { x = 369.9, y = 207.5, z = 620.8 }, rot = { x = 0.0, y = 58.5, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 511007, monster_id = 21020301, pos = { x = 344.7, y = 205.1, z = 612.4 }, rot = { x = 2.9, y = 58.6, z = 1.4 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 511008, monster_id = 21011201, pos = { x = 345.0, y = 205.4, z = 613.9 }, rot = { x = 3.2, y = 38.7, z = 0.3 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 511009, monster_id = 21011201, pos = { x = 346.1, y = 205.3, z = 611.8 }, rot = { x = 3.2, y = 44.2, z = 0.6 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 511012, gadget_id = 70300102, pos = { x = 377.3, y = 207.4, z = 633.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 511014, gadget_id = 70300089, pos = { x = 379.2, y = 207.3, z = 626.7 }, rot = { x = 1.4, y = 72.3, z = 1.4 }, level = 1 },
	{ config_id = 511017, gadget_id = 70300088, pos = { x = 362.9, y = 207.1, z = 616.9 }, rot = { x = 353.9, y = 34.0, z = 32.6 }, level = 1 },
	{ config_id = 511018, gadget_id = 70220005, pos = { x = 377.6, y = 207.3, z = 621.7 }, rot = { x = 359.8, y = 0.0, z = 359.9 }, level = 1 },
	{ config_id = 511019, gadget_id = 70220005, pos = { x = 352.3, y = 207.5, z = 622.4 }, rot = { x = 352.9, y = 0.3, z = 353.8 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_511020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_511020", action = "action_EVENT_ANY_MONSTER_DIE_511020" }
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
		monsters = { 511001, 511002, 511003, 511004, 511005, 511006 },
		gadgets = { 511012, 511014, 511017, 511018, 511019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_511020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 511007, 511008, 511009 },
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
function condition_EVENT_ANY_MONSTER_DIE_511020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_511020(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104511, 2)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
