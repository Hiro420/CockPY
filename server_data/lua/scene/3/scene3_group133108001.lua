--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4, monster_id = 23020101, pos = { x = -158.7, y = 202.4, z = -461.3 }, rot = { x = 355.0, y = 162.5, z = 356.0 }, level = 30, drop_tag = "债务处理人", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70211011, pos = { x = -159.8, y = 201.0, z = -504.2 }, rot = { x = 356.7, y = 38.0, z = 1.8 }, level = 32, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_1001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1001", action = "action_EVENT_ANY_MONSTER_DIE_1001" }
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
		monsters = { 4 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1001(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1001(context, evt)
	-- 创建id为1002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1002 }) then
	  return -1
	end
	
	return 0
end
