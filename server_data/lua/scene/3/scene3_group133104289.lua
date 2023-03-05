--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 289001, monster_id = 21011201, pos = { x = 676.0, y = 239.4, z = 783.2 }, rot = { x = 0.0, y = 136.5, z = 0.0 }, level = 21, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 289004, monster_id = 22010101, pos = { x = 704.6, y = 241.5, z = 815.3 }, rot = { x = 0.0, y = 221.0, z = 0.0 }, level = 23, drop_tag = "深渊法师", pose_id = 9013 },
	{ config_id = 289006, monster_id = 21020301, pos = { x = 657.1, y = 240.1, z = 818.2 }, rot = { x = 0.0, y = 131.0, z = 0.0 }, level = 21, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 289008, monster_id = 21010701, pos = { x = 709.8, y = 239.8, z = 790.3 }, rot = { x = 0.0, y = 19.5, z = 0.0 }, level = 21, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 289011, monster_id = 21011001, pos = { x = 693.2, y = 248.8, z = 769.6 }, rot = { x = 0.0, y = 279.7, z = 0.0 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 289012, monster_id = 21011001, pos = { x = 655.4, y = 246.5, z = 803.4 }, rot = { x = 0.0, y = 134.2, z = 0.0 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 289019, monster_id = 21010201, pos = { x = 701.2, y = 241.5, z = 814.1 }, rot = { x = 0.0, y = 75.2, z = 0.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 289002, gadget_id = 70211022, pos = { x = 645.4, y = 240.7, z = 827.8 }, rot = { x = 0.0, y = 144.2, z = 0.0 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 289005, gadget_id = 70310009, pos = { x = 709.7, y = 239.2, z = 780.7 }, rot = { x = 0.0, y = 281.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 289007, gadget_id = 70211001, pos = { x = 672.0, y = 240.9, z = 825.4 }, rot = { x = 0.0, y = 174.8, z = 0.0 }, level = 20, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 289009, gadget_id = 70220013, pos = { x = 709.8, y = 240.0, z = 794.2 }, rot = { x = 356.5, y = 359.7, z = 8.9 }, level = 1 },
	{ config_id = 289010, gadget_id = 70220013, pos = { x = 713.6, y = 240.8, z = 807.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 289013, gadget_id = 70220013, pos = { x = 723.3, y = 241.4, z = 797.2 }, rot = { x = 355.6, y = 38.2, z = 5.6 }, level = 1 },
	{ config_id = 289014, gadget_id = 70220014, pos = { x = 702.7, y = 241.5, z = 803.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 289015, gadget_id = 70220014, pos = { x = 703.8, y = 241.5, z = 803.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 289016, gadget_id = 70220005, pos = { x = 674.4, y = 239.4, z = 782.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22 },
	{ config_id = 289017, gadget_id = 70220005, pos = { x = 712.3, y = 240.0, z = 791.9 }, rot = { x = 358.2, y = 359.9, z = 8.0 }, level = 22 },
	{ config_id = 289020, gadget_id = 70211002, pos = { x = 718.1, y = 241.3, z = 812.0 }, rot = { x = 0.0, y = 82.9, z = 0.0 }, level = 19, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_289003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_289003", action = "action_EVENT_ANY_MONSTER_DIE_289003" }
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
		monsters = { 289001, 289004, 289006, 289008, 289011, 289012, 289019 },
		gadgets = { 289002, 289005, 289007, 289009, 289010, 289013, 289014, 289015, 289016, 289017, 289020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_289003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_289003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_289003(context, evt)
	-- 将configid为 289002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 289002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
