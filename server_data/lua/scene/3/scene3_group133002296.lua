--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 296001, monster_id = 21010401, pos = { x = 1589.3, y = 248.3, z = -84.2 }, rot = { x = 0.0, y = 229.0, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 },
	{ config_id = 296005, monster_id = 21010501, pos = { x = 1599.4, y = 248.6, z = -71.7 }, rot = { x = 0.0, y = 229.0, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 296006, monster_id = 21010301, pos = { x = 1586.1, y = 248.8, z = -68.2 }, rot = { x = 0.0, y = 240.8, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 296007, monster_id = 21030301, pos = { x = 1582.7, y = 249.1, z = -66.2 }, rot = { x = 0.0, y = 161.8, z = 0.0 }, level = 15, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 296008, monster_id = 21010201, pos = { x = 1598.1, y = 248.6, z = -81.6 }, rot = { x = 0.0, y = 173.7, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 296002, gadget_id = 70211012, pos = { x = 1595.8, y = 248.6, z = -69.6 }, rot = { x = 0.6, y = 278.0, z = 1.9 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 296004, gadget_id = 70310009, pos = { x = 1583.9, y = 249.1, z = -67.1 }, rot = { x = 0.0, y = 303.4, z = 0.0 }, level = 16 },
	{ config_id = 296013, gadget_id = 70220013, pos = { x = 1600.2, y = 248.5, z = -84.3 }, rot = { x = 0.0, y = 132.5, z = 0.0 }, level = 16 },
	{ config_id = 296014, gadget_id = 70220013, pos = { x = 1597.2, y = 248.4, z = -83.4 }, rot = { x = 0.0, y = 166.7, z = 0.0 }, level = 16 },
	{ config_id = 296015, gadget_id = 70220013, pos = { x = 1598.6, y = 248.5, z = -85.7 }, rot = { x = 0.0, y = 161.4, z = 0.0 }, level = 16 },
	{ config_id = 296016, gadget_id = 70220014, pos = { x = 1599.2, y = 248.4, z = -83.2 }, rot = { x = 0.0, y = 2.6, z = 0.0 }, level = 16 },
	{ config_id = 296017, gadget_id = 70220014, pos = { x = 1600.8, y = 248.4, z = -82.9 }, rot = { x = 0.0, y = 2.6, z = 0.0 }, level = 16 },
	{ config_id = 296018, gadget_id = 70310001, pos = { x = 1594.1, y = 248.5, z = -79.5 }, rot = { x = 0.0, y = 332.4, z = 0.0 }, level = 16, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_296003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_296003", action = "action_EVENT_ANY_MONSTER_DIE_296003" }
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
		monsters = { 296001, 296005, 296006, 296007, 296008 },
		gadgets = { 296002, 296004, 296013, 296014, 296015, 296016, 296017, 296018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_296003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_296003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_296003(context, evt)
	-- 将configid为 296002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
