--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 406001, monster_id = 21010501, pos = { x = 663.4, y = 201.0, z = 461.9 }, rot = { x = 357.5, y = 64.0, z = 0.9 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 406002, monster_id = 21010501, pos = { x = 659.3, y = 201.2, z = 466.5 }, rot = { x = 355.8, y = 34.8, z = 358.9 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 406003, monster_id = 21010501, pos = { x = 662.3, y = 204.0, z = 480.3 }, rot = { x = 356.9, y = 289.6, z = 1.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 406004, monster_id = 21010301, pos = { x = 654.7, y = 201.7, z = 456.0 }, rot = { x = 358.3, y = 143.2, z = 356.7 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 406005, monster_id = 21010301, pos = { x = 659.8, y = 201.4, z = 457.6 }, rot = { x = 356.9, y = 147.9, z = 358.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 406006, monster_id = 21010601, pos = { x = 687.7, y = 200.9, z = 458.1 }, rot = { x = 10.7, y = 294.2, z = 360.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 406007, monster_id = 21010601, pos = { x = 687.1, y = 201.1, z = 462.7 }, rot = { x = 2.6, y = 242.2, z = 6.5 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 406008, monster_id = 21020101, pos = { x = 683.1, y = 200.6, z = 459.9 }, rot = { x = 353.5, y = 268.4, z = 357.9 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 406019, monster_id = 21011001, pos = { x = 673.4, y = 210.7, z = 481.8 }, rot = { x = 6.1, y = 207.9, z = 1.2 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 406009, gadget_id = 70300077, pos = { x = 652.3, y = 205.0, z = 478.5 }, rot = { x = 6.2, y = 72.4, z = 359.0 }, level = 1 },
	{ config_id = 406010, gadget_id = 70220013, pos = { x = 652.4, y = 205.0, z = 478.8 }, rot = { x = 357.5, y = 328.2, z = 354.2 }, level = 1 },
	{ config_id = 406011, gadget_id = 70220013, pos = { x = 651.7, y = 202.0, z = 467.4 }, rot = { x = 359.9, y = 342.8, z = 0.3 }, level = 1 },
	{ config_id = 406012, gadget_id = 70300089, pos = { x = 656.5, y = 201.9, z = 453.7 }, rot = { x = 1.5, y = 99.8, z = 356.6 }, level = 1 },
	{ config_id = 406013, gadget_id = 70300089, pos = { x = 661.0, y = 201.5, z = 455.3 }, rot = { x = 2.7, y = 122.8, z = 357.5 }, level = 1 },
	{ config_id = 406014, gadget_id = 70300088, pos = { x = 667.0, y = 201.2, z = 464.6 }, rot = { x = 0.3, y = 153.8, z = 357.3 }, level = 1 },
	{ config_id = 406015, gadget_id = 70300088, pos = { x = 661.6, y = 201.2, z = 469.7 }, rot = { x = 3.0, y = 125.2, z = 355.3 }, level = 1 },
	{ config_id = 406016, gadget_id = 70300088, pos = { x = 658.7, y = 204.2, z = 480.8 }, rot = { x = 353.4, y = 9.5, z = 356.1 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_406017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_406017", action = "action_EVENT_ANY_MONSTER_DIE_406017" },
	{ name = "ANY_MONSTER_LIVE_406018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_406018", action = "action_EVENT_ANY_MONSTER_LIVE_406018" }
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
		monsters = { 406001, 406002, 406003, 406004, 406005, 406019 },
		gadgets = { 406009, 406010, 406011, 406012, 406013, 406014, 406015, 406016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_406017", "ANY_MONSTER_LIVE_406018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_406017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_406017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=660, y=201, z=465}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 406007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 406008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 406006, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_406018(context, evt)
	if 406001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_406018(context, evt)
	-- 通知groupid为133104406中,configid为：406008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 406008, 133104406) then
	  return -1
	end
	
	-- 通知groupid为133104406中,configid为：406006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 406006, 133104406) then
	  return -1
	end
	
	-- 通知groupid为133104406中,configid为：406007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 406007, 133104406) then
	  return -1
	end
	
	return 0
end
