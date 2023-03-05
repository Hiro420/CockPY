--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 454001, monster_id = 21020201, pos = { x = -122.7, y = 283.9, z = 485.7 }, rot = { x = 12.2, y = 58.0, z = 354.5 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 454004, monster_id = 21011201, pos = { x = -122.2, y = 284.2, z = 479.8 }, rot = { x = 4.9, y = 13.6, z = 347.6 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 454005, monster_id = 21011201, pos = { x = -126.8, y = 284.4, z = 488.7 }, rot = { x = 12.5, y = 102.5, z = 4.5 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 454006, monster_id = 21030201, pos = { x = -129.6, y = 286.0, z = 482.3 }, rot = { x = 13.0, y = 69.8, z = 357.1 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 454015, monster_id = 21010501, pos = { x = -125.6, y = 285.3, z = 479.7 }, rot = { x = 350.2, y = 219.0, z = 9.1 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 454002, gadget_id = 70211022, pos = { x = -126.1, y = 284.8, z = 484.2 }, rot = { x = 15.1, y = 47.7, z = 355.8 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 454007, gadget_id = 70220013, pos = { x = -116.9, y = 282.4, z = 482.0 }, rot = { x = 0.0, y = 0.0, z = 342.6 }, level = 19 },
	{ config_id = 454008, gadget_id = 70220013, pos = { x = -117.6, y = 282.5, z = 485.4 }, rot = { x = 2.6, y = 359.7, z = 346.0 }, level = 19 },
	{ config_id = 454009, gadget_id = 70220014, pos = { x = -126.8, y = 283.9, z = 493.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 454010, gadget_id = 70220014, pos = { x = -128.3, y = 284.3, z = 492.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 454011, gadget_id = 70300089, pos = { x = -131.0, y = 285.5, z = 487.2 }, rot = { x = 9.6, y = 359.0, z = 348.5 }, level = 19 },
	{ config_id = 454012, gadget_id = 70300089, pos = { x = -119.7, y = 282.8, z = 489.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 454013, gadget_id = 70300088, pos = { x = -128.0, y = 286.4, z = 476.7 }, rot = { x = 357.6, y = 319.7, z = 343.7 }, level = 19 },
	{ config_id = 454014, gadget_id = 70300088, pos = { x = -126.1, y = 286.0, z = 475.4 }, rot = { x = 342.9, y = 272.8, z = 354.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_454003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_454003", action = "action_EVENT_ANY_MONSTER_DIE_454003" }
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
		monsters = { 454001 },
		gadgets = { 454002, 454007, 454008, 454009, 454010, 454011, 454012, 454013, 454014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_454003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_454003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_454003(context, evt)
	-- 将configid为 454002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
