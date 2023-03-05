--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 797, monster_id = 20011501, pos = { x = 2055.6, y = 222.6, z = -703.5 }, rot = { x = 0.0, y = 138.2, z = 0.0 }, level = 11, drop_tag = "史莱姆", disableWander = true, affix = { 1001 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 286, shape = RegionShape.SPHERE, radius = 8.9, pos = { x = 2075.9, y = 202.5, z = -729.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_286", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_286", action = "action_EVENT_ENTER_REGION_286" }
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
		regions = { 286 },
		triggers = { "ENTER_REGION_286" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_286(context, evt)
	if evt.param1 ~= 286 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_286(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 797, delay_time = 0 }) then
	  return -1
	end
	
	-- 通知groupid为133002240中,configid为：797的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 797, 133002240) then
	  return -1
	end
	
	return 0
end
