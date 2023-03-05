--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 544, monster_id = 20020101, pos = { x = 1331.8, y = 303.4, z = -1867.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "元素之核", isOneoff = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 101, shape = RegionShape.SPHERE, radius = 31.8, pos = { x = 1339.6, y = 299.4, z = -1861.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_101", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_101", action = "action_EVENT_ENTER_REGION_101" },
	{ name = "ANY_MONSTER_DIE_216", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_216", action = "action_EVENT_ANY_MONSTER_DIE_216" }
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
		regions = { 101 },
		triggers = { "ENTER_REGION_101", "ANY_MONSTER_DIE_216" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_101(context, evt)
	if evt.param1 ~= 101 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_101(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 544, delay_time = 0 }) then
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1331，303，-1867），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1331, y=303, z=-1867}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_216(context, evt)
	--判断死亡怪物的configid是否为 544
	if evt.param1 ~= 544 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_216(context, evt)
	-- 解锁当前场景中pointid 为%force_id%的 传送点或者地城入口
	if 0 ~= ScriptLib.UnlockScenePoint(context, 40) then
		return -1
	end
	
	return 0
end
