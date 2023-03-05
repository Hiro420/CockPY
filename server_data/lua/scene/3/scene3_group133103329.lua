--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 329001, monster_id = 21030401, pos = { x = 363.4, y = 294.4, z = 1246.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 329004, monster_id = 21010501, pos = { x = 366.1, y = 294.4, z = 1252.3 }, rot = { x = 0.0, y = 205.3, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 329005, monster_id = 21011001, pos = { x = 359.9, y = 293.9, z = 1251.9 }, rot = { x = 0.0, y = 128.4, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 329002, gadget_id = 70211012, pos = { x = 363.1, y = 294.4, z = 1249.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 329006, gadget_id = 70310001, pos = { x = 362.1, y = 293.8, z = 1253.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 329007, gadget_id = 70220013, pos = { x = 360.0, y = 294.4, z = 1247.4 }, rot = { x = 0.0, y = 52.6, z = 0.0 }, level = 24 },
	{ config_id = 329008, gadget_id = 70220013, pos = { x = 366.3, y = 294.8, z = 1247.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_329003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_329003", action = "action_EVENT_ANY_MONSTER_DIE_329003" }
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
		monsters = { 329001, 329004, 329005 },
		gadgets = { 329002, 329006, 329007, 329008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_329003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_329003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_329003(context, evt)
	-- 将configid为 329002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 329002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
