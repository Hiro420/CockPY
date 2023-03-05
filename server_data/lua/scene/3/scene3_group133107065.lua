--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65001, monster_id = 21010201, pos = { x = -427.3, y = 279.1, z = 640.1 }, rot = { x = 0.0, y = 279.2, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 65004, monster_id = 21010601, pos = { x = -431.0, y = 279.1, z = 638.5 }, rot = { x = 0.0, y = 44.8, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 65005, monster_id = 21010701, pos = { x = -428.9, y = 279.1, z = 641.2 }, rot = { x = 0.0, y = 168.3, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65002, gadget_id = 70211012, pos = { x = -427.4, y = 279.1, z = 638.3 }, rot = { x = 0.0, y = 319.5, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 65006, gadget_id = 70310006, pos = { x = -429.3, y = 279.1, z = 639.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_65003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65003", action = "action_EVENT_ANY_MONSTER_DIE_65003" }
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
		monsters = { 65001, 65004, 65005 },
		gadgets = { 65002, 65006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_65003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65003(context, evt)
	-- 将configid为 65002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
