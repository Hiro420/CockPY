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
}

-- 区域
regions = {
	{ config_id = 279, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2390.8, y = 284.1, z = -1751.8 } },
	{ config_id = 280, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2388.9, y = 283.9, z = -1721.4 } },
	{ config_id = 281, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2368.7, y = 284.6, z = -1696.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_279", event = EventType.EVENT_ENTER_REGION, source = "2", condition = "", action = "action_EVENT_ENTER_REGION_279" },
	{ name = "ENTER_REGION_280", event = EventType.EVENT_ENTER_REGION, source = "2", condition = "", action = "action_EVENT_ENTER_REGION_280" },
	{ name = "ENTER_REGION_281", event = EventType.EVENT_ENTER_REGION, source = "2", condition = "", action = "action_EVENT_ENTER_REGION_281" }
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
		gadgets = { },
		regions = { 279, 280, 281 },
		triggers = { "ENTER_REGION_279", "ENTER_REGION_280", "ENTER_REGION_281" },
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
function action_EVENT_ENTER_REGION_279(context, evt)
	-- 通知groupid为133003098中,configid为：567的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 567, 133003098) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ENTER_REGION_280(context, evt)
	-- 通知groupid为133003098中,configid为：570的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 570, 133003098) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ENTER_REGION_281(context, evt)
	-- 通知groupid为133003098中,configid为：573的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 573, 133003098) then
	  return -1
	end
	
	return 0
end
