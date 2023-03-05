--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 747, monster_id = 21020101, pos = { x = 2078.3, y = 236.0, z = -597.1 }, rot = { x = 0.0, y = 87.2, z = 0.0 }, level = 16, drop_tag = "丘丘暴徒", affix = { 1001 }, isElite = true, pose_id = 401 },
	{ config_id = 748, monster_id = 21030101, pos = { x = 2086.1, y = 236.9, z = -593.7 }, rot = { x = 0.0, y = 221.3, z = 0.0 }, level = 16, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 749, monster_id = 21010301, pos = { x = 2083.0, y = 236.0, z = -594.0 }, rot = { x = 0.0, y = 230.6, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 750, monster_id = 21010301, pos = { x = 2082.8, y = 235.6, z = -597.2 }, rot = { x = 0.0, y = 330.4, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1985, gadget_id = 70310006, pos = { x = 2080.4, y = 235.9, z = -596.2 }, rot = { x = 0.0, y = 19.6, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 1986, gadget_id = 70220013, pos = { x = 2078.4, y = 236.8, z = -592.1 }, rot = { x = 6.7, y = 46.9, z = 355.3 }, level = 15 },
	{ config_id = 1988, gadget_id = 70220013, pos = { x = 2080.5, y = 236.6, z = -591.5 }, rot = { x = 3.6, y = 18.8, z = 352.7 }, level = 15 },
	{ config_id = 1989, gadget_id = 70220014, pos = { x = 2075.9, y = 235.9, z = -598.7 }, rot = { x = 0.0, y = 297.2, z = 0.0 }, level = 15 },
	{ config_id = 1990, gadget_id = 70220014, pos = { x = 2075.9, y = 235.6, z = -600.3 }, rot = { x = 0.0, y = 297.2, z = 0.0 }, level = 15 },
	{ config_id = 1991, gadget_id = 70211012, pos = { x = 2086.5, y = 235.1, z = -596.6 }, rot = { x = 344.7, y = 271.0, z = 7.0 }, level = 15, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_281", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_281", action = "action_EVENT_ANY_MONSTER_DIE_281", tlog_tag = "酒庄_230_醉汉峡右侧营地清剿_清剿完成" }
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
		monsters = { 747, 748, 749, 750 },
		gadgets = { 1985, 1986, 1988, 1989, 1990, 1991 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_281" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_281(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_281(context, evt)
	-- 解锁目标1991
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 1991, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
