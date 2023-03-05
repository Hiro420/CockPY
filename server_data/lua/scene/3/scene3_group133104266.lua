--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 266001, monster_id = 21011201, pos = { x = 837.4, y = 226.7, z = 743.6 }, rot = { x = 0.0, y = 209.6, z = 0.0 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 266004, monster_id = 21030201, pos = { x = 853.2, y = 227.5, z = 742.2 }, rot = { x = 355.9, y = 244.0, z = 7.9 }, level = 22, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 266005, monster_id = 21020301, pos = { x = 844.8, y = 226.5, z = 734.7 }, rot = { x = 0.0, y = 209.6, z = 0.0 }, level = 22, drop_tag = "丘丘暴徒" },
	{ config_id = 266014, monster_id = 21010701, pos = { x = 843.9, y = 226.7, z = 739.2 }, rot = { x = 0.0, y = 139.9, z = 0.0 }, level = 22, drop_tag = "丘丘人", pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 266002, gadget_id = 70211022, pos = { x = 832.3, y = 227.1, z = 736.6 }, rot = { x = 0.0, y = 13.8, z = 0.0 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 266006, gadget_id = 70310009, pos = { x = 818.1, y = 226.5, z = 757.7 }, rot = { x = 3.2, y = 79.2, z = 357.6 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 266007, gadget_id = 70220026, pos = { x = 828.7, y = 226.5, z = 743.1 }, rot = { x = 354.1, y = 332.3, z = 2.1 }, level = 19 },
	{ config_id = 266008, gadget_id = 70220013, pos = { x = 827.0, y = 226.4, z = 743.4 }, rot = { x = 7.0, y = 1.0, z = 1.2 }, level = 19 },
	{ config_id = 266009, gadget_id = 70211103, pos = { x = 854.5, y = 227.9, z = 746.2 }, rot = { x = 348.9, y = 63.9, z = 3.4 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 266010, gadget_id = 70310001, pos = { x = 829.6, y = 226.8, z = 737.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 266011, gadget_id = 70310001, pos = { x = 834.8, y = 227.1, z = 736.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_266003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_266003", action = "action_EVENT_ANY_MONSTER_DIE_266003" }
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
		monsters = { 266001, 266004, 266005, 266014 },
		gadgets = { 266002, 266006, 266007, 266008, 266009, 266010, 266011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_266003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_266003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_266003(context, evt)
	-- 将configid为 266002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 266002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
