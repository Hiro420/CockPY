--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 290001, monster_id = 21010201, pos = { x = 448.2, y = 214.7, z = 877.8 }, rot = { x = 2.6, y = 135.5, z = 353.7 }, level = 19, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 290004, monster_id = 21010201, pos = { x = 449.3, y = 214.1, z = 883.6 }, rot = { x = 352.5, y = 135.9, z = 358.6 }, level = 19, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 290005, monster_id = 21010401, pos = { x = 440.8, y = 212.9, z = 882.3 }, rot = { x = 352.5, y = 137.2, z = 358.5 }, level = 19, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 290002, gadget_id = 70211002, pos = { x = 444.6, y = 213.6, z = 881.1 }, rot = { x = 9.8, y = 308.6, z = 3.3 }, level = 19, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_290003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_290003", action = "action_EVENT_ANY_MONSTER_DIE_290003" }
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
		monsters = { 290001, 290004, 290005 },
		gadgets = { 290002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_290003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_290003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_290003(context, evt)
	-- 将configid为 290002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
