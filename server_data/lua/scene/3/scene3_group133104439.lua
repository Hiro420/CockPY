--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 439001, monster_id = 24010201, pos = { x = 783.1, y = 262.7, z = 979.8 }, rot = { x = 0.0, y = 154.1, z = 0.0 }, level = 32, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101 },
	{ config_id = 439006, monster_id = 24010101, pos = { x = 803.7, y = 253.4, z = 954.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "遗迹守卫", pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 439002, gadget_id = 70211022, pos = { x = 780.4, y = 262.7, z = 951.7 }, rot = { x = 0.0, y = 256.1, z = 0.0 }, level = 29, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 439004, gadget_id = 70900051, pos = { x = 792.0, y = 254.5, z = 963.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStop, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_439003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_439003", action = "action_EVENT_ANY_MONSTER_DIE_439003" },
	{ name = "GADGET_STATE_CHANGE_439005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_439005", action = "action_EVENT_GADGET_STATE_CHANGE_439005" },
	{ name = "GROUP_LOAD_439007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_439007", action = "action_EVENT_GROUP_LOAD_439007" },
	{ name = "ANY_MONSTER_DIE_439008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_439008", action = "action_EVENT_ANY_MONSTER_DIE_439008" }
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
		monsters = { 439001, 439006 },
		gadgets = { 439002, 439004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_439003", "GADGET_STATE_CHANGE_439005", "GROUP_LOAD_439007", "ANY_MONSTER_DIE_439008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_439003(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_439003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	-- 将configid为 439004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439004, GadgetState.Default) then
			return -1
		end 
	
	-- 将本组内变量名为 "flag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flag", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_439005(context, evt)
	if 439004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_439005(context, evt)
	-- 通知场景上的所有玩家播放名字为133104440 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 133104440, 0) then
			return -1
		end 
	
	-- 改变指定group组133104440中， configid为440006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104440, 440006, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_439007(context, evt)
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_439007(context, evt)
	-- 将configid为 439004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439004, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 439002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_439008(context, evt)
	if 439006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_439008(context, evt)
	-- 将configid为 439002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
