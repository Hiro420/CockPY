--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 247, monster_id = 21030301, pos = { x = 2227.5, y = 271.4, z = -269.6 }, rot = { x = 0.0, y = 208.3, z = 0.0 }, level = 18, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 248, monster_id = 21010501, pos = { x = 2226.7, y = 271.3, z = -273.6 }, rot = { x = 0.0, y = 355.7, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 249, monster_id = 21010301, pos = { x = 2229.1, y = 271.4, z = -271.7 }, rot = { x = 0.0, y = 262.2, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 250, monster_id = 20010301, pos = { x = 2229.1, y = 271.5, z = -269.9 }, rot = { x = 0.0, y = 233.6, z = 0.0 }, level = 18, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 350, gadget_id = 70211012, pos = { x = 2224.2, y = 271.5, z = -272.3 }, rot = { x = 357.6, y = 66.3, z = 357.8 }, level = 15, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 351, gadget_id = 70310004, pos = { x = 2226.9, y = 271.5, z = -271.4 }, rot = { x = 0.0, y = 240.8, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 352, gadget_id = 70220013, pos = { x = 2223.4, y = 271.5, z = -270.0 }, rot = { x = 0.0, y = 274.2, z = 0.0 }, level = 15 },
	{ config_id = 353, gadget_id = 70220013, pos = { x = 2225.7, y = 271.4, z = -268.7 }, rot = { x = 0.0, y = 152.9, z = 0.0 }, level = 15 },
	{ config_id = 354, gadget_id = 70310001, pos = { x = 2229.4, y = 271.4, z = -274.2 }, rot = { x = 0.0, y = 247.7, z = 0.0 }, level = 15, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_133", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_133", action = "action_EVENT_ANY_MONSTER_DIE_133" }
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
	rand_suite = true
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
		monsters = { 247, 248, 249, 250 },
		gadgets = { 350, 351, 352, 353, 354 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_133" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_133(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_133(context, evt)
	-- 解锁目标350
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 350, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
