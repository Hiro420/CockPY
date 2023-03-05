--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 696007, monster_id = 22010101, pos = { x = 1109.5, y = 213.5, z = 410.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "深渊法师" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 696005, gadget_id = 70211021, pos = { x = 1109.6, y = 213.8, z = 410.4 }, rot = { x = 11.2, y = 0.9, z = 9.6 }, level = 16, drop_tag = "战斗高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 696001, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1109.4, y = 213.9, z = 410.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_696001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_696001", action = "action_EVENT_ENTER_REGION_696001" },
	{ name = "ANY_MONSTER_DIE_696008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_696008", action = "action_EVENT_ANY_MONSTER_DIE_696008" }
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
		regions = { 696001 },
		triggers = { "ENTER_REGION_696001", "ANY_MONSTER_DIE_696008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_696001(context, evt)
	if evt.param1 ~= 696001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_696001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 696007, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_696008(context, evt)
	--判断死亡怪物的configid是否为 696007
	if evt.param1 ~= 696007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_696008(context, evt)
	-- 创建id为696005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 696005 }) then
	  return -1
	end
	
	return 0
end
