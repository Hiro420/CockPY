--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 441001, monster_id = 22010301, pos = { x = 232.0, y = 206.1, z = 455.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "深渊法师", disableWander = true, pose_id = 0 },
	{ config_id = 441004, monster_id = 21010901, pos = { x = 229.9, y = 211.2, z = 465.3 }, rot = { x = 0.0, y = 151.0, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 441005, monster_id = 21010901, pos = { x = 232.2, y = 210.3, z = 445.7 }, rot = { x = 0.0, y = 23.7, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 441006, monster_id = 21011201, pos = { x = 237.3, y = 206.0, z = 452.2 }, rot = { x = 0.0, y = 23.7, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 441007, monster_id = 21011201, pos = { x = 221.8, y = 205.7, z = 462.5 }, rot = { x = 0.0, y = 23.7, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 441002, gadget_id = 70211022, pos = { x = 228.8, y = 206.1, z = 454.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 441008, gadget_id = 70220013, pos = { x = 226.1, y = 205.9, z = 450.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 441009, gadget_id = 70220013, pos = { x = 232.5, y = 206.0, z = 447.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 441010, gadget_id = 70220014, pos = { x = 226.8, y = 205.7, z = 463.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 441011, gadget_id = 70220005, pos = { x = 236.5, y = 206.0, z = 450.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 441012, gadget_id = 70220005, pos = { x = 229.7, y = 205.9, z = 459.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 441013, gadget_id = 70220005, pos = { x = 220.6, y = 205.6, z = 453.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_441003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_441003", action = "action_EVENT_ANY_MONSTER_DIE_441003" }
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
		monsters = { 441001, 441004, 441005, 441006, 441007 },
		gadgets = { 441002, 441008, 441009, 441010, 441011, 441012, 441013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_441003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_441003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_441003(context, evt)
	-- 将configid为 441002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
