--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32, monster_id = 22010301, pos = { x = -54.4, y = -53.0, z = -49.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92, gadget_id = 70220013, pos = { x = -91.2, y = -67.6, z = -126.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 93, gadget_id = 70220013, pos = { x = -93.4, y = -67.6, z = -124.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 94, gadget_id = 70220013, pos = { x = -90.4, y = -67.6, z = -121.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 95, gadget_id = 70220013, pos = { x = -89.8, y = -67.6, z = -124.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 96, gadget_id = 70220013, pos = { x = -15.4, y = -67.5, z = -123.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 97, gadget_id = 70220013, pos = { x = -14.1, y = -67.5, z = -121.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 98, gadget_id = 70220013, pos = { x = -16.3, y = -67.5, z = -120.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 99, gadget_id = 70220013, pos = { x = -13.6, y = -67.5, z = -118.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 14001, shape = RegionShape.SPHERE, radius = 32.3, pos = { x = -53.8, y = -48.0, z = -43.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_14001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_14001", forbid_guest = false }
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
		monsters = { 32 },
		gadgets = { 92, 93, 94, 95, 96, 97, 98, 99 },
		regions = { 14001 },
		triggers = { "ENTER_REGION_14001" },
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
function action_EVENT_ENTER_REGION_14001(context, evt)
	-- 改变指定group组220026003中， configid为3010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220026003, 3010, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
