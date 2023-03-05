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
}

-- 装置
gadgets = {
	{ config_id = 9, gadget_id = 70350002, pos = { x = 243.4, y = 21.3, z = 4.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 10, gadget_id = 70350006, pos = { x = 228.0, y = 19.5, z = -14.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 11, gadget_id = 70350006, pos = { x = 219.2, y = 28.1, z = -24.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12, gadget_id = 70350006, pos = { x = 196.6, y = 27.9, z = -24.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 13, gadget_id = 70350006, pos = { x = 207.8, y = 17.0, z = 27.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14, gadget_id = 70350006, pos = { x = 188.1, y = 19.9, z = 22.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 15, gadget_id = 70350006, pos = { x = 207.9, y = 36.3, z = 51.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 36, gadget_id = 70360002, pos = { x = 207.7, y = 19.4, z = 4.2 }, rot = { x = 0.0, y = 267.4, z = 0.0 }, level = 1 },
	{ config_id = 12002, gadget_id = 70900201, pos = { x = 185.0, y = 20.6, z = -24.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12003, gadget_id = 70900201, pos = { x = 207.5, y = 17.3, z = -36.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12004, gadget_id = 70900201, pos = { x = 226.9, y = 20.6, z = 44.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12005, gadget_id = 70900201, pos = { x = 225.6, y = 29.3, z = 46.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12006, gadget_id = 70900201, pos = { x = 207.7, y = 21.2, z = 4.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12007, gadget_id = 70900201, pos = { x = 261.7, y = 24.1, z = 4.0 }, rot = { x = 0.0, y = 273.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 12001, shape = RegionShape.SPHERE, radius = 13.6, pos = { x = 192.3, y = 18.8, z = 3.4 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_23", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_23", action = "action_EVENT_GADGET_CREATE_23" },
	{ name = "SELECT_OPTION_24", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_24", action = "action_EVENT_SELECT_OPTION_24", trigger_count = 0, forbid_guest = false },
	{ name = "QUEST_FINISH_25", event = EventType.EVENT_QUEST_FINISH, source = "2010141", condition = "condition_EVENT_QUEST_FINISH_25", action = "action_EVENT_QUEST_FINISH_25", trigger_count = 0 },
	{ name = "SELECT_OPTION_26", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_26", action = "action_EVENT_SELECT_OPTION_26", forbid_guest = false },
	{ name = "ENTER_REGION_12001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12001", action = "action_EVENT_ENTER_REGION_12001", forbid_guest = false }
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
		monsters = { },
		gadgets = { 9, 10, 11, 12, 13, 14, 15, 36 },
		regions = { 12001 },
		triggers = { "GADGET_CREATE_23", "SELECT_OPTION_24", "QUEST_FINISH_25", "SELECT_OPTION_26", "ENTER_REGION_12001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_23(context, evt)
	if 36 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_23(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1002}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_24(context, evt)
	if 36 ~= evt.param1 then
		return false
	end
	
	if 1002 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_24(context, evt)
	
	
	-- 根据不同的选项做不同的操作
	if 1002 == evt.param2 then
	
		-- 调用提示id为 1109004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	     if 0 ~= ScriptLib.ShowReminder(context, 200230101)  then
		return -1
	     end
		
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_25(context, evt)
	--检查ID为2010141的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2010141 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_25(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220023012, 36, {1003}) then
		return -1
	end
	
	-- 删除指定group： 220023012 ；指定config：36；物件身上指定option：1002；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220023012, 36, 1002) then
		return -1
	end
	
	-- 创建id为12006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12006 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_26(context, evt)
	if 36 ~= evt.param1 then
		return false
	end
	
	if 1003 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_26(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220023012") then
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（243，25，3），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=243, y=25, z=3}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 将configid为 36 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 9 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9, GadgetState.GearStart) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220023012, monsters = {}, gadgets = {12006} }) then
			return -1
		end
	
	-- 创生gadget 12007
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12007 }) then
		return -1
	end
	
	-- 删除指定group： 220023012 ；指定config：36；物件身上指定option：1003；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220023012, 36, 1003) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12001(context, evt)
	if evt.param1 ~= 12001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12001(context, evt)
	-- 创建id为12002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12002 }) then
	  return -1
	end
	
	-- 创建id为12003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12003 }) then
	  return -1
	end
	
	-- 创建id为12004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12004 }) then
	  return -1
	end
	
	-- 创建id为12005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12005 }) then
	  return -1
	end
	
	return 0
end
