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
	{ config_id = 18, gadget_id = 70211001, pos = { x = 147.2, y = 9.0, z = -88.6 }, rot = { x = 0.0, y = 133.1, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
	{ config_id = 16, shape = RegionShape.CUBIC, size = { x = 10.0, y = 3.0, z = 10.0 }, pos = { x = 147.3, y = 5.6, z = -80.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_16", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_16", forbid_guest = false }
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
		regions = { 16 },
		triggers = { "ENTER_REGION_16" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_ENTER_REGION_16(context, evt)
	-- 创建id为18的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 18 }) then
	  return -1
	end
	
	return 0
end
