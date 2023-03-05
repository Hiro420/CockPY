--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 326001, monster_id = 21010501, pos = { x = 440.3, y = 246.5, z = 1095.7 }, rot = { x = 0.0, y = 292.7, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 326004, monster_id = 21010501, pos = { x = 437.1, y = 247.3, z = 1098.7 }, rot = { x = 0.0, y = 195.5, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 326005, monster_id = 22010101, pos = { x = 434.7, y = 247.1, z = 1094.4 }, rot = { x = 0.0, y = 47.8, z = 0.0 }, level = 19, drop_tag = "深渊法师", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 326002, gadget_id = 70211012, pos = { x = 437.7, y = 246.9, z = 1095.3 }, rot = { x = 350.3, y = 0.5, z = 353.8 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 326006, gadget_id = 70310001, pos = { x = 439.1, y = 246.3, z = 1093.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 326007, gadget_id = 70220013, pos = { x = 436.5, y = 246.3, z = 1091.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_326003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_326003", action = "action_EVENT_ANY_MONSTER_DIE_326003" }
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
		monsters = { 326001, 326004, 326005 },
		gadgets = { 326002, 326006, 326007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_326003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_326003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_326003(context, evt)
	-- 将configid为 326002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 326002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
