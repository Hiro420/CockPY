--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61001, monster_id = 21010201, pos = { x = 1122.0, y = 217.3, z = 1033.9 }, rot = { x = 0.0, y = 255.8, z = 0.0 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 61004, monster_id = 21011001, pos = { x = 1131.0, y = 224.9, z = 1052.6 }, rot = { x = 0.0, y = 196.3, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 61010, monster_id = 21020301, pos = { x = 1121.7, y = 217.7, z = 1046.9 }, rot = { x = 0.0, y = 203.0, z = 0.0 }, level = 26, drop_tag = "丘丘暴徒", pose_id = 0 },
	{ config_id = 61011, monster_id = 21020201, pos = { x = 1132.2, y = 218.1, z = 1038.2 }, rot = { x = 9.3, y = 252.4, z = 357.1 }, level = 26, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 61012, monster_id = 21011201, pos = { x = 1126.0, y = 217.3, z = 1033.7 }, rot = { x = 0.0, y = 333.4, z = 0.0 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 61002, gadget_id = 70211022, pos = { x = 1121.3, y = 217.2, z = 1040.3 }, rot = { x = 358.8, y = 288.8, z = 3.4 }, level = 1, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 61008, gadget_id = 70310009, pos = { x = 1120.7, y = 217.3, z = 1033.8 }, rot = { x = 353.5, y = 83.5, z = 358.1 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 61013, gadget_id = 70220013, pos = { x = 1113.7, y = 217.5, z = 1033.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 61014, gadget_id = 70220013, pos = { x = 1111.5, y = 217.4, z = 1035.6 }, rot = { x = 358.8, y = 33.1, z = 3.5 }, level = 1 },
	{ config_id = 61015, gadget_id = 70220005, pos = { x = 1110.5, y = 217.3, z = 1036.8 }, rot = { x = 357.5, y = 2.1, z = 1.5 }, level = 24 },
	{ config_id = 61016, gadget_id = 70220005, pos = { x = 1110.6, y = 217.4, z = 1043.9 }, rot = { x = 0.0, y = 183.1, z = 0.0 }, level = 24 },
	{ config_id = 61017, gadget_id = 70220014, pos = { x = 1116.2, y = 217.8, z = 1046.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 61018, gadget_id = 70220005, pos = { x = 1132.6, y = 224.9, z = 1052.6 }, rot = { x = 0.0, y = 183.1, z = 0.0 }, level = 24 },
	{ config_id = 61019, gadget_id = 70220005, pos = { x = 1111.8, y = 217.5, z = 1044.5 }, rot = { x = 0.0, y = 183.1, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_61003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_61003", action = "action_EVENT_ANY_MONSTER_DIE_61003" }
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
		-- description = suite_1,
		monsters = { 61001, 61004, 61010, 61011, 61012 },
		gadgets = { 61002, 61008, 61013, 61014, 61015, 61016, 61017, 61018, 61019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_61003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_61003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61003(context, evt)
	-- 将configid为 61002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
