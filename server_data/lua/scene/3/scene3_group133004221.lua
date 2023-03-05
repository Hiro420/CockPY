--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 569, monster_id = 21030101, pos = { x = 2286.5, y = 241.3, z = -471.0 }, rot = { x = 0.0, y = 154.3, z = 0.0 }, level = 18, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 570, monster_id = 20011001, pos = { x = 2289.2, y = 241.8, z = -470.8 }, rot = { x = 0.0, y = 207.3, z = 0.0 }, level = 18, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 571, monster_id = 21010101, pos = { x = 2289.0, y = 241.6, z = -474.1 }, rot = { x = 0.0, y = 319.6, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 572, monster_id = 21010101, pos = { x = 2286.0, y = 241.0, z = -474.1 }, rot = { x = 0.0, y = 40.6, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 221003, monster_id = 21010201, pos = { x = 2272.9, y = 238.5, z = -473.9 }, rot = { x = 0.0, y = 77.0, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9013 },
	{ config_id = 221004, monster_id = 21010301, pos = { x = 2274.7, y = 239.0, z = -470.2 }, rot = { x = 0.0, y = 150.5, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9013 },
	{ config_id = 221005, monster_id = 21010201, pos = { x = 2277.5, y = 239.6, z = -469.7 }, rot = { x = 0.0, y = 197.0, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9013 },
	{ config_id = 221006, monster_id = 21020201, pos = { x = 2270.8, y = 238.7, z = -465.6 }, rot = { x = 0.0, y = 145.9, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 401 },
	{ config_id = 221007, monster_id = 21030101, pos = { x = 2281.7, y = 242.5, z = -468.2 }, rot = { x = 0.0, y = 298.4, z = 0.0 }, level = 15, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1244, gadget_id = 70310004, pos = { x = 2287.6, y = 241.4, z = -472.6 }, rot = { x = 0.0, y = 225.5, z = 0.0 }, level = 15, state = GadgetState.GearStart, persistent = true },
	{ config_id = 1245, gadget_id = 70211012, pos = { x = 2281.7, y = 240.1, z = -476.1 }, rot = { x = 354.8, y = 17.7, z = 10.2 }, level = 15, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 221008, gadget_id = 70220013, pos = { x = 2268.4, y = 238.3, z = -465.3 }, rot = { x = 345.7, y = 354.4, z = 358.6 }, level = 15 },
	{ config_id = 221009, gadget_id = 70220013, pos = { x = 2277.3, y = 239.0, z = -478.5 }, rot = { x = 0.0, y = 0.0, z = 17.0 }, level = 15 },
	{ config_id = 221010, gadget_id = 70220013, pos = { x = 2275.4, y = 238.6, z = -478.6 }, rot = { x = 0.0, y = 0.0, z = 6.4 }, level = 15 },
	{ config_id = 221011, gadget_id = 70220014, pos = { x = 2281.1, y = 240.5, z = -468.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 221012, gadget_id = 70220014, pos = { x = 2266.6, y = 238.3, z = -465.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 221013, gadget_id = 70220014, pos = { x = 2274.1, y = 238.3, z = -478.0 }, rot = { x = 0.0, y = 0.0, z = 14.6 }, level = 15 },
	{ config_id = 221016, gadget_id = 70360001, pos = { x = 2276.4, y = 239.8, z = -472.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_221001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_221001", action = "action_EVENT_ANY_MONSTER_DIE_221001" },
	{ name = "ANY_MONSTER_DIE_221014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_221014", action = "action_EVENT_ANY_MONSTER_DIE_221014" },
	{ name = "SELECT_OPTION_221017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_221017", action = "action_EVENT_SELECT_OPTION_221017" }
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
		monsters = { 569, 570, 571, 572 },
		gadgets = { 1244, 1245 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_221001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 221003, 221004, 221005, 221006, 221007 },
		gadgets = { 221008, 221009, 221010, 221011, 221012, 221013, 221016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_221014", "SELECT_OPTION_221017" },
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
function condition_EVENT_ANY_MONSTER_DIE_221001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_221001(context, evt)
	-- 将configid为 1245 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1245, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_221014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "isoff", 133004278) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_221014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300422101") then
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133004221, 221016, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_221017(context, evt)
	if 221016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_221017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004278, suite = 1 }) then
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300422103") then
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133004221, monsters = {}, gadgets = {221016} }) then
			return -1
		end
	
	return 0
end
