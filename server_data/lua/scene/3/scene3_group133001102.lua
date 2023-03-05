--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 500, monster_id = 21010301, pos = { x = 1801.9, y = 203.6, z = -1263.3 }, rot = { x = 0.0, y = 124.0, z = 0.0 }, level = 4, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 501, monster_id = 21010401, pos = { x = 1803.6, y = 205.3, z = -1255.7 }, rot = { x = 0.0, y = 24.6, z = 0.0 }, level = 4, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 504, monster_id = 21010301, pos = { x = 1805.4, y = 203.0, z = -1266.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 674, monster_id = 21010201, pos = { x = 1806.5, y = 203.0, z = -1264.6 }, rot = { x = 0.0, y = 285.3, z = 0.0 }, level = 3, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 675, monster_id = 21010501, pos = { x = 1803.8, y = 205.2, z = -1255.8 }, rot = { x = 0.0, y = 6.5, z = 0.0 }, level = 3, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 676, monster_id = 21010201, pos = { x = 1802.9, y = 203.2, z = -1265.8 }, rot = { x = 0.0, y = 56.8, z = 0.0 }, level = 3, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 1079, monster_id = 21010401, pos = { x = 1809.1, y = 207.8, z = -1284.1 }, rot = { x = 0.0, y = 200.0, z = 0.0 }, level = 4, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 1080, monster_id = 21010501, pos = { x = 1808.2, y = 207.8, z = -1283.9 }, rot = { x = 0.0, y = 145.6, z = 0.0 }, level = 3, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1753, gadget_id = 70211012, pos = { x = 1802.9, y = 203.2, z = -1268.2 }, rot = { x = 0.0, y = 23.8, z = 0.0 }, level = 5, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 1919, gadget_id = 70220005, pos = { x = 1811.9, y = 202.5, z = -1264.3 }, rot = { x = 0.0, y = 53.3, z = 0.0 }, level = 5 },
	{ config_id = 1920, gadget_id = 70220005, pos = { x = 1802.1, y = 203.2, z = -1281.3 }, rot = { x = 0.0, y = 53.3, z = 0.0 }, level = 5 },
	{ config_id = 2032, gadget_id = 70310006, pos = { x = 1804.1, y = 203.3, z = -1263.9 }, rot = { x = 0.0, y = 223.1, z = 0.0 }, level = 5, state = GadgetState.GearStart },
	{ config_id = 2077, gadget_id = 70211101, pos = { x = 1637.9, y = 275.2, z = -1536.6 }, rot = { x = 0.0, y = 116.6, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2078, gadget_id = 70211101, pos = { x = 1871.8, y = 195.8, z = -1599.4 }, rot = { x = 0.0, y = 212.7, z = 342.5 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2346, gadget_id = 70220005, pos = { x = 1809.9, y = 202.7, z = -1270.6 }, rot = { x = 0.0, y = 53.3, z = 0.0 }, level = 5 },
	{ config_id = 2353, gadget_id = 70220005, pos = { x = 1802.4, y = 203.0, z = -1282.4 }, rot = { x = 0.0, y = 53.3, z = 0.0 }, level = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_80", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80", action = "action_EVENT_ANY_MONSTER_DIE_80", trigger_count = 0, tlog_tag = "小平原_营地_g102_结束" }
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
		monsters = { 500, 501, 504, 1079 },
		gadgets = { 1753, 1919, 1920, 2032, 2346, 2353 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80(context, evt)
	-- 将configid为 1753 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1753, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
