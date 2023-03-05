--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 422001, monster_id = 21010201, pos = { x = 60.0, y = 193.7, z = 1253.8 }, rot = { x = 0.0, y = 346.6, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9010 },
	{ config_id = 422004, monster_id = 21010201, pos = { x = 67.0, y = 190.7, z = 1260.5 }, rot = { x = 0.0, y = 281.2, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9010 },
	{ config_id = 422005, monster_id = 21010201, pos = { x = 49.4, y = 193.2, z = 1261.8 }, rot = { x = 0.0, y = 69.2, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9010 },
	{ config_id = 422006, monster_id = 21010201, pos = { x = 49.7, y = 192.4, z = 1265.7 }, rot = { x = 0.0, y = 103.4, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 422007, monster_id = 21010201, pos = { x = 64.4, y = 192.2, z = 1256.6 }, rot = { x = 0.0, y = 320.0, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 422008, monster_id = 21010201, pos = { x = 52.3, y = 191.8, z = 1269.6 }, rot = { x = 0.0, y = 142.8, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9010 },
	{ config_id = 422009, monster_id = 21030101, pos = { x = 63.5, y = 200.3, z = 1242.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 422010, monster_id = 21030301, pos = { x = 42.8, y = 199.4, z = 1253.6 }, rot = { x = 0.0, y = 56.9, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 422002, gadget_id = 70211022, pos = { x = 58.0, y = 191.4, z = 1262.2 }, rot = { x = 12.5, y = 1.2, z = 350.8 }, level = 24, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_422003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_422003", action = "action_EVENT_ANY_MONSTER_DIE_422003" }
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
		monsters = { 422001, 422004, 422005, 422006, 422007, 422008, 422009, 422010 },
		gadgets = { 422002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_422003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_422003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_422003(context, evt)
	-- 将configid为 422002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
