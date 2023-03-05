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
	{ config_id = 5, npc_id = 1559, pos = { x = 2595.7, y = 225.7, z = -1159.9 }, rot = { x = 0.0, y = 275.8, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 2966, gadget_id = 70220014, pos = { x = 2598.0, y = 225.8, z = -1159.3 }, rot = { x = 0.0, y = 168.8, z = 0.0 }, level = 30 },
	{ config_id = 2967, gadget_id = 70220014, pos = { x = 2596.6, y = 225.8, z = -1156.1 }, rot = { x = 0.0, y = 224.8, z = 0.0 }, level = 30 },
	{ config_id = 3390, gadget_id = 70211101, pos = { x = 2595.8, y = 225.1, z = -1165.2 }, rot = { x = 356.1, y = 7.1, z = 4.4 }, level = 30, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 4462, gadget_id = 70310006, pos = { x = 2597.1, y = 225.4, z = -1161.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30 }
}

-- 区域
regions = {
	{ config_id = 471, shape = RegionShape.SPHERE, radius = 30, pos = { x = 2222.8, y = 210.0, z = -946.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_471", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_471", action = "action_EVENT_ENTER_REGION_471" }
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
		gadgets = { 2966, 2967, 3390, 4462 },
		regions = { 471 },
		triggers = { "ENTER_REGION_471" },
		npcs = { 5 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_471(context, evt)
	if evt.param1 ~= 471 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_471(context, evt)
	-- 杀死Group内所有NPC
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 210, kill_policy = GroupKillPolicy.GROUP_KILL_NPC }) then
			return -1
		end
		
	
	return 0
end
