--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 270001, monster_id = 21020201, pos = { x = 553.2, y = 202.7, z = -626.7 }, rot = { x = 0.0, y = 332.8, z = 0.0 }, level = 25, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 270004, monster_id = 21010901, pos = { x = 556.1, y = 202.7, z = -626.1 }, rot = { x = 0.0, y = 332.8, z = 0.0 }, level = 25, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 270005, monster_id = 21011001, pos = { x = 551.7, y = 202.7, z = -629.1 }, rot = { x = 0.0, y = 332.8, z = 0.0 }, level = 25, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 270006, monster_id = 21010201, pos = { x = 555.6, y = 202.7, z = -620.9 }, rot = { x = 0.0, y = 353.4, z = 0.0 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 270007, monster_id = 21010601, pos = { x = 555.9, y = 202.7, z = -618.8 }, rot = { x = 0.0, y = 198.2, z = 0.0 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 270002, gadget_id = 70211012, pos = { x = 554.0, y = 202.7, z = -628.2 }, rot = { x = 0.0, y = 332.5, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 270008, gadget_id = 70310001, pos = { x = 560.1, y = 202.7, z = -627.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 270009, gadget_id = 70310001, pos = { x = 551.4, y = 202.7, z = -632.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 270010, gadget_id = 70310001, pos = { x = 553.5, y = 202.7, z = -610.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 270011, gadget_id = 70310001, pos = { x = 541.6, y = 202.8, z = -630.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 270012, gadget_id = 70220013, pos = { x = 558.7, y = 202.9, z = -615.4 }, rot = { x = 0.0, y = 326.7, z = 0.0 }, level = 19 },
	{ config_id = 270013, gadget_id = 70220013, pos = { x = 541.7, y = 202.9, z = -627.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 270014, gadget_id = 70220013, pos = { x = 541.0, y = 202.9, z = -620.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 270015, gadget_id = 70220014, pos = { x = 541.8, y = 202.7, z = -623.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 270016, gadget_id = 70220014, pos = { x = 541.9, y = 202.8, z = -625.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 270017, gadget_id = 70220014, pos = { x = 543.6, y = 202.6, z = -629.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 270018, gadget_id = 70220014, pos = { x = 544.4, y = 202.7, z = -620.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 270019, gadget_id = 70220014, pos = { x = 543.4, y = 202.7, z = -620.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 270020, gadget_id = 70220005, pos = { x = 544.2, y = 202.7, z = -619.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 270021, gadget_id = 70220035, pos = { x = 559.6, y = 202.7, z = -625.0 }, rot = { x = 0.0, y = 319.7, z = 0.0 }, level = 19 },
	{ config_id = 270022, gadget_id = 70220014, pos = { x = 560.3, y = 202.7, z = -624.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 270023, gadget_id = 70220014, pos = { x = 560.1, y = 202.7, z = -626.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 270024, gadget_id = 70220026, pos = { x = 557.5, y = 207.6, z = -611.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_270003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_270003", action = "action_EVENT_ANY_MONSTER_DIE_270003" }
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
		monsters = { 270001, 270004, 270005, 270006, 270007 },
		gadgets = { 270002, 270008, 270009, 270010, 270011, 270012, 270013, 270014, 270015, 270016, 270017, 270018, 270019, 270020, 270021, 270024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_270003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_270003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_270003(context, evt)
	-- 将configid为 270002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
