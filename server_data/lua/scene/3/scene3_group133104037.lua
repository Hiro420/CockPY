--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 171, monster_id = 21010201, pos = { x = 214.0, y = 209.7, z = 38.1 }, rot = { x = 352.1, y = 300.9, z = 359.4 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 172, monster_id = 21010601, pos = { x = 213.5, y = 209.9, z = 41.1 }, rot = { x = 356.5, y = 211.7, z = 7.3 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 173, monster_id = 21030201, pos = { x = 209.1, y = 210.6, z = 40.8 }, rot = { x = 8.7, y = 117.9, z = 2.6 }, level = 19, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 177, monster_id = 21010501, pos = { x = 211.3, y = 210.0, z = 37.3 }, rot = { x = 0.4, y = 32.9, z = 349.7 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 68, gadget_id = 70211012, pos = { x = 209.2, y = 210.4, z = 38.7 }, rot = { x = 5.8, y = 65.6, z = 353.5 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 37001, gadget_id = 70310006, pos = { x = 212.0, y = 210.1, z = 39.4 }, rot = { x = 355.6, y = 0.2, z = 352.0 }, level = 19 },
	{ config_id = 37002, gadget_id = 70220013, pos = { x = 213.2, y = 209.6, z = 35.6 }, rot = { x = 353.9, y = 0.8, z = 352.0 }, level = 19 },
	{ config_id = 37003, gadget_id = 70220013, pos = { x = 211.0, y = 210.3, z = 43.6 }, rot = { x = 359.0, y = 359.7, z = 349.4 }, level = 19 },
	{ config_id = 37004, gadget_id = 70220014, pos = { x = 216.9, y = 209.5, z = 41.3 }, rot = { x = 358.2, y = 359.9, z = 352.0 }, level = 19 },
	{ config_id = 37005, gadget_id = 70220014, pos = { x = 217.5, y = 209.4, z = 40.1 }, rot = { x = 359.1, y = 359.6, z = 352.9 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_51", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51", action = "action_EVENT_ANY_MONSTER_DIE_51" }
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
		monsters = { 171, 172, 173, 177 },
		gadgets = { 68, 37001, 37002, 37003, 37004, 37005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 将configid为 68 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
