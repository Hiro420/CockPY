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
	{ config_id = 181, shape = RegionShape.SPHERE, radius = 13.2, pos = { x = 1253.1, y = 254.6, z = -1480.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_181", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_181", action = "action_EVENT_ENTER_REGION_181" }
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
		gadgets = { },
		regions = { 181 },
		triggers = { "ENTER_REGION_181" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_181(context, evt)
	if evt.param1 ~= 181 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181(context, evt)
	-- 通知groupid为133001089中,configid为：415的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 415, 133001089) then
	  return -1
	end
	
	-- 通知groupid为133001089中,configid为：416的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 416, 133001089) then
	  return -1
	end
	
	-- 通知groupid为133001089中,configid为：417的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 417, 133001089) then
	  return -1
	end
	
	-- 通知groupid为133001089中,configid为：418的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 418, 133001089) then
	  return -1
	end
	
	return 0
end
