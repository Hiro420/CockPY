--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 304001, monster_id = 21010501, pos = { x = 976.5, y = 242.4, z = 939.4 }, rot = { x = 0.0, y = 250.2, z = 0.0 }, level = 23, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 304005, monster_id = 21011001, pos = { x = 958.7, y = 241.6, z = 923.8 }, rot = { x = 0.0, y = 32.3, z = 0.0 }, level = 23, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 304006, monster_id = 21020301, pos = { x = 986.0, y = 239.6, z = 920.0 }, rot = { x = 0.0, y = 14.7, z = 0.0 }, level = 23, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 304007, monster_id = 22010101, pos = { x = 992.4, y = 242.4, z = 908.7 }, rot = { x = 0.0, y = 307.8, z = 0.0 }, level = 24, drop_tag = "深渊法师", disableWander = true },
	{ config_id = 304008, monster_id = 21010701, pos = { x = 971.5, y = 238.7, z = 917.8 }, rot = { x = 0.0, y = 138.2, z = 0.0 }, level = 23, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 304012, monster_id = 21010101, pos = { x = 972.8, y = 239.0, z = 917.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 304002, gadget_id = 70211022, pos = { x = 994.5, y = 242.4, z = 906.4 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 304004, gadget_id = 70900051, pos = { x = 979.0, y = 238.7, z = 924.3 }, rot = { x = 8.2, y = 359.7, z = 355.8 }, level = 19, state = GadgetState.GearStop, persistent = true },
	{ config_id = 304009, gadget_id = 70220005, pos = { x = 965.9, y = 236.9, z = 926.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 304010, gadget_id = 70220005, pos = { x = 975.9, y = 237.1, z = 936.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 304011, gadget_id = 70220005, pos = { x = 976.5, y = 237.2, z = 935.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_304003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_304003", action = "action_EVENT_ANY_MONSTER_DIE_304003" },
	{ name = "GADGET_STATE_CHANGE_304013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304013", action = "action_EVENT_GADGET_STATE_CHANGE_304013" },
	{ name = "GROUP_LOAD_304014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_304014", action = "action_EVENT_GROUP_LOAD_304014" },
	{ name = "ANY_MONSTER_DIE_304015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_304015", action = "action_EVENT_ANY_MONSTER_DIE_304015" }
}

-- 变量
variables = {
	{ name = "flag", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { 304001, 304005, 304006, 304007, 304008, 304012 },
		gadgets = { 304002, 304004, 304009, 304010, 304011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_304003", "GADGET_STATE_CHANGE_304013", "GROUP_LOAD_304014", "ANY_MONSTER_DIE_304015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_304003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"flag"为0
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_304003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	-- 将configid为 304004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304004, GadgetState.Default) then
			return -1
		end 
	
	-- 将本组内变量名为 "flag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flag", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304013(context, evt)
	if 304004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304013(context, evt)
	-- 通知场景上的所有玩家播放名字为133104440 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 133104440, 0) then
			return -1
		end 
	
	-- 改变指定group组133104440中， configid为440005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104440, 440005, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_304014(context, evt)
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_304014(context, evt)
	-- 将configid为 304004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304004, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 304002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_304015(context, evt)
	if 304007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_304015(context, evt)
	-- 将configid为 304002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
