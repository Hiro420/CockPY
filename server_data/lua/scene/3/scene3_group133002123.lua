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
	{ config_id = 1398, gadget_id = 70211101, pos = { x = 1792.6, y = 243.0, z = -821.5 }, rot = { x = 0.0, y = 113.8, z = 0.0 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 1552, gadget_id = 70211101, pos = { x = 1900.9, y = 206.5, z = -166.7 }, rot = { x = 18.5, y = 221.8, z = 356.2 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true }
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
		-- description = ,
		monsters = { },
		gadgets = { 1398, 1552 },
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