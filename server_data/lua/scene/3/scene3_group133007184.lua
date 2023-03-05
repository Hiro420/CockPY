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
	{ config_id = 650, gadget_id = 70900201, pos = { x = 2677.2, y = 239.2, z = 41.3 }, rot = { x = 0.0, y = 210.6, z = 0.0 }, level = 23 },
	{ config_id = 651, gadget_id = 70900201, pos = { x = 2728.7, y = 253.5, z = 179.4 }, rot = { x = 0.0, y = 309.0, z = 0.0 }, level = 23 },
	{ config_id = 652, gadget_id = 70900201, pos = { x = 2648.7, y = 262.4, z = 166.3 }, rot = { x = 0.0, y = 18.1, z = 0.0 }, level = 23 },
	{ config_id = 653, gadget_id = 70900201, pos = { x = 2661.6, y = 283.4, z = 111.9 }, rot = { x = 0.0, y = 160.4, z = 0.0 }, level = 23 },
	{ config_id = 958, gadget_id = 70900201, pos = { x = 2660.4, y = 301.6, z = 121.7 }, rot = { x = 0.0, y = 160.4, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
	{ config_id = 186, shape = RegionShape.SPHERE, radius = 13, pos = { x = 2683.2, y = 238.7, z = 41.7 } },
	{ config_id = 187, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2728.2, y = 252.5, z = 179.4 } },
	{ config_id = 188, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2649.3, y = 261.4, z = 166.3 } },
	{ config_id = 189, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2661.5, y = 282.4, z = 111.7 } },
	{ config_id = 191, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2656.1, y = 300.6, z = 123.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_186", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_186", action = "action_EVENT_ENTER_REGION_186", tlog_tag = "风龙_184_爬塔_一重门" },
	{ name = "ENTER_REGION_187", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187", action = "action_EVENT_ENTER_REGION_187", tlog_tag = "风龙_184_爬塔_中环入口" },
	{ name = "ENTER_REGION_188", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188", action = "action_EVENT_ENTER_REGION_188", tlog_tag = "风龙_184_爬塔_内环入口" },
	{ name = "ENTER_REGION_189", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_189", action = "action_EVENT_ENTER_REGION_189", tlog_tag = "风龙_184_爬塔_塔中风场" },
	{ name = "QUEST_FINISH_190", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_190", action = "action_EVENT_QUEST_FINISH_190", tlog_tag = "风龙_184_爬塔_城门" },
	{ name = "ENTER_REGION_191", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_191", action = "action_EVENT_ENTER_REGION_191", tlog_tag = "风龙_184_爬塔_塔顶" }
}

-- 变量
variables = {
	{ name = "status", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { 186, 187, 188, 189, 191 },
		triggers = { "ENTER_REGION_186", "ENTER_REGION_187", "ENTER_REGION_188", "ENTER_REGION_189", "QUEST_FINISH_190", "ENTER_REGION_191" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_186(context, evt)
	if evt.param1 ~= 186 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"status"为1
	if ScriptLib.GetGroupVariableValue(context, "status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_186(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007184, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
			return -1
		end
	
	-- 创建id为651的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 651 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187(context, evt)
	if evt.param1 ~= 187 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"status"为1
	if ScriptLib.GetGroupVariableValue(context, "status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007184, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
			return -1
		end
		
	
	-- 创建id为652的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 652 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_188(context, evt)
	if evt.param1 ~= 188 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"status"为1
	if ScriptLib.GetGroupVariableValue(context, "status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007184, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
			return -1
		end
		
	
	-- 创建id为653的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 653 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_189(context, evt)
	if evt.param1 ~= 189 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"status"为1
	if ScriptLib.GetGroupVariableValue(context, "status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_189(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007184, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
			return -1
		end
	
	-- 创建id为958的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 958 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "status" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "status", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_190(context, evt)
	--检查ID为38903的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 38903 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_190(context, evt)
	-- 创建id为650的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 650 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "status" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "status", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_191(context, evt)
	if evt.param1 ~= 191 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_191(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007184, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
			return -1
		end
	
	-- 将本组内变量名为 "status" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "status", 2) then
	  return -1
	end
	
	return 0
end
