--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 24010201, pos = { x = -317.4, y = 200.3, z = -629.6 }, rot = { x = 0.0, y = 198.0, z = 0.0 }, level = 35, drop_tag = "遗迹守卫", disableWander = true, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19002, gadget_id = 70211022, pos = { x = -311.4, y = 201.1, z = -621.3 }, rot = { x = 0.0, y = 233.8, z = 0.0 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 19004, gadget_id = 70310007, pos = { x = -336.8, y = 198.9, z = -653.0 }, rot = { x = 22.7, y = 45.6, z = 34.5 }, level = 32 },
	{ config_id = 19005, gadget_id = 70310007, pos = { x = -323.4, y = 201.2, z = -618.5 }, rot = { x = 45.4, y = 334.5, z = 61.2 }, level = 32 },
	{ config_id = 19006, gadget_id = 70310007, pos = { x = -296.4, y = 200.3, z = -645.4 }, rot = { x = 0.0, y = 19.6, z = 0.0 }, level = 32 },
	{ config_id = 19007, gadget_id = 70310007, pos = { x = -311.6, y = 199.5, z = -672.9 }, rot = { x = 21.9, y = 272.1, z = 301.8 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_19003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19003", action = "action_EVENT_ANY_MONSTER_DIE_19003" }
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
		monsters = { 19001 },
		gadgets = { 19002, 19004, 19005, 19006, 19007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19003(context, evt)
	-- 将configid为 19002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
