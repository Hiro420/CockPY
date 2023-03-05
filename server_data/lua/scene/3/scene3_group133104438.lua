--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 438001, monster_id = 23020101, pos = { x = 896.8, y = 236.7, z = 843.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "债务处理人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 438002, gadget_id = 70211012, pos = { x = 892.7, y = 238.2, z = 864.5 }, rot = { x = 0.0, y = 274.1, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 438004, gadget_id = 70900051, pos = { x = 877.5, y = 238.8, z = 863.5 }, rot = { x = 0.1, y = 359.7, z = 355.6 }, level = 19, state = GadgetState.GearStop, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_438003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_438003", action = "action_EVENT_ANY_MONSTER_DIE_438003" },
	{ name = "GADGET_STATE_CHANGE_438005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_438005", action = "action_EVENT_GADGET_STATE_CHANGE_438005" },
	{ name = "GROUP_LOAD_438006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_438006", action = "action_EVENT_GROUP_LOAD_438006", trigger_count = 0 }
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
		-- description = ,
		monsters = { 438001 },
		gadgets = { 438002, 438004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_438003", "GADGET_STATE_CHANGE_438005", "GROUP_LOAD_438006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_438003(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_438003(context, evt)
	-- 将configid为 438002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 438002, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 438004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 438004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	-- 将本组内变量名为 "flag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flag", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_438005(context, evt)
	if 438004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_438005(context, evt)
	-- 通知场景上的所有玩家播放名字为133104440 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 133104440, 0) then
			return -1
		end 
	
	-- 改变指定group组133104440中， configid为440004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104440, 440004, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_438006(context, evt)
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_438006(context, evt)
	-- 将configid为 438004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 438004, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 438002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 438002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
