--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 577001, monster_id = 21010201, pos = { x = 1590.2, y = 249.3, z = 281.8 }, rot = { x = 355.5, y = 194.5, z = 350.6 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 577005, monster_id = 21020201, pos = { x = 1591.2, y = 247.9, z = 292.1 }, rot = { x = 0.0, y = 219.2, z = 0.0 }, level = 16, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 577006, monster_id = 21030301, pos = { x = 1593.8, y = 249.2, z = 286.4 }, rot = { x = 9.9, y = 261.8, z = 350.5 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 577007, monster_id = 21011001, pos = { x = 1589.2, y = 247.5, z = 298.5 }, rot = { x = 7.1, y = 184.2, z = 351.2 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 577002, gadget_id = 70211022, pos = { x = 1589.1, y = 247.8, z = 289.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 577008, gadget_id = 70220026, pos = { x = 1583.5, y = 245.8, z = 294.1 }, rot = { x = 11.3, y = 0.9, z = 9.0 }, level = 16 },
	{ config_id = 577009, gadget_id = 70220026, pos = { x = 1593.5, y = 248.7, z = 289.6 }, rot = { x = 11.5, y = 2.3, z = 22.9 }, level = 16 },
	{ config_id = 577010, gadget_id = 70220005, pos = { x = 1593.4, y = 248.9, z = 287.9 }, rot = { x = 5.0, y = 0.7, z = 15.9 }, level = 16 },
	{ config_id = 577011, gadget_id = 70310006, pos = { x = 1589.3, y = 247.2, z = 292.3 }, rot = { x = 10.9, y = 1.2, z = 12.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_577003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_577003", action = "action_EVENT_ANY_MONSTER_DIE_577003" }
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
		monsters = { 577001, 577005, 577006, 577007 },
		gadgets = { 577002, 577008, 577009, 577010, 577011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_577003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_577003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_577003(context, evt)
	-- 将configid为 577002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 577002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
