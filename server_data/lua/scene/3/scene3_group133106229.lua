--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 229002, monster_id = 24010101, pos = { x = -434.9, y = 185.6, z = 1206.0 }, rot = { x = 0.0, y = 238.8, z = 0.0 }, level = 32, drop_tag = "遗迹守卫", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 229001, gadget_id = 70900051, pos = { x = -502.0, y = 185.7, z = 1166.0 }, rot = { x = 0.0, y = 332.5, z = 0.0 }, level = 32, state = GadgetState.GearStop, persistent = true },
	{ config_id = 229004, gadget_id = 70900051, pos = { x = -443.2, y = 185.6, z = 1201.0 }, rot = { x = 0.0, y = 330.0, z = 0.0 }, level = 32, state = GadgetState.GearStop, persistent = true },
	{ config_id = 229005, gadget_id = 70690006, pos = { x = -469.6, y = 179.7, z = 1185.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 229006, gadget_id = 70310013, pos = { x = -469.4, y = 196.5, z = 1185.1 }, rot = { x = 0.0, y = 53.4, z = 0.0 }, level = 32 },
	{ config_id = 229009, gadget_id = 70220032, pos = { x = -466.0, y = 181.2, z = 1149.4 }, rot = { x = 0.0, y = 182.2, z = 0.0 }, level = 32 },
	{ config_id = 229010, gadget_id = 70900051, pos = { x = -468.7, y = 196.9, z = 1185.6 }, rot = { x = 0.0, y = 59.3, z = 0.0 }, level = 32, state = GadgetState.GearStop, persistent = true },
	{ config_id = 229011, gadget_id = 70900051, pos = { x = -458.2, y = 180.5, z = 1159.1 }, rot = { x = 0.0, y = 281.2, z = 0.0 }, level = 32, state = GadgetState.GearStop, persistent = true },
	{ config_id = 229012, gadget_id = 70900051, pos = { x = -482.3, y = 182.1, z = 1207.9 }, rot = { x = 343.7, y = 26.9, z = 349.3 }, level = 32, state = GadgetState.GearStop, persistent = true },
	{ config_id = 229013, gadget_id = 70360005, pos = { x = -488.3, y = 182.9, z = 1211.1 }, rot = { x = 0.0, y = 197.4, z = 0.0 }, level = 32 },
	{ config_id = 229014, gadget_id = 70360005, pos = { x = -481.7, y = 183.4, z = 1215.0 }, rot = { x = 1.7, y = 247.2, z = 9.6 }, level = 32 },
	{ config_id = 229018, gadget_id = 70211121, pos = { x = -446.2, y = 185.6, z = 1199.3 }, rot = { x = 0.0, y = 239.4, z = 0.0 }, level = 32, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 229019, gadget_id = 70211111, pos = { x = -443.3, y = 185.6, z = 1198.2 }, rot = { x = 0.0, y = 242.6, z = 0.0 }, level = 32, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 229020, gadget_id = 70211111, pos = { x = -445.9, y = 185.6, z = 1202.2 }, rot = { x = 0.0, y = 238.3, z = 0.0 }, level = 32, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 229029, gadget_id = 70310001, pos = { x = -468.4, y = 182.2, z = 1141.3 }, rot = { x = 7.2, y = 2.0, z = 12.6 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 229032, gadget_id = 70310001, pos = { x = -483.1, y = 183.0, z = 1223.2 }, rot = { x = 9.5, y = 0.6, z = 357.6 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_229003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_229003", action = "action_EVENT_ANY_MONSTER_DIE_229003" },
	{ name = "GADGET_STATE_CHANGE_229015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229015", action = "action_EVENT_GADGET_STATE_CHANGE_229015" },
	{ name = "GADGET_STATE_CHANGE_229016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229016", action = "action_EVENT_GADGET_STATE_CHANGE_229016" },
	{ name = "GADGET_STATE_CHANGE_229017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229017", action = "action_EVENT_GADGET_STATE_CHANGE_229017" },
	{ name = "GADGET_STATE_CHANGE_229021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229021", action = "action_EVENT_GADGET_STATE_CHANGE_229021", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_229022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229022", action = "action_EVENT_GADGET_STATE_CHANGE_229022", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_229023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229023", action = "action_EVENT_GADGET_STATE_CHANGE_229023", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_229024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229024", action = "action_EVENT_GADGET_STATE_CHANGE_229024", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_229025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_229025", action = "action_EVENT_VARIABLE_CHANGE_229025" },
	{ name = "GADGET_STATE_CHANGE_229026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229026", action = "action_EVENT_GADGET_STATE_CHANGE_229026" },
	{ name = "GADGET_STATE_CHANGE_229027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229027", action = "action_EVENT_GADGET_STATE_CHANGE_229027" },
	{ name = "VARIABLE_CHANGE_229028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_229028", action = "action_EVENT_VARIABLE_CHANGE_229028" },
	{ name = "GADGET_STATE_CHANGE_229030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229030", action = "action_EVENT_GADGET_STATE_CHANGE_229030", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_229031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229031", action = "action_EVENT_GADGET_STATE_CHANGE_229031", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_229033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229033", action = "action_EVENT_GADGET_STATE_CHANGE_229033" }
}

-- 变量
variables = {
	{ name = "start", value = 0, no_refresh = true },
	{ name = "ison", value = 0, no_refresh = true },
	{ name = "windon", value = 0, no_refresh = true }
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
		monsters = { 229002 },
		gadgets = { 229001, 229004, 229006, 229009, 229010, 229011, 229012, 229013, 229014, 229029, 229032 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_229003", "GADGET_STATE_CHANGE_229015", "GADGET_STATE_CHANGE_229016", "GADGET_STATE_CHANGE_229017", "GADGET_STATE_CHANGE_229021", "GADGET_STATE_CHANGE_229022", "GADGET_STATE_CHANGE_229023", "GADGET_STATE_CHANGE_229024", "VARIABLE_CHANGE_229025", "GADGET_STATE_CHANGE_229026", "GADGET_STATE_CHANGE_229027", "VARIABLE_CHANGE_229028", "GADGET_STATE_CHANGE_229030", "GADGET_STATE_CHANGE_229031", "GADGET_STATE_CHANGE_229033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_229003(context, evt)
	if 229002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_229003(context, evt)
	-- 将configid为 229004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229015(context, evt)
	if 229001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229015(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229016(context, evt)
	if 229012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229016(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229017(context, evt)
	if 229010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229017(context, evt)
	-- 创建id为229018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 229018 }) then
	  return -1
	end
	
	-- 创建id为229019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 229019 }) then
	  return -1
	end
	
	-- 创建id为229020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 229020 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229021(context, evt)
	if 229013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229021(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229022(context, evt)
	if 229014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229022(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229023(context, evt)
	-- 检测config_id为229013的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 229013 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229023(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229024(context, evt)
	-- 检测config_id为229014的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 229014 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229024(context, evt)
	-- 针对当前group内变量名为 "ison" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ison", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_229025(context, evt)
	-- 判断变量"ison"为2
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_229025(context, evt)
	-- 将configid为 229012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229012, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229026(context, evt)
	if 229004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229026(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229027(context, evt)
	if 229011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229027(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_229028(context, evt)
	-- 判断变量"start"为4
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_229028(context, evt)
	-- 创建id为229005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 229005 }) then
	  return -1
	end
	
	-- 将configid为 229010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229010, GadgetState.Default) then
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-469，190，1185），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-469, y=190, z=1185}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229030(context, evt)
	if 229009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"windon"为0
	if ScriptLib.GetGroupVariableValue(context, "windon") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229030(context, evt)
	-- 将configid为 229011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229011, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229031(context, evt)
	-- 检测config_id为229009的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 229009 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	-- 判断变量"windon"为0
	if ScriptLib.GetGroupVariableValue(context, "windon") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229031(context, evt)
	-- 将configid为 229011 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 229011, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229033(context, evt)
	if 229011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229033(context, evt)
	-- 将本组内变量名为 "windon" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "windon", 1) then
	  return -1
	end
	
	return 0
end
