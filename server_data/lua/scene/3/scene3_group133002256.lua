--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 884, monster_id = 21010201, pos = { x = 1942.9, y = 230.4, z = -503.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true },
	{ config_id = 885, monster_id = 21010201, pos = { x = 1973.4, y = 225.3, z = -512.7 }, rot = { x = 0.0, y = 290.4, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true },
	{ config_id = 886, monster_id = 21010201, pos = { x = 1974.5, y = 219.4, z = -531.6 }, rot = { x = 0.0, y = 285.7, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true },
	{ config_id = 887, monster_id = 21010201, pos = { x = 1945.2, y = 223.6, z = -534.9 }, rot = { x = 0.0, y = 85.3, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true },
	{ config_id = 888, monster_id = 21010901, pos = { x = 1969.9, y = 226.6, z = -576.4 }, rot = { x = 0.0, y = 308.3, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true, affix = { 1019 }, isElite = true, pose_id = 32 },
	{ config_id = 890, monster_id = 21010701, pos = { x = 1958.6, y = 219.1, z = -579.4 }, rot = { x = 0.0, y = 330.1, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true },
	{ config_id = 892, monster_id = 21010301, pos = { x = 1957.6, y = 219.0, z = -577.7 }, rot = { x = 0.0, y = 329.9, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 402 },
	{ config_id = 895, monster_id = 21030101, pos = { x = 1948.9, y = 219.2, z = -576.2 }, rot = { x = 0.0, y = 55.3, z = 0.0 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1019 }, isElite = true },
	{ config_id = 897, monster_id = 21010301, pos = { x = 1960.2, y = 219.4, z = -576.7 }, rot = { x = 0.0, y = 339.3, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 402 },
	{ config_id = 899, monster_id = 21010501, pos = { x = 1931.3, y = 218.5, z = -641.4 }, rot = { x = 0.0, y = 24.2, z = 0.0 }, level = 24, drop_id = 1000100, disableWander = true, affix = { 1010, 1019 }, isElite = true, pose_id = 0 },
	{ config_id = 900, monster_id = 21010501, pos = { x = 1952.5, y = 218.5, z = -637.0 }, rot = { x = 0.0, y = 337.9, z = 0.0 }, level = 24, drop_id = 1000100, disableWander = true, affix = { 1010, 1019 }, isElite = true, pose_id = 0 },
	{ config_id = 901, monster_id = 21010501, pos = { x = 1959.2, y = 222.8, z = -623.0 }, rot = { x = 0.0, y = 298.0, z = 0.0 }, level = 24, drop_id = 1000100, disableWander = true, affix = { 1010, 1019 }, isElite = true, pose_id = 0 },
	{ config_id = 902, monster_id = 21010501, pos = { x = 1934.5, y = 216.5, z = -663.8 }, rot = { x = 0.0, y = 6.6, z = 0.0 }, level = 24, drop_id = 1000100, disableWander = true, affix = { 1010 }, isElite = true, pose_id = 0 },
	{ config_id = 903, monster_id = 21020201, pos = { x = 1933.5, y = 212.7, z = -670.8 }, rot = { x = 0.0, y = 31.9, z = 0.0 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1018 }, isElite = true },
	{ config_id = 904, monster_id = 20011201, pos = { x = 1936.7, y = 212.6, z = -670.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true, affix = { 1018 }, isElite = true },
	{ config_id = 905, monster_id = 20011201, pos = { x = 1938.6, y = 212.5, z = -671.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true, affix = { 1018 }, isElite = true },
	{ config_id = 906, monster_id = 20011201, pos = { x = 1941.0, y = 212.5, z = -671.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true, affix = { 1018 }, isElite = true },
	{ config_id = 907, monster_id = 21030201, pos = { x = 1943.4, y = 213.0, z = -671.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true, affix = { 1019 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2171, gadget_id = 70380004, pos = { x = 1971.9, y = 230.0, z = -453.5 }, rot = { x = 0.0, y = 185.9, z = 0.0 }, level = 31, route_id = 3002189, start_route = false, persistent = true },
	{ config_id = 2172, gadget_id = 70300083, pos = { x = 1955.4, y = 220.2, z = -541.2 }, rot = { x = 358.3, y = 5.0, z = 353.1 }, level = 28 },
	{ config_id = 2173, gadget_id = 70300083, pos = { x = 1949.5, y = 218.4, z = -580.7 }, rot = { x = 3.9, y = 208.7, z = 4.1 }, level = 28 },
	{ config_id = 2174, gadget_id = 70300083, pos = { x = 1956.6, y = 218.7, z = -582.0 }, rot = { x = 0.2, y = 173.0, z = 354.0 }, level = 28 },
	{ config_id = 2202, gadget_id = 70220005, pos = { x = 1941.1, y = 214.2, z = -626.2 }, rot = { x = 0.0, y = 26.9, z = 0.0 }, level = 28 },
	{ config_id = 2203, gadget_id = 70220005, pos = { x = 1941.1, y = 213.3, z = -641.5 }, rot = { x = 0.0, y = 337.5, z = 0.0 }, level = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "PLATFORM_REACH_POINT_301", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_301", action = "action_EVENT_PLATFORM_REACH_POINT_301" },
	{ name = "PLATFORM_REACH_POINT_302", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_302", action = "action_EVENT_PLATFORM_REACH_POINT_302" },
	{ name = "PLATFORM_REACH_POINT_303", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_303", action = "action_EVENT_PLATFORM_REACH_POINT_303" },
	{ name = "PLATFORM_REACH_POINT_304", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_304", action = "action_EVENT_PLATFORM_REACH_POINT_304" },
	{ name = "ANY_GADGET_DIE_305", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_305", action = "action_EVENT_ANY_GADGET_DIE_305" },
	{ name = "ANY_GADGET_DIE_306", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_306", action = "action_EVENT_ANY_GADGET_DIE_306" },
	{ name = "ANY_GADGET_DIE_307", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_307", action = "action_EVENT_ANY_GADGET_DIE_307" },
	{ name = "PLATFORM_REACH_POINT_308", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_308", action = "" },
	{ name = "PLATFORM_REACH_POINT_309", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_309", action = "action_EVENT_PLATFORM_REACH_POINT_309" },
	{ name = "PLATFORM_REACH_POINT_310", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_310", action = "action_EVENT_PLATFORM_REACH_POINT_310" },
	{ name = "PLATFORM_REACH_POINT_311", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_311", action = "action_EVENT_PLATFORM_REACH_POINT_311" },
	{ name = "ANY_MONSTER_DIE_312", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_312", action = "action_EVENT_ANY_MONSTER_DIE_312" },
	{ name = "GADGET_CREATE_313", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_313", action = "action_EVENT_GADGET_CREATE_313" },
	{ name = "ANY_GADGET_DIE_314", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_314", action = "action_EVENT_ANY_GADGET_DIE_314" },
	{ name = "PLATFORM_REACH_POINT_315", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_315", action = "action_EVENT_PLATFORM_REACH_POINT_315" },
	{ name = "ANY_GADGET_DIE_319", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_319", action = "action_EVENT_ANY_GADGET_DIE_319" },
	{ name = "QUEST_FINISH_328", event = EventType.EVENT_QUEST_FINISH, source = "48801", condition = "condition_EVENT_QUEST_FINISH_328", action = "action_EVENT_QUEST_FINISH_328" },
	{ name = "PLATFORM_REACH_POINT_329", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_329", action = "action_EVENT_PLATFORM_REACH_POINT_329" },
	{ name = "QUEST_FINISH_330", event = EventType.EVENT_QUEST_FINISH, source = "48803", condition = "condition_EVENT_QUEST_FINISH_330", action = "action_EVENT_QUEST_FINISH_330" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_332", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "2171", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_332", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_332" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_333", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "2171", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_333", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_333" }
}

-- 变量
variables = {
	{ name = "isall", value = 0, no_refresh = true },
	{ name = "2174", value = 0, no_refresh = true },
	{ name = "2173", value = 0, no_refresh = true },
	{ name = "iskill", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_319" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2171 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_301", "PLATFORM_REACH_POINT_302", "PLATFORM_REACH_POINT_303", "PLATFORM_REACH_POINT_304", "ANY_GADGET_DIE_305", "ANY_GADGET_DIE_306", "ANY_GADGET_DIE_307", "PLATFORM_REACH_POINT_308", "PLATFORM_REACH_POINT_309", "PLATFORM_REACH_POINT_310", "PLATFORM_REACH_POINT_311", "ANY_MONSTER_DIE_312", "GADGET_CREATE_313", "ANY_GADGET_DIE_314", "PLATFORM_REACH_POINT_315", "ANY_GADGET_DIE_319", "QUEST_FINISH_328", "PLATFORM_REACH_POINT_329", "QUEST_FINISH_330", "SPECIFIC_GADGET_HP_CHANGE_332", "SPECIFIC_GADGET_HP_CHANGE_333" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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
function condition_EVENT_PLATFORM_REACH_POINT_301(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002189 的路线中的 2 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002189 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_301(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 884, delay_time = 0 }) then
	  return -1
	end
	
	-- 创生gadget 2173
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2173 }) then
		return -1
	end
	
	-- 创生gadget 2174
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2174 }) then
		return -1
	end
	
	-- 创生gadget 2172
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2172 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_302(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002189 的路线中的 3 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002189 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_302(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 885, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_303(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002189 的路线中的 4 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002189 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_303(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 886, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_304(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002189 的路线中的 5 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002189 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_304(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 887, delay_time = 0 }) then
	  return -1
	end
	
	-- 创生gadget 2202
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2202 }) then
		return -1
	end
	
	-- 创生gadget 2203
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2203 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_305(context, evt)
	if 2172 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"iskill"为0
	if ScriptLib.GetGroupVariableValue(context, "iskill") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_305(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2171, 3002190) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_306(context, evt)
	if 2174 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_306(context, evt)
	-- 将本组内变量名为 "2174" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "2174", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "2174") + ScriptLib.GetGroupVariableValue(context, "2173") == 2 then
	
	-- 将本组内变量名为 "iskill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "iskill", 1) then
	  return -1
	end
	
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2171, 3002191) then
	  return -1
	end
	
	end
	
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_307(context, evt)
	if 2173 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_307(context, evt)
	-- 将本组内变量名为 "2174" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "2173", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "2174") + ScriptLib.GetGroupVariableValue(context, "2173") == 2 then
	
	-- 将本组内变量名为 "iskill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "iskill", 1) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  return -1
	end
	
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2171, 3002191) then
	  return -1
	end
	
	end
	
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_308(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002191 的路线中的 0 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002191 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_309(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002191 的路线中的 1 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002191 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_309(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 899, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_310(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002191 的路线中的 2 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002191 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_310(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 902, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_311(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002191 的路线中的 4 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002191 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_311(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 903, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 904, delay_time = 4 }) then
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 905, delay_time = 4 }) then
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 907, delay_time = 4 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_312(context, evt)
	if 903 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_312(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 2171, 3002192) then
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002256, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_313(context, evt)
	if 2171 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_313(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002250, suite = 2 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002251, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_314(context, evt)
	if 2172 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_314(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 897, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 892, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 895, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 890, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 898, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_315(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002192 的路线中的 3 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002192 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_315(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002256") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_319(context, evt)
	if 2171 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_319(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022561") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_328(context, evt)
	--检查ID为48801的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 48801 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_328(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_329(context, evt)
	-- 判断是gadgetid 为 2171的移动平台，是否到达了3002192 的路线中的 4 点
	
	if 2171 ~= evt.param1 then
	  return false
	end
	
	if 3002192 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_329(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002256, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_330(context, evt)
	--检查ID为48803的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 48803 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_330(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 2171) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_332(context, evt)
	--[[判断指定configid的gadget的血量小于%80时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 80 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_332(context, evt)
	-- 将configid为 2171 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2171, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_333(context, evt)
	--[[判断指定configid的gadget的血量小于%20时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 20 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_333(context, evt)
	-- 将configid为 2171 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2171, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end
