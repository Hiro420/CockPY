--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33001, monster_id = 21011001, pos = { x = -86.0, y = 202.9, z = -788.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 33004, monster_id = 21010901, pos = { x = -93.6, y = 200.2, z = -786.8 }, rot = { x = 0.0, y = 32.1, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 33005, monster_id = 21011201, pos = { x = -88.8, y = 200.4, z = -783.5 }, rot = { x = 0.0, y = 10.7, z = 0.0 }, level = 30, drop_tag = "丘丘人", pose_id = 9010 },
	{ config_id = 33006, monster_id = 21010501, pos = { x = -84.1, y = 204.5, z = -794.7 }, rot = { x = 0.0, y = 352.2, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 33002, gadget_id = 70211012, pos = { x = -91.3, y = 200.6, z = -789.1 }, rot = { x = 359.4, y = 4.3, z = 8.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 33007, gadget_id = 70310001, pos = { x = -89.0, y = 200.9, z = -792.7 }, rot = { x = 357.3, y = 359.7, z = 6.2 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_33003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33003", action = "action_EVENT_ANY_MONSTER_DIE_33003" }
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
		monsters = { 33001, 33004, 33005, 33006 },
		gadgets = { 33002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_33003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 将configid为 33002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
