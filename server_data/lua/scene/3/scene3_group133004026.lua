--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26002, monster_id = 20011001, pos = { x = 2165.7, y = 210.5, z = -480.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 26003, monster_id = 20011001, pos = { x = 2168.8, y = 210.5, z = -488.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" },
	{ config_id = 26004, monster_id = 20011001, pos = { x = 2172.8, y = 210.5, z = -491.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 26005, gadget_id = 70211111, pos = { x = 2146.0, y = 211.4, z = -460.3 }, rot = { x = 0.0, y = 343.3, z = 0.0 }, level = 15, drop_tag = "解谜中级蒙德", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 26006, gadget_id = 70220024, pos = { x = 2148.8, y = 210.8, z = -468.4 }, rot = { x = 0.0, y = 354.4, z = 0.0 }, level = 15, isOneoff = true },
	{ config_id = 26007, gadget_id = 70310001, pos = { x = 2148.2, y = 211.1, z = -459.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 26008, gadget_id = 70310001, pos = { x = 2144.1, y = 211.2, z = -461.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 26009, gadget_id = 70211101, pos = { x = 2158.4, y = 220.8, z = -470.8 }, rot = { x = 5.4, y = 68.3, z = 350.6 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		monsters = { 26002, 26003, 26004 },
		gadgets = { 26005, 26006, 26007, 26008, 26009 },
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
