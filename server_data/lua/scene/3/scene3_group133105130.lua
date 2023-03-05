--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 216, monster_id = 21020101, pos = { x = 1012.5, y = 205.0, z = 70.5 }, rot = { x = 0.0, y = 57.3, z = 0.0 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, affix = { 1001 }, isElite = true, pose_id = 401 },
	{ config_id = 222, monster_id = 21010901, pos = { x = 1011.4, y = 206.6, z = 67.0 }, rot = { x = 0.0, y = 35.6, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 223, monster_id = 21011001, pos = { x = 1032.4, y = 204.1, z = 65.6 }, rot = { x = 0.0, y = 185.1, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", pose_id = 9013 },
	{ config_id = 224, monster_id = 21010101, pos = { x = 1021.2, y = 204.3, z = 70.4 }, rot = { x = 0.0, y = 242.1, z = 0.0 }, level = 18, drop_tag = "丘丘人", pose_id = 9016 },
	{ config_id = 225, monster_id = 21010401, pos = { x = 1036.4, y = 205.1, z = 63.5 }, rot = { x = 359.2, y = 184.9, z = 358.5 }, level = 18, drop_tag = "远程丘丘人", pose_id = 9010 },
	{ config_id = 226, monster_id = 21010301, pos = { x = 1026.6, y = 202.5, z = 87.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "丘丘人", pose_id = 9014 },
	{ config_id = 227, monster_id = 21010201, pos = { x = 1037.7, y = 203.4, z = 68.6 }, rot = { x = 0.0, y = 62.2, z = 0.0 }, level = 18, drop_tag = "丘丘人", pose_id = 9015 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 311, gadget_id = 70211022, pos = { x = 1018.7, y = 204.9, z = 68.7 }, rot = { x = 4.5, y = 43.5, z = 0.9 }, level = 25, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 315, gadget_id = 70310009, pos = { x = 1010.4, y = 204.3, z = 73.6 }, rot = { x = 1.9, y = 84.9, z = 11.4 }, level = 25 },
	{ config_id = 316, gadget_id = 70300089, pos = { x = 1025.2, y = 202.4, z = 88.0 }, rot = { x = 359.6, y = 286.6, z = 355.2 }, level = 25 },
	{ config_id = 317, gadget_id = 70300088, pos = { x = 1032.3, y = 204.8, z = 61.9 }, rot = { x = 9.4, y = 271.5, z = 1.0 }, level = 25 },
	{ config_id = 318, gadget_id = 70300088, pos = { x = 1036.7, y = 205.1, z = 61.8 }, rot = { x = 1.0, y = 271.3, z = 1.0 }, level = 25 },
	{ config_id = 319, gadget_id = 70300088, pos = { x = 1025.8, y = 205.2, z = 61.5 }, rot = { x = 321.3, y = 273.0, z = 356.3 }, level = 25 },
	{ config_id = 320, gadget_id = 70300085, pos = { x = 1018.5, y = 204.5, z = 68.6 }, rot = { x = 1.9, y = 324.8, z = 355.5 }, level = 25 },
	{ config_id = 321, gadget_id = 70300091, pos = { x = 1040.1, y = 202.3, z = 69.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 322, gadget_id = 70220013, pos = { x = 1015.4, y = 202.7, z = 87.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 323, gadget_id = 70220014, pos = { x = 1014.1, y = 202.8, z = 85.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 324, gadget_id = 70220014, pos = { x = 1016.4, y = 202.8, z = 85.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_167", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167", action = "action_EVENT_ANY_MONSTER_DIE_167" }
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
		monsters = { 216, 222, 223, 224, 225, 226, 227 },
		gadgets = { 311, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_167" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167(context, evt)
	-- 将configid为 311 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
