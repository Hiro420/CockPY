--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6, monster_id = 21010301, pos = { x = 843.7, y = 206.5, z = -41.8 }, rot = { x = 0.0, y = 242.1, z = 0.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 7, monster_id = 21020201, pos = { x = 847.6, y = 207.4, z = -48.7 }, rot = { x = 0.0, y = 239.7, z = 0.0 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, affix = { 1001 }, isElite = true, pose_id = 0 },
	{ config_id = 8, monster_id = 21011001, pos = { x = 855.4, y = 213.4, z = -48.4 }, rot = { x = 0.0, y = 318.0, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 9, monster_id = 21011001, pos = { x = 845.2, y = 207.5, z = -49.8 }, rot = { x = 0.0, y = 57.0, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 270, gadget_id = 70211012, pos = { x = 849.2, y = 210.5, z = -55.8 }, rot = { x = 0.0, y = 332.1, z = 0.0 }, level = 25, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
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
		monsters = { 6, 7, 8, 9 },
		gadgets = { 270 },
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
	-- 将configid为 270 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
