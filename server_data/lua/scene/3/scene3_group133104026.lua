--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82, monster_id = 21010601, pos = { x = 603.6, y = 197.9, z = 230.9 }, rot = { x = 0.0, y = 142.9, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 84, monster_id = 21030301, pos = { x = 583.6, y = 197.8, z = 228.9 }, rot = { x = 0.0, y = 79.8, z = 0.0 }, level = 19, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 85, monster_id = 21010501, pos = { x = 592.3, y = 198.0, z = 229.2 }, rot = { x = 0.0, y = 252.1, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 86, monster_id = 21010501, pos = { x = 585.3, y = 197.9, z = 237.8 }, rot = { x = 0.0, y = 324.1, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57, gadget_id = 70211012, pos = { x = 588.4, y = 197.9, z = 234.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 26001, gadget_id = 70310006, pos = { x = 588.8, y = 198.0, z = 228.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 26002, gadget_id = 70220014, pos = { x = 593.9, y = 198.1, z = 225.3 }, rot = { x = 0.0, y = 10.8, z = 0.0 }, level = 19 },
	{ config_id = 26003, gadget_id = 70220014, pos = { x = 582.3, y = 197.7, z = 226.2 }, rot = { x = 2.7, y = 0.1, z = 3.6 }, level = 19 },
	{ config_id = 26004, gadget_id = 70220014, pos = { x = 593.6, y = 198.1, z = 224.5 }, rot = { x = 0.0, y = 10.8, z = 0.0 }, level = 19 },
	{ config_id = 26005, gadget_id = 70220014, pos = { x = 584.1, y = 197.7, z = 225.3 }, rot = { x = 5.3, y = 0.5, z = 9.8 }, level = 19 },
	{ config_id = 26006, gadget_id = 70220013, pos = { x = 593.6, y = 198.1, z = 242.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 26007, gadget_id = 70220013, pos = { x = 589.1, y = 197.9, z = 243.1 }, rot = { x = 3.4, y = 313.0, z = 5.6 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_40", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40", action = "action_EVENT_ANY_MONSTER_DIE_40" }
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
		monsters = { 82, 84, 85, 86 },
		gadgets = { 57, 26001, 26002, 26003, 26004, 26005, 26006, 26007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_40" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 将configid为 57 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
