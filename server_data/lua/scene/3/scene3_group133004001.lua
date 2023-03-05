-- Trigger变量
local defs = {
	gadget_id_1 = 8
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
	{ config_id = 6, npc_id = 1202, pos = { x = 1859.3, y = 258.1, z = -575.6 }, rot = { x = 0.0, y = 241.8, z = 0.0 }, pointID = 3 },
	{ config_id = 7, npc_id = 1203, pos = { x = 1928.4, y = 196.1, z = -1265.9 }, rot = { x = 0.0, y = 94.1, z = 0.0 }, pointID = 4 },
	{ config_id = 16, npc_id = 1201, pos = { x = 2566.1, y = 214.1, z = -1323.5 }, rot = { x = 0.0, y = 194.0, z = 0.0 }, pointID = 7 },
	{ config_id = 55, npc_id = 1204, pos = { x = 2642.8, y = 262.1, z = 176.3 }, rot = { x = 0.0, y = 76.9, z = 0.0 }, pointID = 29 }
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 8, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2290.7, y = 230.0, z = -822.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_8", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8", action = "", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 6, 7, 16, 55 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 37001) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end

-- 触发操作
