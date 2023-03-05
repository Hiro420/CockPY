--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162, monster_id = 21010201, pos = { x = 779.3, y = 239.6, z = -217.0 }, rot = { x = 0.0, y = 140.6, z = 0.0 }, level = 23, drop_tag = "丘丘人", pose_id = 9016 },
	{ config_id = 163, monster_id = 21010201, pos = { x = 800.0, y = 238.6, z = -219.6 }, rot = { x = 0.0, y = 342.5, z = 0.0 }, level = 23, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 165, monster_id = 21010201, pos = { x = 786.0, y = 239.3, z = -218.9 }, rot = { x = 0.0, y = 304.9, z = 0.0 }, level = 23, drop_tag = "丘丘人", pose_id = 9016 },
	{ config_id = 166, monster_id = 21010201, pos = { x = 799.1, y = 238.5, z = -217.4 }, rot = { x = 0.0, y = 42.3, z = 0.0 }, level = 23, drop_tag = "丘丘人", pose_id = 9016 },
	{ config_id = 174, monster_id = 21020201, pos = { x = 795.6, y = 239.2, z = -227.0 }, rot = { x = 0.0, y = 173.2, z = 0.0 }, level = 23, drop_tag = "丘丘暴徒", affix = { 1001 }, isElite = true },
	{ config_id = 45001, monster_id = 21010401, pos = { x = 787.3, y = 240.7, z = -233.4 }, rot = { x = 0.0, y = 53.7, z = 0.0 }, level = 23, drop_tag = "远程丘丘人", pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 225, gadget_id = 70211012, pos = { x = 787.3, y = 239.3, z = -223.2 }, rot = { x = 2.8, y = 73.1, z = 1.7 }, level = 25, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 245, gadget_id = 70220005, pos = { x = 798.7, y = 238.4, z = -219.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 246, gadget_id = 70220005, pos = { x = 780.6, y = 239.5, z = -219.7 }, rot = { x = 0.0, y = 124.8, z = 0.0 }, level = 25 },
	{ config_id = 247, gadget_id = 70220005, pos = { x = 786.7, y = 239.2, z = -219.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_130", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130", action = "action_EVENT_ANY_MONSTER_DIE_130" }
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
		monsters = { 162, 163, 165, 166, 174, 45001 },
		gadgets = { 225, 245, 246, 247 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_130" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_130(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_130(context, evt)
	-- 解锁目标225
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 225, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
