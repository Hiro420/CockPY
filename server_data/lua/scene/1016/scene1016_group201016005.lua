--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6, monster_id = 25020101, pos = { x = -74.5, y = 10.6, z = -13.7 }, rot = { x = 0.0, y = 96.7, z = 0.0 }, level = 1, disableWander = true, affix = { 1001 }, isElite = true, pose_id = 0 },
	{ config_id = 12, monster_id = 25020202, pos = { x = -79.2, y = 10.3, z = -3.7 }, rot = { x = 0.0, y = 121.2, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 13, monster_id = 25010202, pos = { x = -78.8, y = 10.4, z = -22.2 }, rot = { x = 0.0, y = 63.8, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 5003, monster_id = 25030202, pos = { x = -71.3, y = 10.6, z = -18.5 }, rot = { x = 0.0, y = 57.3, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 5004, monster_id = 25040201, pos = { x = -71.4, y = 10.6, z = -9.1 }, rot = { x = 0.0, y = 87.3, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47, gadget_id = 70350002, pos = { x = -48.6, y = 12.6, z = -13.8 }, rot = { x = 0.0, y = 89.9, z = 0.0 }, level = 1 },
	{ config_id = 5001, gadget_id = 70211021, pos = { x = -78.7, y = 10.5, z = -13.5 }, rot = { x = 0.0, y = 90.8, z = 0.0 }, level = 1, chest_drop_id = 18000600, drop_count = 1, showcutscene = true, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
	{ config_id = 20, shape = RegionShape.CUBIC, size = { x = 12.0, y = 5.0, z = 7.0 }, pos = { x = -41.7, y = 14.5, z = -13.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_20", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20", action = "action_EVENT_ENTER_REGION_20", forbid_guest = false },
	{ name = "DUNGEON_SETTLE_5002", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_5002", action = "action_EVENT_DUNGEON_SETTLE_5002" }
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
	end_suite = 1,
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
		monsters = { 6, 12, 13, 5003, 5004 },
		gadgets = { 47 },
		regions = { 20 },
		triggers = { "ENTER_REGION_20", "DUNGEON_SETTLE_5002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_20(context, evt)
	if evt.param1 ~= 20 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20(context, evt)
	-- 将configid为 47 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 47, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_5002(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_5002(context, evt)
	-- 创生gadget 5001
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5001 }) then
		return -1
	end
	
	return 0
end
