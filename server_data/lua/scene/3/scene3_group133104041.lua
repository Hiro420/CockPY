--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81, monster_id = 21010201, pos = { x = 722.2, y = 202.9, z = 227.8 }, rot = { x = 0.0, y = 154.9, z = 0.0 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 92, monster_id = 21010401, pos = { x = 726.6, y = 203.5, z = 235.4 }, rot = { x = 14.9, y = 195.7, z = 5.0 }, level = 17, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 93, monster_id = 21010301, pos = { x = 724.3, y = 203.1, z = 224.8 }, rot = { x = 3.9, y = 317.2, z = 356.4 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 41005, monster_id = 21030101, pos = { x = 727.5, y = 203.0, z = 230.6 }, rot = { x = 0.0, y = 213.7, z = 0.0 }, level = 17, drop_tag = "丘丘萨满", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72, gadget_id = 70211002, pos = { x = 725.3, y = 203.0, z = 227.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 17, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_55", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55", action = "action_EVENT_ANY_MONSTER_DIE_55" }
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
		monsters = { 81, 92, 93, 41005 },
		gadgets = { 72 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 任务用空suite，结束后刷回suite1，问题联系尤志林,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55(context, evt)
	-- 将configid为 72 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
