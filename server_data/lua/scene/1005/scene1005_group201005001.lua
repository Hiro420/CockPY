-- Trigger变量
local defs = {
	gadget_id_1 = 1001
}


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
	{ config_id = 1001, gadget_id = 70210011, pos = { x = -27.1, y = -6.4, z = 19.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, chest_drop_id = 1010900, drop_count = 1, isOneoff = true, room = 1 },
	{ config_id = 1002, gadget_id = 70210011, pos = { x = 26.8, y = -6.4, z = 13.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 4, chest_drop_id = 1010900, drop_count = 1, isOneoff = true, room = 1 },
	{ config_id = 1003, gadget_id = 70210021, pos = { x = 1.7, y = -8.4, z = 24.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 8, chest_drop_id = 1011000, drop_count = 1, isOneoff = true, room = 1 },
	{ config_id = 1004, gadget_id = 70210021, pos = { x = -24.0, y = -6.4, z = -3.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, chest_drop_id = 1011000, drop_count = 1, isOneoff = true, room = 1 },
	{ config_id = 1005, gadget_id = 70210041, pos = { x = -9.9, y = -8.4, z = 24.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 13, chest_drop_id = 1011100, drop_count = 1, isOneoff = true, room = 1 },
	{ config_id = 1006, gadget_id = 70210041, pos = { x = 25.7, y = -6.4, z = 32.7 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 13, chest_drop_id = 1011100, drop_count = 1, isOneoff = true, room = 1 }
}

-- 区域
regions = {
	{ config_id = 1, shape = RegionShape.SPHERE, radius = 6, pos = { x = -4.3, y = -3.2, z = -41.1 }, room = 1 }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_1", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1", action = "", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006 },
		regions = { 1 },
		triggers = { "ENTER_REGION_1" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and (ScriptLib.GetQuestState(context, evt.target_eid, 41503) == QuestState.UNFINISHED 
	or ScriptLib.GetQuestState(context, evt.target_eid, 37503) == QuestState.UNFINISHED ) 
	and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end

-- 触发操作
