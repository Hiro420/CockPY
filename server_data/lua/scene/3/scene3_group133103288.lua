--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 288001, monster_id = 25010201, pos = { x = 701.6, y = 185.6, z = 1082.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "盗宝团" },
	{ config_id = 288004, monster_id = 25020201, pos = { x = 707.1, y = 185.3, z = 1083.3 }, rot = { x = 0.0, y = 286.0, z = 0.0 }, level = 24, drop_tag = "盗宝团" },
	{ config_id = 288005, monster_id = 25010201, pos = { x = 703.5, y = 184.4, z = 1087.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 288002, gadget_id = 70211012, pos = { x = 707.6, y = 185.6, z = 1081.3 }, rot = { x = 0.0, y = 305.9, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_288003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_288003", action = "action_EVENT_ANY_MONSTER_DIE_288003" }
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
		monsters = { 288001, 288004, 288005 },
		gadgets = { 288002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_288003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_288003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_288003(context, evt)
	-- 将configid为 288002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
