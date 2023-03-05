--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 169004, monster_id = 21020301, pos = { x = 576.6, y = 245.6, z = 1522.2 }, rot = { x = 0.0, y = 33.0, z = 0.0 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 169007, monster_id = 21010501, pos = { x = 587.2, y = 246.1, z = 1553.4 }, rot = { x = 0.0, y = 128.2, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 169008, monster_id = 21010501, pos = { x = 601.0, y = 246.1, z = 1542.9 }, rot = { x = 0.0, y = 297.8, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 169014, monster_id = 21010901, pos = { x = 591.0, y = 239.3, z = 1523.1 }, rot = { x = 0.0, y = 199.6, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 169015, monster_id = 21011201, pos = { x = 572.3, y = 239.9, z = 1534.7 }, rot = { x = 0.0, y = 307.2, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 169016, monster_id = 21020201, pos = { x = 596.0, y = 238.7, z = 1551.7 }, rot = { x = 0.0, y = 35.0, z = 0.0 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 },
	{ config_id = 169017, monster_id = 21030301, pos = { x = 579.9, y = 245.6, z = 1520.4 }, rot = { x = 0.0, y = 331.0, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 169018, monster_id = 21011001, pos = { x = 573.5, y = 245.6, z = 1524.1 }, rot = { x = 0.0, y = 72.1, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 169001, gadget_id = 70211002, pos = { x = 575.8, y = 245.6, z = 1516.7 }, rot = { x = 0.0, y = 32.2, z = 0.0 }, level = 24, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 169002, gadget_id = 70211022, pos = { x = 574.0, y = 245.6, z = 1517.8 }, rot = { x = 0.0, y = 32.2, z = 0.0 }, level = 24, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 169009, gadget_id = 70310009, pos = { x = 591.4, y = 239.5, z = 1520.9 }, rot = { x = 0.0, y = 316.3, z = 0.0 }, level = 24 },
	{ config_id = 169010, gadget_id = 70220013, pos = { x = 571.0, y = 240.4, z = 1535.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 169011, gadget_id = 70220013, pos = { x = 572.2, y = 240.3, z = 1537.1 }, rot = { x = 0.0, y = 37.6, z = 0.0 }, level = 24 },
	{ config_id = 169012, gadget_id = 70220013, pos = { x = 577.2, y = 239.6, z = 1535.5 }, rot = { x = 0.0, y = 299.7, z = 0.0 }, level = 24 },
	{ config_id = 169019, gadget_id = 70211002, pos = { x = 572.1, y = 245.6, z = 1519.0 }, rot = { x = 0.0, y = 32.2, z = 0.0 }, level = 24, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_169003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169003", action = "action_EVENT_ANY_MONSTER_DIE_169003" }
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
		monsters = { 169004, 169007, 169008, 169014, 169015, 169016, 169017, 169018 },
		gadgets = { 169001, 169002, 169009, 169010, 169011, 169012, 169019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_169003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_169003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169003(context, evt)
	-- 将configid为 169002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 169002, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 169001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 169001, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 169019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 169019, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
