--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 21020101, pos = { x = -836.2, y = 184.4, z = 916.8 }, rot = { x = 0.0, y = 331.7, z = 0.0 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 35004, monster_id = 21020201, pos = { x = -837.1, y = 184.3, z = 921.3 }, rot = { x = 0.0, y = 183.0, z = 0.0 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 35006, monster_id = 21010401, pos = { x = -837.5, y = 187.8, z = 931.2 }, rot = { x = 0.0, y = 181.3, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", pose_id = 402 },
	{ config_id = 35007, monster_id = 21011001, pos = { x = -841.4, y = 187.8, z = 931.5 }, rot = { x = 0.0, y = 191.8, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35002, gadget_id = 70211022, pos = { x = -842.1, y = 182.9, z = 928.8 }, rot = { x = 0.0, y = 192.3, z = 0.0 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 35005, gadget_id = 70310004, pos = { x = -838.1, y = 184.4, z = 918.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_35003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35003", action = "action_EVENT_ANY_MONSTER_DIE_35003" }
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
		monsters = { 35001, 35004, 35006, 35007 },
		gadgets = { 35002, 35005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35003(context, evt)
	-- 将configid为 35002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
