--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25, monster_id = 21010101, pos = { x = 1501.8, y = 218.9, z = 660.1 }, rot = { x = 1.0, y = 23.8, z = 1.0 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 26, monster_id = 21010101, pos = { x = 1501.5, y = 218.8, z = 664.6 }, rot = { x = 358.7, y = 131.6, z = 0.5 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 27, monster_id = 21010101, pos = { x = 1490.7, y = 218.8, z = 661.2 }, rot = { x = 0.4, y = 263.8, z = 358.7 }, level = 17, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 21005, monster_id = 21020201, pos = { x = 1503.8, y = 219.0, z = 665.2 }, rot = { x = 0.0, y = 208.9, z = 0.0 }, level = 19, drop_tag = "丘丘暴徒", pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 104, gadget_id = 70310006, pos = { x = 1503.9, y = 218.8, z = 662.3 }, rot = { x = 2.0, y = 360.0, z = 0.5 }, level = 18 },
	{ config_id = 105, gadget_id = 70220014, pos = { x = 1508.4, y = 218.8, z = 661.3 }, rot = { x = 6.3, y = 321.9, z = 355.1 }, level = 18 },
	{ config_id = 884, gadget_id = 70211012, pos = { x = 1507.2, y = 222.5, z = 664.8 }, rot = { x = 358.0, y = 270.6, z = 0.1 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 21001, gadget_id = 70220013, pos = { x = 1506.1, y = 219.0, z = 660.7 }, rot = { x = 10.9, y = 35.0, z = 7.5 }, level = 18 },
	{ config_id = 21002, gadget_id = 70220013, pos = { x = 1508.2, y = 219.3, z = 659.8 }, rot = { x = 8.7, y = 358.3, z = 354.5 }, level = 18 },
	{ config_id = 21003, gadget_id = 70220013, pos = { x = 1505.1, y = 219.9, z = 658.7 }, rot = { x = 357.6, y = 282.1, z = 341.8 }, level = 18 },
	{ config_id = 21004, gadget_id = 70220014, pos = { x = 1507.3, y = 218.8, z = 662.0 }, rot = { x = 356.7, y = 322.7, z = 355.7 }, level = 18 },
	{ config_id = 21006, gadget_id = 70220019, pos = { x = 1507.2, y = 216.0, z = 664.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_481", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_481", action = "action_EVENT_ANY_MONSTER_DIE_481", trigger_count = 0 }
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
		monsters = { 25, 26, 27, 21005 },
		gadgets = { 104, 105, 884, 21001, 21002, 21003, 21004, 21006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_481" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_481(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133102021) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_481(context, evt)
	-- 改变指定group组133102021中， configid为884的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133102021, 884, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
