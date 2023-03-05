--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47, monster_id = 22010301, pos = { x = 2732.2, y = 240.6, z = 313.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "深渊法师", disableWander = true },
	{ config_id = 140, monster_id = 21030201, pos = { x = 2731.5, y = 240.6, z = 319.2 }, rot = { x = 0.0, y = 131.3, z = 0.0 }, level = 22, drop_tag = "丘丘萨满" },
	{ config_id = 425, monster_id = 22010101, pos = { x = 2727.3, y = 240.3, z = 316.8 }, rot = { x = 0.0, y = 106.5, z = 0.0 }, level = 22, drop_tag = "深渊法师", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 359, gadget_id = 70211112, pos = { x = 2730.2, y = 240.4, z = 316.5 }, rot = { x = 8.1, y = 197.8, z = 358.2 }, level = 23, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 41, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2732.8, y = 240.6, z = 315.9 } },
	{ config_id = 316, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2732.8, y = 240.6, z = 315.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_41", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41", action = "action_EVENT_ENTER_REGION_41", tlog_tag = "风龙_21_营地_触发" },
	{ name = "ANY_MONSTER_DIE_42", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42", action = "action_EVENT_ANY_MONSTER_DIE_42", tlog_tag = "风龙_21_营地_成功" },
	{ name = "ENTER_REGION_316", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_316", action = "action_EVENT_ENTER_REGION_316", tlog_tag = "风龙_21_营地_触发" },
	{ name = "GROUP_LOAD_321", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_321", trigger_count = 0 }
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
	end_suite = 1,
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
		monsters = { },
		gadgets = { 359 },
		regions = { 41, 316 },
		triggers = { "ENTER_REGION_41", "ANY_MONSTER_DIE_42", "ENTER_REGION_316", "GROUP_LOAD_321" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_41(context, evt)
	if evt.param1 ~= 41 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 检测当前trigger所在group所在的区域天气
	  local str_not_equal = false
		if str_not_equal == false then
	  		if ClimateType.CLIMATE_RAIN == ScriptLib.GetCurrentGroupWeather(context) or ClimateType.CLIMATE_THUNDERSTORM == ScriptLib.GetCurrentGroupWeather(context) then
	    		return true
	    	else
	    		return false
	    	end
	    elseif ClimateType.CLIMATE_RAIN ~= ScriptLib.GetCurrentGroupWeather(context) and ClimateType.CLIMATE_THUNDERSTORM ~= ScriptLib.GetCurrentGroupWeather(context) then
	    	return true
	    else 
	    	return false
	  	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41(context, evt)
	-- 将configid为 359 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 359, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 140, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 47, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42(context, evt)
	-- 解锁目标359
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 359, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_316(context, evt)
	if evt.param1 ~= 316 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 检测当前trigger所在group所在的区域天气
	  local str_not_equal = true
		if str_not_equal == false then
	  		if ClimateType.CLIMATE_RAIN == ScriptLib.GetCurrentGroupWeather(context) or ClimateType.CLIMATE_THUNDERSTORM == ScriptLib.GetCurrentGroupWeather(context) then
	    		return true
	    	else
	    		return false
	    	end
	    elseif ClimateType.CLIMATE_RAIN ~= ScriptLib.GetCurrentGroupWeather(context) and ClimateType.CLIMATE_THUNDERSTORM ~= ScriptLib.GetCurrentGroupWeather(context) then
	    	return true
	    else 
	    	return false
	  	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_316(context, evt)
	-- 将configid为 359 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 359, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 140, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 425, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_LOAD_321(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		ScriptLib.GoBackGroupSuite(context, 133007021)
	
	return 0
end
