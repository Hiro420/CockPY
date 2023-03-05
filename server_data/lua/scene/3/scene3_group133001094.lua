--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 444, monster_id = 20011201, pos = { x = 1993.9, y = 204.9, z = -1364.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, drop_tag = "史莱姆" },
	{ config_id = 445, monster_id = 20011201, pos = { x = 1996.4, y = 205.0, z = -1362.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, drop_tag = "史莱姆" },
	{ config_id = 446, monster_id = 21010501, pos = { x = 2000.4, y = 204.9, z = -1358.7 }, rot = { x = 0.0, y = 40.0, z = 0.0 }, level = 4, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 447, monster_id = 21010501, pos = { x = 1992.4, y = 205.0, z = -1366.4 }, rot = { x = 0.0, y = 243.5, z = 0.0 }, level = 4, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 677, monster_id = 21010101, pos = { x = 1992.7, y = 204.6, z = -1362.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "丘丘人" },
	{ config_id = 678, monster_id = 21010101, pos = { x = 1994.3, y = 204.6, z = -1360.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "丘丘人" },
	{ config_id = 679, monster_id = 21010701, pos = { x = 1993.1, y = 204.6, z = -1361.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "丘丘人" },
	{ config_id = 680, monster_id = 21010301, pos = { x = 1995.9, y = 204.8, z = -1360.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 3, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1764, gadget_id = 70310001, pos = { x = 2001.2, y = 205.0, z = -1360.2 }, rot = { x = 0.0, y = 235.9, z = 0.0 }, level = 5 },
	{ config_id = 1765, gadget_id = 70310001, pos = { x = 1994.1, y = 204.2, z = -1356.9 }, rot = { x = 0.0, y = 8.5, z = 0.0 }, level = 5 },
	{ config_id = 1766, gadget_id = 70211012, pos = { x = 2001.3, y = 205.3, z = -1363.0 }, rot = { x = 0.0, y = 269.7, z = 356.2 }, level = 5, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 1921, gadget_id = 70220010, pos = { x = 1990.6, y = 204.3, z = -1360.1 }, rot = { x = 0.0, y = 225.5, z = 0.0 }, level = 5 },
	{ config_id = 1922, gadget_id = 70220010, pos = { x = 2000.8, y = 204.6, z = -1356.0 }, rot = { x = 0.0, y = 225.5, z = 0.0 }, level = 5 },
	{ config_id = 1923, gadget_id = 70220010, pos = { x = 2002.5, y = 205.6, z = -1369.6 }, rot = { x = 0.0, y = 225.5, z = 0.0 }, level = 5 },
	{ config_id = 2399, gadget_id = 70310006, pos = { x = 1994.9, y = 204.8, z = -1362.3 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 5, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_82", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82", action = "action_EVENT_ANY_MONSTER_DIE_82", trigger_count = 0, tlog_tag = "小平原_营地_遗迹附近_完成" },
	{ name = "GADGET_STATE_CHANGE_367", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_367", action = "action_EVENT_GADGET_STATE_CHANGE_367", trigger_count = 0, tlog_tag = "小平原_营地_遗迹附近_结束" }
}

-- 变量
variables = {
	{ name = "is_cleared", value = 0, no_refresh = true }
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
		-- description = ,
		monsters = { 444, 445, 446, 447 },
		gadgets = { 1764, 1765, 1766, 1921, 1922, 1923, 2399 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82", "GADGET_STATE_CHANGE_367" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 444, 445, 446, 447 },
		gadgets = { 1764, 1765, 1766, 1921, 1922, 1923, 2399 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82(context, evt)
	-- 将configid为 1766 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1766, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_367(context, evt)
	if 1766 ~= evt.param1 then
		return false
	end
	
	if 1766 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_367(context, evt)
	-- 将本组内变量名为 "is_cleared" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "is_cleared", 1) then
	  return -1
	end
	
	return 0
end
