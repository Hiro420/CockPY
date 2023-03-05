--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 627, monster_id = 21010901, pos = { x = 2694.6, y = 247.6, z = -428.6 }, rot = { x = 0.0, y = 141.7, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 628, monster_id = 21010901, pos = { x = 2694.9, y = 247.9, z = -431.6 }, rot = { x = 0.0, y = 31.9, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 629, monster_id = 20011001, pos = { x = 2698.7, y = 247.6, z = -431.0 }, rot = { x = 0.0, y = 285.2, z = 0.0 }, level = 18, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 630, monster_id = 21030101, pos = { x = 2698.6, y = 247.5, z = -428.7 }, rot = { x = 0.0, y = 235.4, z = 0.0 }, level = 18, drop_tag = "丘丘萨满", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1392, gadget_id = 70211012, pos = { x = 2697.2, y = 247.3, z = -427.1 }, rot = { x = 0.0, y = 181.5, z = 0.0 }, level = 20, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 1393, gadget_id = 70220013, pos = { x = 2700.4, y = 247.0, z = -426.2 }, rot = { x = 355.7, y = 129.5, z = 4.7 }, level = 20 },
	{ config_id = 1394, gadget_id = 70220013, pos = { x = 2694.5, y = 247.4, z = -425.7 }, rot = { x = 5.2, y = 241.2, z = 8.0 }, level = 20 },
	{ config_id = 1395, gadget_id = 70220014, pos = { x = 2697.8, y = 246.8, z = -424.5 }, rot = { x = 0.0, y = 129.5, z = 0.0 }, level = 20 },
	{ config_id = 1396, gadget_id = 70220014, pos = { x = 2699.3, y = 246.8, z = -424.7 }, rot = { x = 0.0, y = 335.3, z = 0.0 }, level = 20 },
	{ config_id = 1397, gadget_id = 70310004, pos = { x = 2696.6, y = 247.4, z = -429.8 }, rot = { x = 353.7, y = 206.2, z = 4.1 }, level = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_268", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_268", action = "action_EVENT_ANY_MONSTER_DIE_268", tlog_tag = "奔狼岭_243_怪物营地_结算" }
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
	rand_suite = true
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
		monsters = { 627, 628, 629, 630 },
		gadgets = { 1392, 1393, 1394, 1395, 1396, 1397 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_268" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_268(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_268(context, evt)
	-- 解锁目标1392
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 1392, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
