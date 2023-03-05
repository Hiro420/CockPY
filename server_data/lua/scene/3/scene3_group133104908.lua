--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 908004, monster_id = 21020201, pos = { x = 431.3, y = 209.0, z = 342.4 }, rot = { x = 0.0, y = 351.8, z = 0.0 }, level = 19, drop_id = 1000210, affix = { 1008, 1901 }, isElite = true, pose_id = 401 },
	{ config_id = 908005, monster_id = 21010601, pos = { x = 430.3, y = 209.1, z = 349.0 }, rot = { x = 0.0, y = 295.4, z = 0.0 }, level = 19, drop_id = 1000210, disableWander = true, affix = { 1901 }, isElite = true, pose_id = 9016 },
	{ config_id = 908006, monster_id = 21010601, pos = { x = 429.1, y = 209.4, z = 352.1 }, rot = { x = 0.0, y = 215.0, z = 0.0 }, level = 19, drop_id = 1000210, disableWander = true, affix = { 1901 }, isElite = true, pose_id = 9016 },
	{ config_id = 908007, monster_id = 21011201, pos = { x = 434.6, y = 208.8, z = 347.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 908008, monster_id = 21011201, pos = { x = 427.3, y = 209.2, z = 345.4 }, rot = { x = 0.0, y = 57.5, z = 0.0 }, level = 19, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 908001, gadget_id = 70300093, pos = { x = 428.4, y = 209.3, z = 349.5 }, rot = { x = 0.0, y = 323.3, z = 0.0 }, level = 19 },
	{ config_id = 908002, gadget_id = 70210102, pos = { x = 428.8, y = 209.4, z = 351.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, chest_drop_id = 1000210, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 908003, gadget_id = 70210102, pos = { x = 428.2, y = 209.2, z = 348.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, chest_drop_id = 1000210, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 908009, gadget_id = 70300083, pos = { x = 432.6, y = 208.9, z = 345.4 }, rot = { x = 0.0, y = 53.4, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
	{ config_id = 908010, shape = RegionShape.SPHERE, radius = 30, pos = { x = 432.3, y = 209.0, z = 346.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_908010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_908010", action = "action_EVENT_ENTER_REGION_908010" }
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
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 908004, 908005, 908006, 908007, 908008 },
		gadgets = { 908001, 908002, 908003, 908009 },
		regions = { 908010 },
		triggers = { "ENTER_REGION_908010" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_908010(context, evt)
	if evt.param1 ~= 908010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_908010(context, evt)
	-- 调用提示id为 1110092 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110092) then
		return -1
	end
	
	return 0
end
