--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51001, monster_id = 21011001, pos = { x = -709.0, y = 207.3, z = 1258.2 }, rot = { x = 0.0, y = 159.1, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 32 },
	{ config_id = 51002, monster_id = 21011001, pos = { x = -707.5, y = 207.6, z = 1260.6 }, rot = { x = 0.0, y = 112.4, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9003 },
	{ config_id = 51003, monster_id = 21010701, pos = { x = -705.7, y = 207.6, z = 1257.6 }, rot = { x = 0.0, y = 122.4, z = 0.0 }, level = 28, drop_id = 1000100, disableWander = true },
	{ config_id = 51004, monster_id = 21020201, pos = { x = -699.8, y = 207.7, z = 1244.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 51009, monster_id = 21010201, pos = { x = -699.0, y = 207.8, z = 1251.4 }, rot = { x = 0.0, y = 18.0, z = 0.0 }, level = 30, drop_tag = "丘丘人", pose_id = 9010 },
	{ config_id = 51010, monster_id = 21010201, pos = { x = -704.2, y = 206.8, z = 1246.3 }, rot = { x = 0.0, y = 170.6, z = 0.0 }, level = 30, drop_tag = "丘丘人", pose_id = 9013 },
	{ config_id = 51011, monster_id = 21010201, pos = { x = -703.1, y = 207.5, z = 1252.7 }, rot = { x = 0.0, y = 310.2, z = 0.0 }, level = 30, drop_tag = "丘丘人", pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 51005, gadget_id = 70310001, pos = { x = -701.8, y = 207.4, z = 1242.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 51006, gadget_id = 70300089, pos = { x = -704.1, y = 207.7, z = 1254.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 51007, gadget_id = 70300089, pos = { x = -698.4, y = 207.9, z = 1252.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 51008, gadget_id = 70300089, pos = { x = -704.0, y = 206.8, z = 1244.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 51012, gadget_id = 70211012, pos = { x = -698.2, y = 208.0, z = 1243.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_51013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51013", action = "action_EVENT_ANY_MONSTER_DIE_51013" }
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
		monsters = { 51004, 51009, 51010, 51011 },
		gadgets = { 51005, 51006, 51007, 51008, 51012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 51001, 51002, 51003 },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_ANY_MONSTER_DIE_51013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51013(context, evt)
	-- 将configid为 51012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51012, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
