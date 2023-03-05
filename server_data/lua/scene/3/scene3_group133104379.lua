--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 379001, monster_id = 20010901, pos = { x = 777.6, y = 238.7, z = 708.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 21, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 379004, monster_id = 20011301, pos = { x = 789.1, y = 239.3, z = 713.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 21, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 379005, monster_id = 20010601, pos = { x = 791.3, y = 237.9, z = 702.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 21, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 379002, gadget_id = 70211012, pos = { x = 784.1, y = 237.9, z = 705.3 }, rot = { x = 6.4, y = 211.6, z = 4.9 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_379003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_379003", action = "action_EVENT_ANY_MONSTER_DIE_379003" }
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
		monsters = { 379001, 379004, 379005 },
		gadgets = { 379002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_379003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_379003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_379003(context, evt)
	-- 将configid为 379002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
