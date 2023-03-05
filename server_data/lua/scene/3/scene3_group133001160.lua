--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 812, monster_id = 21010701, pos = { x = 1762.6, y = 214.1, z = -1375.1 }, rot = { x = 0.0, y = 81.8, z = 0.0 }, level = 6, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 813, monster_id = 21010401, pos = { x = 1763.8, y = 214.3, z = -1378.1 }, rot = { x = 0.0, y = 79.7, z = 0.0 }, level = 6, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 816, monster_id = 21010101, pos = { x = 1758.3, y = 214.3, z = -1374.4 }, rot = { x = 0.0, y = 134.9, z = 0.0 }, level = 6, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1070, monster_id = 21010101, pos = { x = 1758.5, y = 214.4, z = -1378.6 }, rot = { x = 0.0, y = 219.4, z = 0.0 }, level = 6, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2266, gadget_id = 70220010, pos = { x = 1761.1, y = 214.5, z = -1380.3 }, rot = { x = 0.0, y = 136.1, z = 0.0 }, level = 5 },
	{ config_id = 2267, gadget_id = 70310006, pos = { x = 1760.7, y = 214.3, z = -1376.0 }, rot = { x = 0.0, y = 152.1, z = 0.0 }, level = 5, state = GadgetState.GearStart },
	{ config_id = 2268, gadget_id = 70211012, pos = { x = 1749.6, y = 215.0, z = -1375.4 }, rot = { x = 0.0, y = 98.8, z = 0.0 }, level = 5, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 2681, gadget_id = 70220010, pos = { x = 1750.1, y = 215.0, z = -1370.7 }, rot = { x = 0.0, y = 136.1, z = 0.0 }, level = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_189", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_189", action = "action_EVENT_ANY_MONSTER_DIE_189", trigger_count = 0, tlog_tag = "小平原_营地_风场平台_完成" }
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
		monsters = { 812, 813, 816, 1070 },
		gadgets = { 2266, 2267, 2268, 2681 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_189" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_189(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001160) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_189(context, evt)
	-- 将configid为 2268 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2268, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
