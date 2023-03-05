--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 331001, monster_id = 22010301, pos = { x = 489.9, y = 299.8, z = 1630.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "深渊法师", disableWander = true, pose_id = 0 },
	{ config_id = 331004, monster_id = 21010901, pos = { x = 488.4, y = 300.2, z = 1635.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 331005, monster_id = 21010901, pos = { x = 495.5, y = 299.0, z = 1630.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 331002, gadget_id = 70211012, pos = { x = 491.3, y = 300.0, z = 1633.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 331006, gadget_id = 70310004, pos = { x = 493.5, y = 299.7, z = 1635.4 }, rot = { x = 0.0, y = 100.1, z = 0.0 }, level = 24 },
	{ config_id = 331007, gadget_id = 70220014, pos = { x = 492.9, y = 299.9, z = 1637.1 }, rot = { x = 0.0, y = 91.5, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_331003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_331003", action = "action_EVENT_ANY_MONSTER_DIE_331003" }
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
		monsters = { 331001, 331004, 331005 },
		gadgets = { 331002, 331006, 331007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_331003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_331003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_331003(context, evt)
	-- 将configid为 331002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
