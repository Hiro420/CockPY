--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 643001, monster_id = 20030201, pos = { x = 1080.9, y = 200.9, z = 710.4 }, rot = { x = 0.0, y = 291.3, z = 0.0 }, level = 22, drop_tag = "雷萤" },
	{ config_id = 643004, monster_id = 20030201, pos = { x = 1081.4, y = 200.6, z = 715.2 }, rot = { x = 0.0, y = 291.6, z = 0.0 }, level = 22, drop_tag = "雷萤" },
	{ config_id = 643005, monster_id = 20030201, pos = { x = 1084.2, y = 200.5, z = 713.1 }, rot = { x = 0.0, y = 246.2, z = 0.0 }, level = 19, drop_tag = "雷萤" },
	{ config_id = 643006, monster_id = 20030201, pos = { x = 1079.2, y = 201.0, z = 712.3 }, rot = { x = 0.0, y = 278.9, z = 0.0 }, level = 22, drop_tag = "雷萤" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 643002, gadget_id = 70211012, pos = { x = 1081.1, y = 200.2, z = 712.8 }, rot = { x = 357.3, y = 271.6, z = 359.9 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_643003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_643003", action = "action_EVENT_ANY_MONSTER_DIE_643003" }
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
		monsters = { 643001, 643004, 643005, 643006 },
		gadgets = { 643002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_643003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_643003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_643003(context, evt)
	-- 将configid为 643002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 643002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
