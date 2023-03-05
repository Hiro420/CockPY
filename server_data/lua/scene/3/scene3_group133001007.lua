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
	{ config_id = 24, gadget_id = 70690001, pos = { x = 1919.6, y = 215.5, z = -1141.8 }, rot = { x = 0.0, y = 219.3, z = 0.0 }, level = 5 },
	{ config_id = 28, gadget_id = 70690001, pos = { x = 1870.0, y = 210.4, z = -1193.9 }, rot = { x = 346.3, y = 236.1, z = 357.1 }, level = 5 },
	{ config_id = 30, gadget_id = 70690001, pos = { x = 1850.3, y = 214.3, z = -1203.0 }, rot = { x = 346.7, y = 242.7, z = 355.6 }, level = 5 },
	{ config_id = 1562, gadget_id = 70690001, pos = { x = 1902.4, y = 214.2, z = -1163.9 }, rot = { x = 12.1, y = 225.2, z = 4.5 }, level = 5 },
	{ config_id = 2354, gadget_id = 70690001, pos = { x = 1650.7, y = 231.4, z = -1658.1 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 2355, gadget_id = 70690001, pos = { x = 1650.7, y = 242.7, z = -1658.1 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 2356, gadget_id = 70690001, pos = { x = 1650.7, y = 251.1, z = -1658.1 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 2413, gadget_id = 70690001, pos = { x = 1650.7, y = 221.4, z = -1658.1 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 5 },
	{ config_id = 3082, gadget_id = 70220001, pos = { x = 1860.8, y = 249.1, z = -1037.6 }, rot = { x = 12.7, y = 100.3, z = 351.0 }, level = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_370", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_370", action = "" }
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
		gadgets = { 2354, 2355, 2356, 2413 },
		regions = { },
		triggers = { "GATHER_370" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_370(context, evt)
	if 0 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
