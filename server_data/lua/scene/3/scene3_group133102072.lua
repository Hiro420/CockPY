--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 125, monster_id = 21020301, pos = { x = 1228.9, y = 200.4, z = 350.1 }, rot = { x = 3.8, y = 277.8, z = 358.7 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 422, monster_id = 21010501, pos = { x = 1205.9, y = 207.9, z = 350.4 }, rot = { x = 0.0, y = 199.0, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 423, monster_id = 21010501, pos = { x = 1211.2, y = 201.6, z = 353.9 }, rot = { x = 359.1, y = 157.8, z = 348.6 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 425, monster_id = 21011201, pos = { x = 1224.8, y = 200.6, z = 343.7 }, rot = { x = 2.8, y = 233.0, z = 353.4 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 72001, monster_id = 21020301, pos = { x = 1230.5, y = 200.5, z = 352.2 }, rot = { x = 0.0, y = 260.3, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 401 },
	{ config_id = 72006, monster_id = 21010601, pos = { x = 1228.3, y = 201.3, z = 342.5 }, rot = { x = 0.0, y = 40.6, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 9011 },
	{ config_id = 72008, monster_id = 20011201, pos = { x = 1229.5, y = 202.0, z = 343.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_id = 1000100, pose_id = 901 },
	{ config_id = 72011, monster_id = 21010601, pos = { x = 1223.1, y = 200.0, z = 354.7 }, rot = { x = 0.0, y = 20.9, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 9011 },
	{ config_id = 72012, monster_id = 21011001, pos = { x = 1205.9, y = 207.9, z = 349.7 }, rot = { x = 0.0, y = 199.5, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 278, gadget_id = 70211022, pos = { x = 1236.4, y = 201.8, z = 353.0 }, rot = { x = 0.3, y = 261.5, z = 359.9 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 286, gadget_id = 70220013, pos = { x = 1234.6, y = 201.0, z = 345.4 }, rot = { x = 3.5, y = 329.5, z = 359.0 }, level = 16 },
	{ config_id = 287, gadget_id = 70220013, pos = { x = 1221.6, y = 200.5, z = 341.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 72002, gadget_id = 70300087, pos = { x = 1223.3, y = 200.1, z = 349.1 }, rot = { x = 2.7, y = 0.1, z = 2.7 }, level = 16 },
	{ config_id = 72004, gadget_id = 70220014, pos = { x = 1232.3, y = 200.8, z = 347.1 }, rot = { x = 351.2, y = 30.3, z = 356.2 }, level = 16 },
	{ config_id = 72005, gadget_id = 70220014, pos = { x = 1218.1, y = 200.6, z = 340.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 72007, gadget_id = 70300087, pos = { x = 1229.5, y = 201.2, z = 343.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 72009, gadget_id = 70220005, pos = { x = 1223.6, y = 200.0, z = 355.8 }, rot = { x = 0.0, y = 121.9, z = 0.0 }, level = 16 },
	{ config_id = 72010, gadget_id = 70220005, pos = { x = 1222.6, y = 200.0, z = 355.9 }, rot = { x = 0.0, y = 121.9, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_164", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164", action = "action_EVENT_ANY_MONSTER_DIE_164" },
	{ name = "ANY_MONSTER_DIE_72013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72013", action = "action_EVENT_ANY_MONSTER_DIE_72013" }
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
		monsters = { 125, 422, 423, 425 },
		gadgets = { 278, 286, 287, 72002, 72004, 72005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_164" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 72001, 72006, 72008, 72011, 72012 },
		gadgets = { 72007, 72009, 72010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_72013" },
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
function condition_EVENT_ANY_MONSTER_DIE_164(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164(context, evt)
	-- 将configid为 278 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310207201") then
	  return -1
	end
	
	return 0
end
