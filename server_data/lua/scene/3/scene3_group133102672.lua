--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 672001, monster_id = 25010201, pos = { x = 1879.7, y = 211.5, z = 845.2 }, rot = { x = 0.0, y = 300.3, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 672004, monster_id = 25020201, pos = { x = 1875.2, y = 212.0, z = 843.7 }, rot = { x = 0.0, y = 38.2, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 672005, monster_id = 25030201, pos = { x = 1873.4, y = 212.0, z = 846.6 }, rot = { x = 0.0, y = 90.1, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 672013, monster_id = 25020201, pos = { x = 1865.8, y = 211.9, z = 837.7 }, rot = { x = 0.0, y = 87.1, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 672002, gadget_id = 70211012, pos = { x = 1880.7, y = 210.9, z = 849.0 }, rot = { x = 354.0, y = 221.0, z = 1.9 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 672006, gadget_id = 70310001, pos = { x = 1928.6, y = 207.3, z = 829.7 }, rot = { x = 0.0, y = 212.7, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 672007, gadget_id = 70310001, pos = { x = 1871.4, y = 212.3, z = 845.0 }, rot = { x = 0.0, y = 93.8, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 672008, gadget_id = 70310009, pos = { x = 1876.6, y = 211.3, z = 846.6 }, rot = { x = 0.0, y = 0.5, z = 350.6 }, level = 18 },
	{ config_id = 672009, gadget_id = 70220013, pos = { x = 1877.9, y = 211.0, z = 850.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 672010, gadget_id = 70220014, pos = { x = 1875.0, y = 211.4, z = 849.8 }, rot = { x = 356.7, y = 0.6, z = 338.7 }, level = 18 },
	{ config_id = 672011, gadget_id = 70220014, pos = { x = 1875.4, y = 211.5, z = 850.9 }, rot = { x = 0.0, y = 0.0, z = 338.7 }, level = 18 },
	{ config_id = 672012, gadget_id = 70310001, pos = { x = 1867.9, y = 218.9, z = 854.1 }, rot = { x = 0.0, y = 317.3, z = 0.0 }, level = 18, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_672003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_672003", action = "action_EVENT_ANY_MONSTER_DIE_672003" }
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
		monsters = { 672001, 672004, 672005, 672013 },
		gadgets = { 672002, 672006, 672007, 672008, 672009, 672010, 672011, 672012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_672003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_672003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_672003(context, evt)
	-- 将configid为 672002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
