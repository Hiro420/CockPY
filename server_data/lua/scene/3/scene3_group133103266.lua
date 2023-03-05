--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 266001, monster_id = 21010501, pos = { x = 776.4, y = 325.5, z = 1826.5 }, rot = { x = 0.0, y = 248.7, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9013 },
	{ config_id = 266002, monster_id = 21010301, pos = { x = 762.5, y = 324.0, z = 1824.5 }, rot = { x = 0.0, y = 181.8, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 266003, monster_id = 21011201, pos = { x = 763.6, y = 324.8, z = 1829.8 }, rot = { x = 0.0, y = 145.5, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 266004, monster_id = 21030401, pos = { x = 767.2, y = 324.2, z = 1828.7 }, rot = { x = 0.0, y = 175.1, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 266005, monster_id = 21010301, pos = { x = 770.6, y = 323.9, z = 1826.1 }, rot = { x = 0.0, y = 154.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 266006, monster_id = 21010601, pos = { x = 765.7, y = 320.7, z = 1804.1 }, rot = { x = 0.0, y = 24.9, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 266007, monster_id = 21010601, pos = { x = 757.5, y = 321.4, z = 1808.5 }, rot = { x = 0.0, y = 62.4, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 266008, monster_id = 21020101, pos = { x = 761.5, y = 320.4, z = 1805.8 }, rot = { x = 0.0, y = 24.0, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 266009, gadget_id = 70300084, pos = { x = 768.5, y = 324.4, z = 1837.4 }, rot = { x = 354.5, y = 282.3, z = 354.9 }, level = 24 },
	{ config_id = 266010, gadget_id = 70220014, pos = { x = 776.6, y = 325.8, z = 1827.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 266011, gadget_id = 70220013, pos = { x = 763.4, y = 324.6, z = 1832.1 }, rot = { x = 0.0, y = 310.2, z = 0.0 }, level = 24 },
	{ config_id = 266012, gadget_id = 70300100, pos = { x = 761.7, y = 323.7, z = 1822.8 }, rot = { x = 0.0, y = 99.9, z = 0.0 }, level = 1 },
	{ config_id = 266013, gadget_id = 70300100, pos = { x = 771.3, y = 323.7, z = 1825.0 }, rot = { x = 0.0, y = 122.9, z = 0.0 }, level = 1 },
	{ config_id = 266014, gadget_id = 70300088, pos = { x = 773.3, y = 324.3, z = 1830.7 }, rot = { x = 359.5, y = 120.2, z = 359.8 }, level = 1 },
	{ config_id = 266015, gadget_id = 70220013, pos = { x = 774.0, y = 323.7, z = 1834.7 }, rot = { x = 356.6, y = 356.3, z = 3.3 }, level = 1 },
	{ config_id = 266016, gadget_id = 70300088, pos = { x = 764.5, y = 324.8, z = 1834.9 }, rot = { x = 0.0, y = 66.5, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_266017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_266017", action = "action_EVENT_ANY_MONSTER_DIE_266017" }
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
		monsters = { 266001, 266002, 266003, 266004, 266005 },
		gadgets = { 266009, 266010, 266011, 266012, 266013, 266014, 266015, 266016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_266017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_266017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_266017(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 266007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 266008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 266006, delay_time = 3 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=764, y=324, z=1827}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
