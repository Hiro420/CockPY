--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 484001, monster_id = 22010201, pos = { x = 306.1, y = 200.0, z = 772.1 }, rot = { x = 0.0, y = 278.4, z = 0.0 }, level = 19, drop_tag = "深渊法师", disableWander = true, pose_id = 0 },
	{ config_id = 484004, monster_id = 20010801, pos = { x = 296.4, y = 200.0, z = 772.0 }, rot = { x = 0.0, y = 278.4, z = 0.0 }, level = 32, drop_tag = "史莱姆", disableWander = true, pose_id = 901 },
	{ config_id = 484005, monster_id = 20010801, pos = { x = 300.1, y = 200.0, z = 770.6 }, rot = { x = 0.0, y = 278.4, z = 0.0 }, level = 19, drop_tag = "史莱姆", disableWander = true, pose_id = 901 },
	{ config_id = 484006, monster_id = 20010801, pos = { x = 298.4, y = 200.0, z = 766.4 }, rot = { x = 0.0, y = 257.6, z = 0.0 }, level = 19, drop_tag = "史莱姆", disableWander = true, pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 484002, gadget_id = 70211022, pos = { x = 310.7, y = 200.1, z = 774.3 }, rot = { x = 9.1, y = 213.2, z = 0.7 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_484003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_484003", action = "action_EVENT_ANY_MONSTER_DIE_484003" }
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
		monsters = { 484001 },
		gadgets = { 484002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_484003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_484003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_484003(context, evt)
	-- 将configid为 484002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 484002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
