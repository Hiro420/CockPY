--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15005, monster_id = 21030101, pos = { x = 737.7, y = 169.9, z = 1255.3 }, rot = { x = 0.0, y = 22.3, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", isOneoff = true, pose_id = 9012 },
	{ config_id = 15006, monster_id = 21030101, pos = { x = 740.3, y = 169.3, z = 1262.2 }, rot = { x = 0.0, y = 188.6, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", isOneoff = true, pose_id = 9012 },
	{ config_id = 15007, monster_id = 22010201, pos = { x = 736.4, y = 169.4, z = 1259.7 }, rot = { x = 0.0, y = 107.0, z = 0.0 }, level = 30, drop_tag = "深渊法师", isOneoff = true, pose_id = 9013 },
	{ config_id = 15015, monster_id = 21010201, pos = { x = 735.0, y = 169.2, z = 1262.1 }, rot = { x = 0.0, y = 112.7, z = 0.0 }, level = 24, drop_tag = "丘丘人", isOneoff = true, pose_id = 9012 },
	{ config_id = 15016, monster_id = 21010201, pos = { x = 734.5, y = 169.4, z = 1258.4 }, rot = { x = 0.0, y = 106.3, z = 0.0 }, level = 24, drop_tag = "丘丘人", isOneoff = true, pose_id = 9012 },
	{ config_id = 15022, monster_id = 20011101, pos = { x = 740.3, y = 169.5, z = 1261.3 }, rot = { x = 0.0, y = 112.7, z = 0.0 }, level = 24, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 15023, monster_id = 20011101, pos = { x = 738.9, y = 169.9, z = 1256.4 }, rot = { x = 0.0, y = 112.7, z = 0.0 }, level = 24, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 15024, monster_id = 20010901, pos = { x = 738.4, y = 169.4, z = 1259.2 }, rot = { x = 0.0, y = 106.5, z = 0.0 }, level = 24, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 15025, monster_id = 22010301, pos = { x = 739.3, y = 169.4, z = 1261.9 }, rot = { x = 0.0, y = 230.2, z = 0.0 }, level = 24, drop_tag = "深渊法师", isOneoff = true, pose_id = 9013 },
	{ config_id = 15026, monster_id = 22010201, pos = { x = 737.7, y = 169.4, z = 1256.3 }, rot = { x = 0.0, y = 336.6, z = 0.0 }, level = 24, drop_tag = "深渊法师", isOneoff = true, pose_id = 9013 }
}

-- NPC
npcs = {
	{ config_id = 15013, npc_id = 20048, pos = { x = 677.1, y = 162.2, z = 1235.3 }, rot = { x = 0.0, y = 293.6, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 105, gadget_id = 70380007, pos = { x = 650.7, y = 162.0, z = 1188.3 }, rot = { x = 0.0, y = 42.0, z = 0.0 }, level = 24, route_id = 310300016, start_route = false, persistent = true },
	{ config_id = 15003, gadget_id = 70360001, pos = { x = 657.7, y = 166.5, z = 1260.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true },
	{ config_id = 15004, gadget_id = 70800001, pos = { x = 743.0, y = 173.1, z = 1258.0 }, rot = { x = 0.0, y = 327.0, z = 0.0 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 15008, gadget_id = 70211121, pos = { x = 671.9, y = 155.5, z = 1241.6 }, rot = { x = 0.0, y = 223.6, z = 0.0 }, level = 24, chest_drop_id = 2000600, drop_count = 1, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 15009, gadget_id = 70211021, pos = { x = 740.1, y = 169.7, z = 1258.5 }, rot = { x = 358.1, y = 280.2, z = 358.3 }, level = 24, drop_tag = "战斗高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 15010, gadget_id = 70800001, pos = { x = 674.8, y = 154.3, z = 1236.1 }, rot = { x = 57.0, y = 331.9, z = 13.1 }, level = 24, persistent = true },
	{ config_id = 15012, gadget_id = 70360028, pos = { x = 677.1, y = 161.4, z = 1235.3 }, rot = { x = 0.0, y = 359.9, z = 0.0 }, level = 24, state = GadgetState.GearStart, persistent = true },
	{ config_id = 15014, gadget_id = 70220010, pos = { x = 736.0, y = 169.0, z = 1263.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 15017, gadget_id = 70310001, pos = { x = 738.3, y = 169.2, z = 1264.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 15018, gadget_id = 70310001, pos = { x = 736.0, y = 169.2, z = 1254.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 15019, gadget_id = 70310001, pos = { x = 743.6, y = 170.1, z = 1261.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 15020, gadget_id = 70310001, pos = { x = 742.0, y = 170.1, z = 1254.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 15029, gadget_id = 70220010, pos = { x = 734.7, y = 169.6, z = 1255.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 15030, gadget_id = 70220010, pos = { x = 732.7, y = 169.0, z = 1260.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 15031, gadget_id = 70220010, pos = { x = 737.7, y = 169.4, z = 1262.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 15032, gadget_id = 70220010, pos = { x = 736.7, y = 169.7, z = 1256.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 15033, gadget_id = 70220035, pos = { x = 734.2, y = 168.9, z = 1263.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 15034, gadget_id = 70220035, pos = { x = 733.1, y = 169.1, z = 1257.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 15035, gadget_id = 70220035, pos = { x = 735.9, y = 169.4, z = 1259.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "QUEST_FINISH_15001", event = EventType.EVENT_QUEST_FINISH, source = "7100101", condition = "", action = "action_EVENT_QUEST_FINISH_15001", trigger_count = 0 },
	{ name = "SELECT_OPTION_15002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15002", action = "action_EVENT_SELECT_OPTION_15002" },
	{ name = "GADGET_CREATE_15011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15011", action = "action_EVENT_GADGET_CREATE_15011", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_15021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15021", action = "action_EVENT_ANY_MONSTER_DIE_15021" },
	{ name = "ANY_MONSTER_DIE_15027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15027", action = "action_EVENT_ANY_MONSTER_DIE_15027" },
	{ name = "ANY_MONSTER_DIE_15028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15028", action = "action_EVENT_ANY_MONSTER_DIE_15028" }
}

-- 变量
variables = {
	{ name = "killed", value = 0, no_refresh = true },
	{ name = "wave2", value = 0, no_refresh = true },
	{ name = "wave3", value = 0, no_refresh = true }
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
		monsters = { 15005, 15006, 15007, 15015, 15016 },
		gadgets = { 105, 15003, 15004, 15008, 15010, 15012, 15014, 15017, 15018, 15019, 15020, 15029, 15030 },
		regions = { },
		triggers = { "QUEST_FINISH_15001", "SELECT_OPTION_15002", "GADGET_CREATE_15011", "ANY_MONSTER_DIE_15021", "ANY_MONSTER_DIE_15027", "ANY_MONSTER_DIE_15028" },
		npcs = { 15013 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 15022, 15023, 15024 },
		gadgets = { 15033, 15034, 15035 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 15025, 15026 },
		gadgets = { 15031, 15032 },
		regions = { },
		triggers = { },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_15001(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5004, 2, 2) then
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103015, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15002(context, evt)
	-- 判断是gadgetid 15004
	if 15004 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15002(context, evt)
	-- 删除指定group： 133103015 ；指定config：15004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103015, 15004, 7) then
		return -1
	end
	
	-- 将configid为 15004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 105) then
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310301501 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301501, 0) then
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103015_finish") then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5004, 3, 3) then
	      return -1
	    end
	
	-- 将本组内变量名为 "wave3" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave3", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15011(context, evt)
	if 15004 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"wave3"为1
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103015, 15004, {7}) then
		return -1
	end
	
	-- 将configid为 15004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15021(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133103015) ~= 0 then
		return false
	end
	
	-- 判断变量"wave2"为0
	if ScriptLib.GetGroupVariableValue(context, "wave2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15021(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103015, 2)
	
	-- 将本组内变量名为 "wave2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave2", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133103015) ~= 0 then
		return false
	end
	
	-- 判断变量"wave2"为1
	if ScriptLib.GetGroupVariableValue(context, "wave2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103015, 3)
	
	-- 将本组内变量名为 "wave3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave3", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133103015) ~= 0 then
		return false
	end
	
	-- 判断变量"wave3"为1
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15028(context, evt)
	-- 将configid为 15004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.GearStart) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103015, 15004, {7}) then
		return -1
	end
	
	-- 创建id为15009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15009 }) then
	  return -1
	end
	
	return 0
end
