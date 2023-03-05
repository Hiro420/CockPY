--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12, monster_id = 24010101, pos = { x = 191.5, y = 59.3, z = 398.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 2, affix = { 1001, 1002, 1003 }, isElite = true },
	{ config_id = 17, monster_id = 21010301, pos = { x = 181.0, y = 56.8, z = 392.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 18, monster_id = 21010301, pos = { x = 202.7, y = 57.0, z = 391.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 19, monster_id = 21010301, pos = { x = 177.6, y = 57.0, z = 379.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 20, monster_id = 21010301, pos = { x = 205.9, y = 57.0, z = 379.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38, gadget_id = 70211011, pos = { x = 191.7, y = 57.0, z = 388.4 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, type = GadgetType.GADGET_DUNGEON_PASS_CHEST },
	{ config_id = 41, gadget_id = 70220004, pos = { x = 201.0, y = 57.0, z = 379.4 }, rot = { x = 0.0, y = 354.2, z = 0.0 }, level = 1 },
	{ config_id = 42, gadget_id = 70220004, pos = { x = 183.6, y = 57.0, z = 389.2 }, rot = { x = 0.0, y = 106.8, z = 0.0 }, level = 1 },
	{ config_id = 43, gadget_id = 70220004, pos = { x = 200.6, y = 57.0, z = 388.5 }, rot = { x = 0.0, y = 12.8, z = 0.0 }, level = 1 },
	{ config_id = 44, gadget_id = 70220004, pos = { x = 200.2, y = 56.9, z = 369.9 }, rot = { x = 0.0, y = 214.6, z = 0.0 }, level = 1 },
	{ config_id = 45, gadget_id = 70220005, pos = { x = 201.4, y = 58.5, z = 356.5 }, rot = { x = 0.0, y = 134.9, z = 0.0 }, level = 1 },
	{ config_id = 46, gadget_id = 70220005, pos = { x = 191.4, y = 58.4, z = 356.3 }, rot = { x = 0.0, y = 189.9, z = 0.0 }, level = 1 },
	{ config_id = 47, gadget_id = 70220005, pos = { x = 181.7, y = 58.5, z = 356.4 }, rot = { x = 0.0, y = 334.7, z = 0.0 }, level = 1 },
	{ config_id = 48, gadget_id = 70220005, pos = { x = 184.1, y = 59.0, z = 397.1 }, rot = { x = 0.0, y = 102.0, z = 0.0 }, level = 1 },
	{ config_id = 49, gadget_id = 70220005, pos = { x = 199.0, y = 59.0, z = 397.0 }, rot = { x = 0.0, y = 178.2, z = 0.0 }, level = 1 },
	{ config_id = 119, gadget_id = 70220004, pos = { x = 204.1, y = 57.0, z = 379.1 }, rot = { x = 0.0, y = 224.4, z = 0.0 }, level = 1 },
	{ config_id = 120, gadget_id = 70220004, pos = { x = 204.2, y = 57.0, z = 369.1 }, rot = { x = 0.0, y = 166.8, z = 0.0 }, level = 1 },
	{ config_id = 121, gadget_id = 70220004, pos = { x = 179.5, y = 57.0, z = 368.7 }, rot = { x = 0.0, y = 136.2, z = 0.0 }, level = 1 },
	{ config_id = 122, gadget_id = 70220004, pos = { x = 182.1, y = 57.0, z = 371.3 }, rot = { x = 0.0, y = 68.7, z = 0.0 }, level = 1 },
	{ config_id = 123, gadget_id = 70220004, pos = { x = 182.6, y = 57.0, z = 380.0 }, rot = { x = 0.0, y = 320.4, z = 0.0 }, level = 1 },
	{ config_id = 124, gadget_id = 70220004, pos = { x = 179.3, y = 57.0, z = 379.0 }, rot = { x = 0.0, y = 224.5, z = 0.0 }, level = 1 },
	{ config_id = 125, gadget_id = 70220004, pos = { x = 179.4, y = 57.0, z = 388.2 }, rot = { x = 0.0, y = 359.3, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "DUNGEON_SETTLE_15", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_15", action = "action_EVENT_DUNGEON_SETTLE_15" }
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
	rand_suite = false,
	npcs = { }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 12 },
		gadgets = { 41, 42, 43, 44, 45, 46, 47, 48, 49, 119, 120, 121, 122, 123, 124, 125 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_15" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_15(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_15(context, evt)
	-- 创生gadget 38
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 38 }) then
		return -1
	end
	
	return 0
end
