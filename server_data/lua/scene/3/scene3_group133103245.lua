--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 245001, monster_id = 21010201, pos = { x = 833.1, y = 216.1, z = 1220.2 }, rot = { x = 0.0, y = 256.4, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 245006, monster_id = 21030101, pos = { x = 833.1, y = 215.9, z = 1217.1 }, rot = { x = 0.0, y = 300.5, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 245002, gadget_id = 70211012, pos = { x = 830.3, y = 216.0, z = 1219.2 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 245004, gadget_id = 70310001, pos = { x = 828.7, y = 215.9, z = 1219.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 245005, gadget_id = 70220013, pos = { x = 827.5, y = 215.9, z = 1220.2 }, rot = { x = 0.0, y = 273.2, z = 0.0 }, level = 24 },
	{ config_id = 245007, gadget_id = 70220014, pos = { x = 831.3, y = 215.9, z = 1215.9 }, rot = { x = 0.0, y = 273.2, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_245003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_245003", action = "action_EVENT_ANY_MONSTER_DIE_245003" }
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
		monsters = { 245001, 245006 },
		gadgets = { 245002, 245004, 245005, 245007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_245003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_245003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_245003(context, evt)
	-- 将configid为 245002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
