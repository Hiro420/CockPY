--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1146, monster_id = 20011201, pos = { x = 1652.7, y = 247.9, z = -1331.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 1147, monster_id = 20011201, pos = { x = 1653.3, y = 247.2, z = -1338.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 1148, monster_id = 20011201, pos = { x = 1649.7, y = 247.7, z = -1341.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 1149, monster_id = 20011201, pos = { x = 1651.2, y = 247.5, z = -1338.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 1150, monster_id = 20011201, pos = { x = 1653.1, y = 247.5, z = -1335.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 1151, monster_id = 20011201, pos = { x = 1649.8, y = 247.9, z = -1336.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 375, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1653.0, y = 247.2, z = -1338.8 } }
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_373", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElementFlora", condition = "", action = "action_EVENT_CLIENT_EXECUTE_373", trigger_count = 0 },
	{ name = "QUEST_FINISH_374", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_374", action = "action_EVENT_QUEST_FINISH_374" },
	{ name = "ENTER_REGION_375", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_375", action = "action_EVENT_ENTER_REGION_375" }
}

-- 变量
variables = {
	{ name = "allow_spawn", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		monsters = { 1146, 1147, 1148, 1149, 1150, 1151 },
		gadgets = { },
		regions = { },
		triggers = { "CLIENT_EXECUTE_373" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 375 },
		triggers = { "QUEST_FINISH_374", "ENTER_REGION_375" },
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
function action_EVENT_CLIENT_EXECUTE_373(context, evt)
	-- 针对groupid为 133001247 中该config对应的物件进行状态改变操作
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
		--ScriptLib.PrintLog("config_id="..this_gadget)
	
	 ScriptLib.SetGadgetEnableInteract(context, 133001247, this_gadget, true)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_374(context, evt)
	--检查ID为30803的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 30803 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_374(context, evt)
	-- 将本组内变量名为 "allow_spawn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "allow_spawn", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_375(context, evt)
	if evt.param1 ~= 375 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"allow_spawn"为1
	if ScriptLib.GetGroupVariableValue(context, "allow_spawn") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_375(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001263, suite = 1 }) then
			return -1
		end
	
	return 0
end
