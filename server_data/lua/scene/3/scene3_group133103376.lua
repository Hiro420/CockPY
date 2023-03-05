--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 376001, monster_id = 23030101, pos = { x = 137.9, y = 229.7, z = 1077.7 }, rot = { x = 24.0, y = 357.3, z = 347.3 }, level = 19, drop_tag = "召唤师", disableWander = true, pose_id = 0 },
	{ config_id = 376004, monster_id = 23020101, pos = { x = 141.5, y = 225.6, z = 1083.2 }, rot = { x = 14.8, y = 358.8, z = 354.5 }, level = 19, drop_tag = "债务处理人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 376002, gadget_id = 70211022, pos = { x = 142.5, y = 226.3, z = 1080.9 }, rot = { x = 23.5, y = 358.9, z = 354.6 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_376003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_376003", action = "action_EVENT_ANY_MONSTER_DIE_376003" }
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
		monsters = { 376001 },
		gadgets = { 376002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_376003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_376003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_376003(context, evt)
	-- 将configid为 376002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 376002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
