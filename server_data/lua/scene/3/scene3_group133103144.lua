--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 25020201, pos = { x = 920.5, y = 260.1, z = 1610.9 }, rot = { x = 0.0, y = 43.6, z = 0.0 }, level = 24, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 144005, monster_id = 25020201, pos = { x = 924.1, y = 259.5, z = 1611.0 }, rot = { x = 0.0, y = 317.0, z = 0.0 }, level = 24, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 144006, monster_id = 25010201, pos = { x = 924.1, y = 259.4, z = 1614.3 }, rot = { x = 0.0, y = 176.2, z = 0.0 }, level = 24, drop_tag = "盗宝团", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144002, gadget_id = 70211012, pos = { x = 919.9, y = 259.8, z = 1614.0 }, rot = { x = 3.3, y = 131.5, z = 4.1 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 144007, gadget_id = 70310006, pos = { x = 922.3, y = 259.6, z = 1612.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_144003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144003", action = "action_EVENT_ANY_MONSTER_DIE_144003" }
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
		-- description = suite_1,
		monsters = { 144001, 144005, 144006 },
		gadgets = { 144002, 144007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144003(context, evt)
	-- 将configid为 144002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
