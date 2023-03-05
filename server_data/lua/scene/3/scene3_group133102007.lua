--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2, monster_id = 21020101, pos = { x = 1354.2, y = 207.9, z = 506.4 }, rot = { x = 0.0, y = 1.3, z = 0.0 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 7004, monster_id = 21010201, pos = { x = 1357.1, y = 207.5, z = 507.8 }, rot = { x = 0.0, y = 318.0, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 7005, monster_id = 21010201, pos = { x = 1358.3, y = 207.8, z = 510.8 }, rot = { x = 0.0, y = 272.8, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57, gadget_id = 70211012, pos = { x = 1353.5, y = 208.2, z = 510.3 }, rot = { x = 0.3, y = 103.5, z = 351.0 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 7001, gadget_id = 70220013, pos = { x = 1354.8, y = 208.7, z = 512.8 }, rot = { x = 345.4, y = 321.9, z = 6.9 }, level = 1 },
	{ config_id = 7002, gadget_id = 70220013, pos = { x = 1357.2, y = 208.4, z = 512.7 }, rot = { x = 354.9, y = 22.8, z = 355.9 }, level = 1 },
	{ config_id = 7003, gadget_id = 70310006, pos = { x = 1355.6, y = 207.8, z = 509.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_412", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_412", action = "action_EVENT_ANY_MONSTER_DIE_412" }
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
		monsters = { 2, 7004, 7005 },
		gadgets = { 57, 7001, 7002, 7003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_412" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_412(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133102007) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_412(context, evt)
	-- 将configid为 57 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
