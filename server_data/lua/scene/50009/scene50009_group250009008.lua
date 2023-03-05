--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7, monster_id = 20010101, pos = { x = 187.1, y = 4.0, z = -87.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28, gadget_id = 70211001, pos = { x = 185.7, y = 4.0, z = -84.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
	{ config_id = 24, shape = RegionShape.SPHERE, radius = 5, pos = { x = 179.9, y = 4.0, z = -96.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_24", event = EventType.EVENT_ENTER_REGION, source = "2", condition = "condition_EVENT_ENTER_REGION_24", action = "action_EVENT_ENTER_REGION_24", forbid_guest = false }
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
		monsters = { 7 },
		gadgets = { },
		regions = { 24 },
		triggers = { "ENTER_REGION_24" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_24(context, evt)
		if evt.param1 ~= 24 or evt.param3 ~= 7 then
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24(context, evt)
		if 0~= ScriptLib.CreateGadget(context, { config_id = 28}) then
		return -1
		end
		
		return 0
end
