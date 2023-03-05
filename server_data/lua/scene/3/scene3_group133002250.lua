--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 823, monster_id = 21010301, pos = { x = 1967.9, y = 220.5, z = -589.5 }, rot = { x = 0.0, y = 112.9, z = 0.0 }, level = 10, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 824, monster_id = 21010301, pos = { x = 1969.0, y = 221.1, z = -575.5 }, rot = { x = 0.0, y = 112.9, z = 0.0 }, level = 10, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 825, monster_id = 21010601, pos = { x = 1938.8, y = 224.1, z = -564.1 }, rot = { x = 0.0, y = 146.2, z = 0.0 }, level = 10, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 826, monster_id = 21010301, pos = { x = 1948.4, y = 219.9, z = -567.4 }, rot = { x = 0.0, y = 278.6, z = 0.0 }, level = 10, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2121, gadget_id = 70211012, pos = { x = 1935.9, y = 224.7, z = -560.2 }, rot = { x = 0.0, y = 118.2, z = 0.0 }, level = 10, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_293", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_293", action = "action_EVENT_ANY_MONSTER_DIE_293", tlog_tag = "酒庄_250_醉汉峡营地清剿_清剿完成" }
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
		monsters = { 823, 824, 825, 826 },
		gadgets = { 2121 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_293" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_293(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_293(context, evt)
	-- 解锁目标2121
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2121, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
