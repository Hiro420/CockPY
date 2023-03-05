--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 71001, monster_id = 21010501, pos = { x = -562.6, y = 354.6, z = 597.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 71011, monster_id = 21010501, pos = { x = -551.9, y = 357.5, z = 617.8 }, rot = { x = 0.0, y = 214.5, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 71012, monster_id = 21030401, pos = { x = -554.6, y = 354.3, z = 604.6 }, rot = { x = 0.0, y = 325.6, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 71013, monster_id = 21030201, pos = { x = -554.8, y = 354.0, z = 608.7 }, rot = { x = 0.0, y = 214.4, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 71014, monster_id = 21010501, pos = { x = -558.4, y = 353.0, z = 606.4 }, rot = { x = 0.0, y = 82.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 71002, gadget_id = 70211012, pos = { x = -551.1, y = 354.8, z = 607.6 }, rot = { x = 353.5, y = 262.5, z = 351.9 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 71004, gadget_id = 70300086, pos = { x = -551.6, y = 354.3, z = 611.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 71005, gadget_id = 70300086, pos = { x = -551.1, y = 355.3, z = 604.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 71006, gadget_id = 70300086, pos = { x = -557.5, y = 349.8, z = 615.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 71007, gadget_id = 70300086, pos = { x = -556.3, y = 353.7, z = 596.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 71008, gadget_id = 70310001, pos = { x = -551.4, y = 354.5, z = 609.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 71009, gadget_id = 70310001, pos = { x = -551.1, y = 355.0, z = 606.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 71010, gadget_id = 70310006, pos = { x = -555.8, y = 353.7, z = 606.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_71003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71003", action = "action_EVENT_ANY_MONSTER_DIE_71003" }
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
		monsters = { 71001, 71011, 71012, 71013, 71014 },
		gadgets = { 71002, 71004, 71005, 71006, 71007, 71008, 71009, 71010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_71003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71003(context, evt)
	-- 将configid为 71002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
