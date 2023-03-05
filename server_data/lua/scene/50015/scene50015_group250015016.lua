--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16001, monster_id = 28040101, pos = { x = -61.4, y = 4.6, z = -133.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16002, monster_id = 28040101, pos = { x = -62.7, y = 4.6, z = -121.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16003, monster_id = 28040101, pos = { x = -61.9, y = 4.6, z = -112.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16004, monster_id = 28040101, pos = { x = -50.2, y = 4.6, z = -138.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16005, monster_id = 28040101, pos = { x = -37.3, y = 4.6, z = -129.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16006, monster_id = 28040101, pos = { x = -54.7, y = 4.6, z = -124.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16007, monster_id = 28040101, pos = { x = -56.8, y = 4.6, z = -109.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16008, monster_id = 28040101, pos = { x = -48.9, y = 4.6, z = -105.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16009, monster_id = 28040101, pos = { x = -40.0, y = 4.6, z = -108.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16010, monster_id = 28040101, pos = { x = -35.7, y = 4.6, z = -116.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16011, monster_id = 28040103, pos = { x = -47.7, y = 4.6, z = -119.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
	{ config_id = 16014, npc_id = 20032, pos = { x = -30.5, y = 4.8, z = -109.9 }, rot = { x = 0.0, y = 258.9, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 16012, gadget_id = 70380001, pos = { x = -50.3, y = 3.9, z = -125.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 16013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -50.6, y = 4.6, z = -125.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_16013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16013", action = "action_EVENT_ENTER_REGION_16013", forbid_guest = false }
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
		monsters = { 16001, 16002, 16003, 16004, 16005, 16006, 16007, 16008, 16009, 16010, 16011 },
		gadgets = { 16012 },
		regions = { 16013 },
		triggers = { "ENTER_REGION_16013" },
		npcs = { 16014 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_16013(context, evt)
	if evt.param1 ~= 16013 then return false end
	
	if 16011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16013(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 250015016, 11, 0) then
	  return -1
	end
	
	return 0
end
