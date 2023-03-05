--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1017, monster_id = 21030201, pos = { x = 1545.5, y = 292.3, z = -1169.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 1018, monster_id = 21020201, pos = { x = 1547.8, y = 292.6, z = -1179.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 1019, monster_id = 21010301, pos = { x = 1542.8, y = 292.3, z = -1174.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2643, gadget_id = 70900019, pos = { x = 1547.4, y = 292.3, z = -1168.2 }, rot = { x = 0.0, y = 237.5, z = 0.0 }, level = 10 },
	{ config_id = 2644, gadget_id = 70220013, pos = { x = 1549.7, y = 292.2, z = -1165.1 }, rot = { x = 0.0, y = 346.9, z = 0.0 }, level = 10 },
	{ config_id = 2645, gadget_id = 70220013, pos = { x = 1550.3, y = 292.2, z = -1167.1 }, rot = { x = 0.0, y = 70.9, z = 0.0 }, level = 10 },
	{ config_id = 2646, gadget_id = 70220013, pos = { x = 1546.8, y = 292.7, z = -1182.1 }, rot = { x = 0.0, y = 327.4, z = 0.0 }, level = 10 },
	{ config_id = 2647, gadget_id = 70220013, pos = { x = 1545.1, y = 292.5, z = -1180.9 }, rot = { x = 0.0, y = 80.9, z = 0.0 }, level = 10 },
	{ config_id = 2648, gadget_id = 70220013, pos = { x = 1549.0, y = 292.9, z = -1182.7 }, rot = { x = 0.0, y = 164.8, z = 0.0 }, level = 10 },
	{ config_id = 2652, gadget_id = 70220005, pos = { x = 1548.9, y = 292.3, z = -1163.9 }, rot = { x = 0.0, y = 282.4, z = 0.0 }, level = 10 },
	{ config_id = 2654, gadget_id = 70211012, pos = { x = 1548.8, y = 292.2, z = -1169.5 }, rot = { x = 0.0, y = 149.2, z = 0.0 }, level = 10, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_433", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_433", action = "action_EVENT_ANY_MONSTER_DIE_433", tlog_tag = "小平原_营地2_交接山区_结束" }
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
		-- description = suite_3,
		monsters = { 1017, 1018, 1019 },
		gadgets = { 2643, 2644, 2645, 2646, 2647, 2648, 2652, 2654 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_433" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_433(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_433(context, evt)
	-- 将configid为 2654 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2654, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
