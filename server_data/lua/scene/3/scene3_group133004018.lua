--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30, monster_id = 21020101, pos = { x = 2176.3, y = 236.1, z = -444.0 }, rot = { x = 0.0, y = 144.0, z = 0.0 }, level = 16, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 31, monster_id = 21010101, pos = { x = 2175.9, y = 235.5, z = -447.4 }, rot = { x = 0.0, y = 76.0, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 32, monster_id = 21010101, pos = { x = 2178.1, y = 235.5, z = -449.2 }, rot = { x = 0.0, y = 66.0, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 270, gadget_id = 70211012, pos = { x = 2180.1, y = 236.1, z = -445.0 }, rot = { x = 13.1, y = 219.9, z = 357.2 }, level = 15, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_67", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_67", action = "action_EVENT_ANY_MONSTER_DIE_67", tlog_tag = "奔狼岭_18_怪物营地_结算" }
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
		monsters = { 30, 31, 32 },
		gadgets = { 270 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_67" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_67(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133004018) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_67(context, evt)
	-- 解锁目标270
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 270, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
