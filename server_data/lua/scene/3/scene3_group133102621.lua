--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 621001, monster_id = 24010201, pos = { x = 2021.5, y = 216.8, z = 759.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "遗迹守卫", pose_id = 100 },
	{ config_id = 621002, monster_id = 24010101, pos = { x = 2011.3, y = 216.9, z = 751.9 }, rot = { x = 0.0, y = 56.5, z = 0.0 }, level = 15, drop_tag = "遗迹守卫", pose_id = 101 },
	{ config_id = 621003, monster_id = 24010101, pos = { x = 2031.7, y = 217.3, z = 750.0 }, rot = { x = 0.0, y = 313.2, z = 0.0 }, level = 15, drop_tag = "遗迹守卫", pose_id = 101 },
	{ config_id = 621006, monster_id = 24010101, pos = { x = 2021.6, y = 216.9, z = 768.7 }, rot = { x = 0.0, y = 187.1, z = 0.0 }, level = 15, drop_tag = "遗迹守卫", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 621005, gadget_id = 70350006, pos = { x = 2022.7, y = 213.5, z = 714.9 }, rot = { x = 0.0, y = 0.2, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 621008, gadget_id = 70310001, pos = { x = 2035.7, y = 216.8, z = 760.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 621009, gadget_id = 70310001, pos = { x = 2011.1, y = 216.9, z = 764.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 621010, gadget_id = 70310001, pos = { x = 2018.8, y = 216.9, z = 742.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_621004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_621004", action = "action_EVENT_ANY_MONSTER_DIE_621004" },
	{ name = "ANY_MONSTER_DIE_621007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_621007", action = "action_EVENT_ANY_MONSTER_DIE_621007" }
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
		monsters = { 621002, 621003, 621006 },
		gadgets = { 621005, 621009, 621010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_621004", "ANY_MONSTER_DIE_621007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_621004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_621004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 621001, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_621007(context, evt)
	--判断死亡怪物的configid是否为 621001
	if evt.param1 ~= 621001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_621007(context, evt)
	-- 将configid为 621005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621005, GadgetState.GearStart) then
			return -1
		end 
	
	-- 创建id为621008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621008 }) then
	  return -1
	end
	
	return 0
end
