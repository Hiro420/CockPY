--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101001, monster_id = 21010301, pos = { x = 1324.1, y = 200.2, z = -148.9 }, rot = { x = 0.0, y = 321.9, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 101004, monster_id = 21010301, pos = { x = 1325.6, y = 200.3, z = -140.2 }, rot = { x = 0.0, y = 239.5, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 101005, monster_id = 21010501, pos = { x = 1336.7, y = 200.2, z = -145.9 }, rot = { x = 0.0, y = 104.2, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 101006, monster_id = 21020201, pos = { x = 1336.5, y = 200.4, z = -137.6 }, rot = { x = 0.0, y = 210.1, z = 0.0 }, level = 16, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 101002, gadget_id = 70211022, pos = { x = 1335.2, y = 200.5, z = -147.5 }, rot = { x = 15.3, y = 299.5, z = 352.7 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 101007, gadget_id = 70300088, pos = { x = 1343.0, y = 200.2, z = -145.7 }, rot = { x = 0.0, y = 196.8, z = 0.0 }, level = 16 },
	{ config_id = 101008, gadget_id = 70220026, pos = { x = 1335.6, y = 200.3, z = -134.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 101009, gadget_id = 70220013, pos = { x = 1337.7, y = 200.2, z = -133.2 }, rot = { x = 0.0, y = 157.7, z = 0.0 }, level = 16 },
	{ config_id = 101010, gadget_id = 70220013, pos = { x = 1340.1, y = 200.4, z = -135.6 }, rot = { x = 0.0, y = 157.7, z = 0.0 }, level = 16 },
	{ config_id = 101011, gadget_id = 70300089, pos = { x = 1323.6, y = 200.4, z = -154.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 101012, gadget_id = 70300089, pos = { x = 1326.9, y = 200.3, z = -140.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_101003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_101003", action = "action_EVENT_ANY_MONSTER_DIE_101003" }
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
		monsters = { 101001, 101004, 101005, 101006 },
		gadgets = { 101002, 101007, 101008, 101009, 101010, 101011, 101012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_101003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 将configid为 101002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
