--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010701, pos = { x = 349.4, y = -32.9, z = 503.8 }, rot = { x = 0.0, y = 319.8, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1002, monster_id = 21010501, pos = { x = 337.7, y = -27.8, z = 493.3 }, rot = { x = 0.0, y = 35.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 },
	{ config_id = 1003, monster_id = 20011201, pos = { x = 348.2, y = -27.9, z = 473.5 }, rot = { x = 0.0, y = 329.4, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1004, monster_id = 20011201, pos = { x = 337.6, y = -27.8, z = 473.9 }, rot = { x = 0.0, y = 29.9, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 1005, monster_id = 20011201, pos = { x = 336.8, y = -27.8, z = 475.3 }, rot = { x = 0.0, y = 32.6, z = 0.0 }, level = 1 },
	{ config_id = 1006, monster_id = 20011201, pos = { x = 349.4, y = -28.0, z = 475.2 }, rot = { x = 0.0, y = 325.8, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1007, gadget_id = 70900010, pos = { x = 343.2, y = -28.3, z = 474.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1008, gadget_id = 70900013, pos = { x = 343.1, y = -27.9, z = 474.0 }, rot = { x = 0.0, y = 34.0, z = 0.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1009, gadget_id = 70320001, pos = { x = 343.0, y = -27.9, z = 473.8 }, rot = { x = 0.0, y = 240.1, z = 0.0 }, level = 1 },
	{ config_id = 1010, gadget_id = 70220002, pos = { x = 349.4, y = -32.9, z = 503.6 }, rot = { x = 0.0, y = 54.6, z = 0.0 }, level = 1 },
	{ config_id = 1011, gadget_id = 70220002, pos = { x = 350.7, y = -32.9, z = 503.9 }, rot = { x = 0.0, y = 3.9, z = 0.0 }, level = 1 },
	{ config_id = 1012, gadget_id = 70220002, pos = { x = 350.2, y = -32.9, z = 502.7 }, rot = { x = 0.0, y = 86.2, z = 0.0 }, level = 1 },
	{ config_id = 1013, gadget_id = 70220015, pos = { x = 351.4, y = -32.1, z = 504.9 }, rot = { x = 85.2, y = 315.7, z = 0.0 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220016, pos = { x = 350.9, y = -32.2, z = 503.8 }, rot = { x = 0.0, y = 127.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5, shape = RegionShape.CUBIC, size = { x = 18.0, y = 5.0, z = 18.0 }, pos = { x = 343.3, y = -27.9, z = 473.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_5", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5", action = "action_EVENT_ENTER_REGION_5", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6" }
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
		monsters = { 1001, 1002 },
		gadgets = { 1009, 1010, 1011, 1012, 1013 },
		regions = { 5 },
		triggers = { "ENTER_REGION_5", "ANY_MONSTER_DIE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5(context, evt)
	if evt.param1 ~= 5 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1004, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1005, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1006, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 1009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1009, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 改变指定group组220016002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016002, 5, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
