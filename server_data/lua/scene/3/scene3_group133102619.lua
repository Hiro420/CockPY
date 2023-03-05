--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 619001, monster_id = 21011001, pos = { x = 1497.6, y = 228.0, z = -106.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 619006, monster_id = 21020301, pos = { x = 1502.9, y = 228.9, z = -109.8 }, rot = { x = 0.0, y = 338.2, z = 0.0 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 619007, monster_id = 21010501, pos = { x = 1501.2, y = 228.1, z = -94.6 }, rot = { x = 0.0, y = 238.7, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 619008, monster_id = 21011001, pos = { x = 1505.0, y = 228.0, z = -103.7 }, rot = { x = 11.0, y = 275.3, z = 356.4 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 619009, monster_id = 21010501, pos = { x = 1495.5, y = 232.7, z = -93.2 }, rot = { x = 0.0, y = 175.4, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 619002, gadget_id = 70211022, pos = { x = 1484.4, y = 229.0, z = -107.8 }, rot = { x = 0.0, y = 27.3, z = 0.0 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 619004, gadget_id = 70211012, pos = { x = 1488.2, y = 229.0, z = -107.2 }, rot = { x = 1.8, y = 0.1, z = 353.8 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 619005, gadget_id = 70211012, pos = { x = 1485.1, y = 228.9, z = -104.8 }, rot = { x = 3.5, y = 75.7, z = 359.1 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 619010, gadget_id = 70220013, pos = { x = 1496.9, y = 228.0, z = -109.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 619011, gadget_id = 70220013, pos = { x = 1488.0, y = 228.4, z = -102.8 }, rot = { x = 13.2, y = 40.8, z = 2.1 }, level = 16 },
	{ config_id = 619012, gadget_id = 70220014, pos = { x = 1487.3, y = 228.3, z = -101.6 }, rot = { x = 7.0, y = 359.5, z = 351.1 }, level = 16 },
	{ config_id = 619013, gadget_id = 70220014, pos = { x = 1485.1, y = 229.0, z = -109.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 619014, gadget_id = 70220014, pos = { x = 1501.5, y = 227.8, z = -96.4 }, rot = { x = 356.5, y = 359.8, z = 7.1 }, level = 16 },
	{ config_id = 619015, gadget_id = 70220014, pos = { x = 1502.3, y = 227.8, z = -97.7 }, rot = { x = 354.7, y = 359.6, z = 8.9 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_619003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_619003", action = "action_EVENT_ANY_MONSTER_DIE_619003" }
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
		monsters = { 619001, 619006, 619007, 619008, 619009 },
		gadgets = { 619002, 619004, 619005, 619010, 619011, 619012, 619013, 619014, 619015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_619003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_619003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_619003(context, evt)
	-- 将configid为 619002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 619002, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 619004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 619004, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 619005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 619005, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
