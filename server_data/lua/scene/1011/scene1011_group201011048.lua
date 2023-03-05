--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 244, monster_id = 21010301, pos = { x = -43.4, y = 0.8, z = -138.2 }, rot = { x = 0.0, y = 62.4, z = 0.0 }, level = 7 },
	{ config_id = 245, monster_id = 21010301, pos = { x = -44.8, y = 0.8, z = -133.9 }, rot = { x = 0.0, y = 90.9, z = 0.0 }, level = 7 },
	{ config_id = 246, monster_id = 21010301, pos = { x = -43.9, y = 0.8, z = -129.4 }, rot = { x = 0.0, y = 117.3, z = 0.0 }, level = 7 },
	{ config_id = 247, monster_id = 21010501, pos = { x = -52.2, y = 0.8, z = -137.8 }, rot = { x = 0.0, y = 74.3, z = 0.0 }, level = 7, affix = { 1008, 1010 }, isElite = true, pose_id = 32 },
	{ config_id = 248, monster_id = 21010501, pos = { x = -52.5, y = 0.8, z = -134.0 }, rot = { x = 0.0, y = 102.7, z = 0.0 }, level = 7, affix = { 1008, 1010 }, isElite = true, pose_id = 32 },
	{ config_id = 249, monster_id = 21010501, pos = { x = -51.3, y = 0.8, z = -128.4 }, rot = { x = 0.0, y = 113.2, z = 0.0 }, level = 7, affix = { 1008, 1010 }, isElite = true, pose_id = 32 },
	{ config_id = 266, monster_id = 21010501, pos = { x = -51.9, y = 0.8, z = -130.9 }, rot = { x = 0.0, y = 93.7, z = 0.0 }, level = 7, affix = { 1008, 1010 }, isElite = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 286, gadget_id = 70350004, pos = { x = -80.5, y = 0.8, z = -139.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 287, gadget_id = 70350004, pos = { x = -80.4, y = 0.8, z = -133.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 288, gadget_id = 70380004, pos = { x = -36.0, y = 0.8, z = -133.9 }, rot = { x = 0.0, y = 27.1, z = 0.0 }, level = 7, route_id = 1011002 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_159", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_159", action = "action_EVENT_ANY_MONSTER_DIE_159" }
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
		monsters = { },
		gadgets = { 286, 287 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 244, 245, 246, 247, 248, 249, 266 },
		gadgets = { 286, 287, 288 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_159" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_159(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_159(context, evt)
	-- 将configid为 286 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 286, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 287 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
