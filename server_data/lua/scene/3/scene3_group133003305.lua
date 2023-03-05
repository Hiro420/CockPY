--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1005, monster_id = 21030101, pos = { x = 2889.8, y = 257.7, z = -1836.7 }, rot = { x = 0.0, y = 217.1, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 1006, monster_id = 20011001, pos = { x = 2889.9, y = 257.5, z = -1839.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 1007, monster_id = 21010401, pos = { x = 2887.7, y = 257.5, z = -1839.5 }, rot = { x = 0.0, y = 34.2, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 1008, monster_id = 21010901, pos = { x = 2879.9, y = 259.9, z = -1847.1 }, rot = { x = 0.0, y = 201.4, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 1009, monster_id = 21010901, pos = { x = 2880.4, y = 266.0, z = -1839.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3247, gadget_id = 70220013, pos = { x = 2883.9, y = 257.5, z = -1836.2 }, rot = { x = 0.0, y = 350.6, z = 0.0 }, level = 1 },
	{ config_id = 3248, gadget_id = 70220013, pos = { x = 2885.4, y = 257.4, z = -1838.6 }, rot = { x = 0.0, y = 34.7, z = 0.0 }, level = 1 },
	{ config_id = 3249, gadget_id = 70220014, pos = { x = 2885.7, y = 257.3, z = -1840.9 }, rot = { x = 0.0, y = 86.2, z = 0.0 }, level = 1 },
	{ config_id = 3250, gadget_id = 70310001, pos = { x = 2887.5, y = 257.7, z = -1834.7 }, rot = { x = 0.0, y = 267.2, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3251, gadget_id = 70211101, pos = { x = 2883.9, y = 257.4, z = -1838.5 }, rot = { x = 0.0, y = 312.6, z = 0.0 }, level = 16, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 3252, gadget_id = 70310004, pos = { x = 2888.4, y = 257.6, z = -1837.7 }, rot = { x = 0.0, y = 175.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_607", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_607", action = "action_EVENT_ANY_MONSTER_DIE_607" }
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
		monsters = { 1005, 1006, 1007, 1008, 1009 },
		gadgets = { 3247, 3248, 3249, 3250, 3251, 3252 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1005, 1006, 1007, 1008, 1009 },
		gadgets = { 3247, 3248, 3249, 3250, 3251, 3252 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_607" },
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
function condition_EVENT_ANY_MONSTER_DIE_607(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_607(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003305") then
	  return -1
	end
	
	return 0
end
