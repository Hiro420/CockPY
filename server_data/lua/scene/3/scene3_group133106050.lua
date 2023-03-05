--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 50001, monster_id = 21011201, pos = { x = -699.1, y = 215.8, z = 1307.1 }, rot = { x = 0.0, y = 245.8, z = 0.0 }, level = 29, drop_id = 1000100, disableWander = true, pose_id = 9013 },
	{ config_id = 50002, monster_id = 21010601, pos = { x = -701.5, y = 214.8, z = 1304.4 }, rot = { x = 0.0, y = 339.6, z = 0.0 }, level = 29, drop_id = 1000100, disableWander = true, pose_id = 9016 },
	{ config_id = 50003, monster_id = 21020301, pos = { x = -692.6, y = 217.5, z = 1311.7 }, rot = { x = 0.0, y = 227.8, z = 0.0 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 50004, monster_id = 21030101, pos = { x = -694.7, y = 217.2, z = 1311.7 }, rot = { x = 0.0, y = 87.7, z = 0.0 }, level = 30, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 50005, monster_id = 21010201, pos = { x = -693.4, y = 216.9, z = 1309.0 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 50006, monster_id = 21010601, pos = { x = -700.2, y = 216.9, z = 1314.4 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 30, drop_tag = "丘丘人", pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 50007, gadget_id = 70220013, pos = { x = -703.0, y = 216.8, z = 1316.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 50008, gadget_id = 70220013, pos = { x = -688.7, y = 217.7, z = 1311.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 50009, gadget_id = 70220014, pos = { x = -702.7, y = 216.7, z = 1314.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 50010, gadget_id = 70220014, pos = { x = -689.4, y = 217.9, z = 1312.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 50011, gadget_id = 70220014, pos = { x = -688.2, y = 218.1, z = 1312.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 50012, gadget_id = 70220005, pos = { x = -701.7, y = 216.9, z = 1314.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 50013, gadget_id = 70211012, pos = { x = -702.2, y = 216.7, z = 1312.8 }, rot = { x = 2.8, y = 176.3, z = 354.8 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_50014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_50014", action = "action_EVENT_ANY_MONSTER_DIE_50014" }
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
		monsters = { 50003, 50004, 50005, 50006 },
		gadgets = { 50007, 50008, 50009, 50010, 50011, 50012, 50013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_50014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 50001, 50002 },
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
function condition_EVENT_ANY_MONSTER_DIE_50014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_50014(context, evt)
	-- 将configid为 50013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 50013, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
