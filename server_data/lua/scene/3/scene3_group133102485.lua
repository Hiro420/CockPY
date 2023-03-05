--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 485001, monster_id = 21010201, pos = { x = 1787.5, y = 306.8, z = 344.0 }, rot = { x = 354.4, y = 178.3, z = 355.7 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 485004, monster_id = 21020301, pos = { x = 1786.7, y = 307.3, z = 338.6 }, rot = { x = 0.0, y = 7.1, z = 0.0 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 485005, monster_id = 21011201, pos = { x = 1784.3, y = 307.2, z = 341.8 }, rot = { x = 0.0, y = 104.0, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 485006, monster_id = 21030401, pos = { x = 1790.0, y = 306.3, z = 341.4 }, rot = { x = 0.0, y = 262.2, z = 0.0 }, level = 18, drop_tag = "丘丘萨满", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 485002, gadget_id = 70211012, pos = { x = 1789.6, y = 306.6, z = 336.0 }, rot = { x = 354.9, y = 144.1, z = 5.8 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 485007, gadget_id = 70310006, pos = { x = 1787.5, y = 306.7, z = 340.9 }, rot = { x = 0.0, y = 298.2, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_485003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_485003", action = "action_EVENT_ANY_MONSTER_DIE_485003" }
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
		monsters = { 485001, 485004, 485005, 485006 },
		gadgets = { 485002, 485007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_485003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_485003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_485003(context, evt)
	-- 将configid为 485002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 485002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
