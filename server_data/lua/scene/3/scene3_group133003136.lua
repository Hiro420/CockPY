--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 623, monster_id = 21010201, pos = { x = 2225.1, y = 224.7, z = -1189.1 }, rot = { x = 0.0, y = 292.6, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003 },
	{ config_id = 1443, monster_id = 21010201, pos = { x = 2219.9, y = 224.4, z = -1189.9 }, rot = { x = 0.0, y = 50.3, z = 0.0 }, level = 1, drop_id = 1000100, pose_id = 0 },
	{ config_id = 1444, monster_id = 21010401, pos = { x = 2214.3, y = 227.2, z = -1190.2 }, rot = { x = 0.0, y = 251.8, z = 0.0 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402 },
	{ config_id = 1476, monster_id = 21010201, pos = { x = 2224.2, y = 224.7, z = -1186.2 }, rot = { x = 0.0, y = 232.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1477, monster_id = 21010201, pos = { x = 2220.2, y = 224.4, z = -1187.9 }, rot = { x = 0.0, y = 102.5, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1478, monster_id = 21010201, pos = { x = 2222.8, y = 224.6, z = -1191.0 }, rot = { x = 0.0, y = 9.3, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 1479, monster_id = 21010401, pos = { x = 2214.3, y = 227.2, z = -1190.5 }, rot = { x = 0.0, y = 261.5, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4116, gadget_id = 70310004, pos = { x = 2222.7, y = 224.6, z = -1188.5 }, rot = { x = 0.0, y = 114.7, z = 0.0 }, level = 5 },
	{ config_id = 4117, gadget_id = 70220014, pos = { x = 2227.4, y = 224.7, z = -1187.1 }, rot = { x = 0.0, y = 183.7, z = 0.0 }, level = 5 },
	{ config_id = 4118, gadget_id = 70220014, pos = { x = 2217.4, y = 224.5, z = -1193.9 }, rot = { x = 0.0, y = 183.7, z = 0.0 }, level = 5 },
	{ config_id = 4119, gadget_id = 70220014, pos = { x = 2226.4, y = 224.7, z = -1186.3 }, rot = { x = 0.0, y = 183.7, z = 0.0 }, level = 5 },
	{ config_id = 4121, gadget_id = 70220014, pos = { x = 2218.6, y = 224.5, z = -1193.9 }, rot = { x = 0.0, y = 183.7, z = 0.0 }, level = 5 },
	{ config_id = 4122, gadget_id = 70220013, pos = { x = 2219.1, y = 226.3, z = -1201.5 }, rot = { x = 0.0, y = 309.1, z = 0.0 }, level = 5 },
	{ config_id = 4123, gadget_id = 70220013, pos = { x = 2221.3, y = 226.2, z = -1201.0 }, rot = { x = 0.0, y = 355.5, z = 0.0 }, level = 5 },
	{ config_id = 4124, gadget_id = 70220013, pos = { x = 2228.4, y = 224.7, z = -1184.8 }, rot = { x = 354.1, y = 340.2, z = 0.0 }, level = 5 },
	{ config_id = 4125, gadget_id = 70211012, pos = { x = 2222.4, y = 224.6, z = -1192.9 }, rot = { x = 0.0, y = 357.3, z = 0.0 }, level = 5, chest_drop_id = 1010800, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_511", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_511", action = "action_EVENT_ANY_MONSTER_DIE_511" }
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
	suite = 2,
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
		monsters = { 623, 1443, 1444 },
		gadgets = { 4116, 4117, 4118, 4119, 4121, 4122, 4123, 4124, 4125 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_511" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1476, 1477, 1478, 1479 },
		gadgets = { 4116, 4117, 4118, 4119, 4121, 4122, 4123, 4124 },
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
function condition_EVENT_ANY_MONSTER_DIE_511(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_511(context, evt)
	-- 解锁目标4125
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4125, state = GadgetState.Default }) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003136") then
	  return -1
	end
	
	return 0
end
