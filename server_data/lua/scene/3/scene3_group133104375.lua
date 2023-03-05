--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 375001, monster_id = 21010201, pos = { x = 760.4, y = 201.1, z = 580.3 }, rot = { x = 359.1, y = 360.0, z = 0.0 }, level = 21, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 375007, monster_id = 21010701, pos = { x = 758.9, y = 201.1, z = 584.1 }, rot = { x = 2.3, y = 163.1, z = 358.4 }, level = 21, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 375008, monster_id = 21011201, pos = { x = 757.3, y = 201.1, z = 581.0 }, rot = { x = 0.0, y = 59.1, z = 0.0 }, level = 21, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 375002, gadget_id = 70211012, pos = { x = 766.1, y = 201.6, z = 584.6 }, rot = { x = 8.0, y = 245.0, z = 358.2 }, level = 20, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 375004, gadget_id = 70310001, pos = { x = 765.3, y = 201.5, z = 586.2 }, rot = { x = 356.4, y = 0.1, z = 5.3 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 375005, gadget_id = 70310001, pos = { x = 766.8, y = 201.6, z = 583.2 }, rot = { x = 358.1, y = 0.5, z = 8.9 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 375006, gadget_id = 70310006, pos = { x = 760.0, y = 201.1, z = 582.1 }, rot = { x = 359.1, y = 360.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 375009, gadget_id = 70220013, pos = { x = 759.1, y = 201.3, z = 587.0 }, rot = { x = 356.4, y = 359.9, z = 1.8 }, level = 19 },
	{ config_id = 375010, gadget_id = 70220013, pos = { x = 755.5, y = 201.1, z = 585.2 }, rot = { x = 359.3, y = 317.2, z = 0.6 }, level = 19 },
	{ config_id = 375011, gadget_id = 70220014, pos = { x = 755.3, y = 201.1, z = 579.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 375012, gadget_id = 70220014, pos = { x = 761.7, y = 201.1, z = 577.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_375003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_375003", action = "action_EVENT_ANY_MONSTER_DIE_375003" }
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
		monsters = { 375001, 375007, 375008 },
		gadgets = { 375002, 375004, 375005, 375006, 375009, 375010, 375011, 375012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_375003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_375003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_375003(context, evt)
	-- 将configid为 375002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 375002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
