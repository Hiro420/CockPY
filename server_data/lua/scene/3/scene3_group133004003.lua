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
	{ config_id = 3, gadget_id = 70211101, pos = { x = 2346.6, y = 238.4, z = -856.0 }, rot = { x = 0.0, y = 25.1, z = 0.0 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 4, gadget_id = 70211101, pos = { x = 2263.9, y = 239.9, z = -833.8 }, rot = { x = 0.0, y = 27.1, z = 0.0 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 5, gadget_id = 70211101, pos = { x = 2166.2, y = 225.6, z = -825.3 }, rot = { x = 0.0, y = 298.7, z = 0.0 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 6, gadget_id = 70211101, pos = { x = 2199.8, y = 210.8, z = -917.7 }, rot = { x = 0.0, y = 339.7, z = 0.0 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 8, gadget_id = 70211101, pos = { x = 2186.8, y = 210.1, z = -873.6 }, rot = { x = 0.0, y = 253.1, z = 0.0 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 9, gadget_id = 70211101, pos = { x = 2319.1, y = 214.1, z = -923.6 }, rot = { x = 0.0, y = 53.1, z = 0.0 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 10, gadget_id = 70211101, pos = { x = 2229.1, y = 236.1, z = -752.5 }, rot = { x = 0.0, y = 73.0, z = 0.0 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 11, gadget_id = 70211101, pos = { x = 2286.6, y = 236.5, z = -876.5 }, rot = { x = 0.0, y = 297.4, z = 0.0 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		-- description = 蒙德城内宝箱,
		monsters = { },
		gadgets = { 3, 4, 5, 6, 8, 9, 10, 11 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
