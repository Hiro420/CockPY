--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 534001, monster_id = 22010101, pos = { x = 327.0, y = 228.5, z = 782.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "深渊法师", disableWander = true, pose_id = 0 },
	{ config_id = 534004, monster_id = 21010501, pos = { x = 324.9, y = 228.5, z = 788.4 }, rot = { x = 0.0, y = 82.6, z = 0.0 }, level = 19, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 534002, gadget_id = 70211012, pos = { x = 325.6, y = 228.5, z = 785.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 534005, gadget_id = 70220013, pos = { x = 322.2, y = 228.4, z = 785.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 534006, gadget_id = 70310001, pos = { x = 328.5, y = 228.3, z = 786.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_534003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_534003", action = "action_EVENT_ANY_MONSTER_DIE_534003" }
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
		monsters = { 534001, 534004 },
		gadgets = { 534002, 534005, 534006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_534003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_534003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_534003(context, evt)
	-- 将configid为 534002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 534002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
