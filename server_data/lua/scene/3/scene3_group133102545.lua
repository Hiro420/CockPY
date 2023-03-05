--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 545001, monster_id = 21030101, pos = { x = 1267.2, y = 202.2, z = 954.9 }, rot = { x = 11.3, y = 0.9, z = 8.9 }, level = 21, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 545004, monster_id = 21010901, pos = { x = 1269.8, y = 206.1, z = 944.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 545005, monster_id = 21010901, pos = { x = 1269.3, y = 202.3, z = 955.6 }, rot = { x = 12.2, y = 320.6, z = 356.8 }, level = 21, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 545010, monster_id = 21011201, pos = { x = 1273.1, y = 202.7, z = 954.6 }, rot = { x = 355.9, y = 249.5, z = 349.3 }, level = 21, drop_tag = "丘丘人", pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 545002, gadget_id = 70211012, pos = { x = 1269.8, y = 202.8, z = 952.7 }, rot = { x = 0.0, y = 141.1, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 545006, gadget_id = 70220013, pos = { x = 1269.6, y = 202.8, z = 950.1 }, rot = { x = 0.0, y = 359.4, z = 0.0 }, level = 19 },
	{ config_id = 545007, gadget_id = 70220013, pos = { x = 1271.8, y = 202.8, z = 951.6 }, rot = { x = 0.0, y = 102.0, z = 0.0 }, level = 19 },
	{ config_id = 545009, gadget_id = 70310001, pos = { x = 1267.4, y = 201.9, z = 956.5 }, rot = { x = 7.1, y = 9.1, z = 6.5 }, level = 19, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_545003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_545003", action = "action_EVENT_ANY_MONSTER_DIE_545003" }
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
		monsters = { 545001, 545004, 545005, 545010 },
		gadgets = { 545002, 545006, 545007, 545009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_545003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_545003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_545003(context, evt)
	-- 将configid为 545002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 545002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
