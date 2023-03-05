--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1095, monster_id = 21010601, pos = { x = 1718.0, y = 233.7, z = -1150.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘人" },
	{ config_id = 1096, monster_id = 21030201, pos = { x = 1715.7, y = 233.8, z = -1154.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 1168, monster_id = 21010201, pos = { x = 1722.1, y = 235.9, z = -1154.4 }, rot = { x = 0.0, y = 85.6, z = 0.0 }, level = 9, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2899, gadget_id = 70220020, pos = { x = 1723.4, y = 233.3, z = -1146.7 }, rot = { x = 0.0, y = 352.9, z = 0.0 }, level = 10 },
	{ config_id = 2903, gadget_id = 70220020, pos = { x = 1727.2, y = 234.7, z = -1150.7 }, rot = { x = 0.0, y = 37.3, z = 12.7 }, level = 10 },
	{ config_id = 2904, gadget_id = 70220020, pos = { x = 1693.8, y = 232.8, z = -1163.0 }, rot = { x = 0.0, y = 26.8, z = 0.0 }, level = 10 },
	{ config_id = 2905, gadget_id = 70220020, pos = { x = 1697.7, y = 232.6, z = -1165.2 }, rot = { x = 0.0, y = 52.3, z = 0.0 }, level = 10 },
	{ config_id = 2906, gadget_id = 70220020, pos = { x = 1696.4, y = 232.3, z = -1170.9 }, rot = { x = 0.0, y = 61.6, z = 0.0 }, level = 10 },
	{ config_id = 2907, gadget_id = 70220020, pos = { x = 1699.5, y = 232.9, z = -1173.1 }, rot = { x = 0.0, y = 40.6, z = 0.0 }, level = 10 },
	{ config_id = 2908, gadget_id = 70220020, pos = { x = 1703.7, y = 233.4, z = -1172.9 }, rot = { x = 0.0, y = 4.0, z = 0.0 }, level = 10 },
	{ config_id = 2909, gadget_id = 70220013, pos = { x = 1705.9, y = 233.3, z = -1170.2 }, rot = { x = 0.0, y = 187.7, z = 0.0 }, level = 10 },
	{ config_id = 2910, gadget_id = 70220013, pos = { x = 1707.7, y = 233.7, z = -1170.9 }, rot = { x = 0.0, y = 29.6, z = 0.0 }, level = 10 },
	{ config_id = 2911, gadget_id = 70220013, pos = { x = 1695.7, y = 232.8, z = -1161.9 }, rot = { x = 0.0, y = 303.5, z = 0.0 }, level = 10 },
	{ config_id = 2912, gadget_id = 70220013, pos = { x = 1721.1, y = 233.3, z = -1143.2 }, rot = { x = 0.0, y = 162.4, z = 0.0 }, level = 10 },
	{ config_id = 2913, gadget_id = 70220013, pos = { x = 1716.6, y = 233.5, z = -1146.5 }, rot = { x = 0.0, y = 162.4, z = 0.0 }, level = 10 },
	{ config_id = 2948, gadget_id = 70211012, pos = { x = 1724.7, y = 237.0, z = -1159.7 }, rot = { x = 3.9, y = 334.6, z = 358.2 }, level = 10, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_366", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_366", action = "action_EVENT_ANY_MONSTER_DIE_366", trigger_count = 0 }
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
		-- description = ,
		monsters = { 1095, 1096, 1168 },
		gadgets = { 2899, 2903, 2904, 2905, 2906, 2907, 2908, 2909, 2910, 2911, 2912, 2913, 2948 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_366" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_366(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001254) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_366(context, evt)
	-- 将configid为 2948 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2948, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
