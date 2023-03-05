--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 489001, monster_id = 21010501, pos = { x = 1731.2, y = 334.8, z = 440.4 }, rot = { x = 0.0, y = 118.8, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 489004, monster_id = 21010501, pos = { x = 1746.3, y = 329.0, z = 420.3 }, rot = { x = 0.0, y = 36.5, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 489005, monster_id = 21010501, pos = { x = 1737.7, y = 328.6, z = 437.7 }, rot = { x = 0.0, y = 138.5, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 489006, monster_id = 21010701, pos = { x = 1744.7, y = 325.9, z = 432.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 489007, monster_id = 21020201, pos = { x = 1741.7, y = 326.4, z = 434.0 }, rot = { x = 357.0, y = 128.5, z = 357.6 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 489002, gadget_id = 70211012, pos = { x = 1735.5, y = 328.1, z = 436.3 }, rot = { x = 5.8, y = 132.6, z = 14.9 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_489003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_489003", action = "action_EVENT_ANY_MONSTER_DIE_489003" }
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
		monsters = { 489004, 489005, 489006, 489007 },
		gadgets = { 489002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_489003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_489003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_489003(context, evt)
	-- 将configid为 489002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 489002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
