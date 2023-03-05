--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 248, monster_id = 21010301, pos = { x = 430.8, y = 207.4, z = -32.4 }, rot = { x = 0.0, y = 203.3, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 249, monster_id = 21010501, pos = { x = 426.1, y = 208.0, z = -24.9 }, rot = { x = 0.0, y = 299.2, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 250, monster_id = 21011001, pos = { x = 445.0, y = 212.9, z = -24.4 }, rot = { x = 0.0, y = 206.9, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 251, monster_id = 21020201, pos = { x = 434.7, y = 207.8, z = -25.4 }, rot = { x = 0.0, y = 181.2, z = 0.0 }, level = 21, drop_tag = "丘丘暴徒", affix = { 1001 }, isElite = true, pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 406, gadget_id = 70211022, pos = { x = 438.0, y = 207.9, z = -22.8 }, rot = { x = 8.7, y = 191.1, z = 1.7 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 407, gadget_id = 70310009, pos = { x = 428.3, y = 207.9, z = -23.3 }, rot = { x = 359.9, y = 358.5, z = 356.8 }, level = 19, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_192", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192", action = "action_EVENT_ANY_MONSTER_DIE_192" }
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
		monsters = { 248, 249, 250, 251 },
		gadgets = { 406, 407 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_192" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_192(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_192(context, evt)
	-- 将configid为 406 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 406, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
