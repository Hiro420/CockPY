--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 67001, monster_id = 21020201, pos = { x = -873.4, y = 155.4, z = 1290.3 }, rot = { x = 0.0, y = 322.6, z = 0.0 }, level = 32, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 },
	{ config_id = 67004, monster_id = 22010201, pos = { x = -877.5, y = 155.2, z = 1308.1 }, rot = { x = 0.0, y = 18.3, z = 0.0 }, level = 32, drop_tag = "深渊法师", disableWander = true, pose_id = 9013 },
	{ config_id = 67005, monster_id = 21010901, pos = { x = -869.2, y = 158.9, z = 1295.9 }, rot = { x = 0.0, y = 322.6, z = 0.0 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 67006, monster_id = 21011201, pos = { x = -888.0, y = 155.3, z = 1285.8 }, rot = { x = 0.0, y = 219.3, z = 0.0 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 67007, monster_id = 21011001, pos = { x = -867.6, y = 160.6, z = 1286.8 }, rot = { x = 0.0, y = 301.4, z = 0.0 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 67008, monster_id = 22010301, pos = { x = -862.4, y = 160.9, z = 1284.0 }, rot = { x = 0.0, y = 89.9, z = 0.0 }, level = 32, drop_tag = "深渊法师", disableWander = true, pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 67002, gadget_id = 70211022, pos = { x = -870.9, y = 155.7, z = 1290.5 }, rot = { x = 0.0, y = 299.3, z = 0.0 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 67009, gadget_id = 70300087, pos = { x = -858.2, y = 160.6, z = 1284.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_67003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_67003", action = "action_EVENT_ANY_MONSTER_DIE_67003" }
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
		monsters = { 67001, 67004, 67005, 67006, 67007, 67008 },
		gadgets = { 67002, 67009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_67003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_67003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_67003(context, evt)
	-- 将configid为 67002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 67002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
