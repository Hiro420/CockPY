-- Trigger变量
local defs = {
	gadget_id_1 = 372,
	gadget_id_2 = 376,
	gadget_id_3 = 371,
	gadget_id_5 = 1,
	questLuaNotify_success = 22000006612801,
	questLuaNotify_faild = 22000006612802,
	gadget_id_4 = 377
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 1, npc_id = 20005, pos = { x = 101.4, y = 0.5, z = 322.1 }, rot = { x = 0.0, y = 201.5, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 371, gadget_id = 70900250, pos = { x = 99.9, y = 0.5, z = 318.1 }, rot = { x = 0.0, y = 23.9, z = 0.0 }, level = 1 },
	{ config_id = 372, gadget_id = 70211001, pos = { x = 103.1, y = 0.5, z = 322.9 }, rot = { x = 0.0, y = 192.1, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 377, gadget_id = 70900202, pos = { x = 100.0, y = 0.5, z = 318.3 }, rot = { x = 0.0, y = 96.9, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 132, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 100.1, y = 0.7, z = 318.0 } }
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_128", event = EventType.EVENT_CLIENT_EXECUTE, source = "RopeRule", condition = "", action = "action_EVENT_CLIENT_EXECUTE_128", trigger_count = 0 },
	{ name = "QUEST_START_131", event = EventType.EVENT_QUEST_START, source = "2000202", condition = "", action = "action_EVENT_QUEST_START_131", trigger_count = 0 },
	{ name = "ENTER_REGION_132", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_132", action = "action_EVENT_ENTER_REGION_132", trigger_count = 0, forbid_guest = false },
	{ name = "QUEST_START_154", event = EventType.EVENT_QUEST_START, source = "2000203", condition = "", action = "action_EVENT_QUEST_START_154" }
}

-- 变量
variables = {
	{ name = "SwitchOn", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { 371 },
		regions = { 132 },
		triggers = { "CLIENT_EXECUTE_128", "QUEST_START_131", "ENTER_REGION_132", "QUEST_START_154" },
		npcs = { 1 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_128(context, evt)
									-- 创建id为372的gadget
									if evt.param1 == defs.gadget_id_5 then
	
												
										if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_3, GadgetState.Default) then
											--ScriptLib.PrintLog("Faild to change 371 state default when evt.param1 == defs.gadget_id_5")
										return -1
										end
			
										--通知任务系统完成条件类型“LUA通知”，复杂参数为quest_param的进度+1
										if 0 ~= ScriptLib.AddQuestProgress(context, "22000006612801")then
										return -1
										end
										return 0
									end 
										ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_3, GadgetState.Default)	
										ScriptLib.AddQuestProgress(context, "22000006612802")
										return -1
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_131(context, evt)
	-- 创建id为377的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 377 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "SwitchOn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "SwitchOn", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_132(context, evt)
	if evt.param1 ~= 132 then return false end
	
	-- 判断变量"SwitchOn"为1
	if ScriptLib.GetGroupVariableValue(context, "SwitchOn") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_132(context, evt)
	-- 改变指定group组220000066中， configid为371的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220000066, 371, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将本组内变量名为 "SwitchOn" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "SwitchOn", 0) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 377 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_154(context, evt)
	-- 创建id为372的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 372 }) then
	  return -1
	end
	
	return 0
end
