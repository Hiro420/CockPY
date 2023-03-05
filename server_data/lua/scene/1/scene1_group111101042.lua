--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42001, monster_id = 21010201, pos = { x = 2278.1, y = 246.6, z = -1416.2 }, rot = { x = 0.0, y = 272.1, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 42012, monster_id = 21010401, pos = { x = 2276.7, y = 246.3, z = -1417.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 42013, monster_id = 21010201, pos = { x = 2275.4, y = 246.0, z = -1416.6 }, rot = { x = 0.0, y = 93.1, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 42014, monster_id = 21010301, pos = { x = 2281.5, y = 247.4, z = -1416.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42002, gadget_id = 70211012, pos = { x = 2276.0, y = 246.0, z = -1420.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 42004, gadget_id = 70220013, pos = { x = 2277.9, y = 246.4, z = -1420.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 42005, gadget_id = 70220013, pos = { x = 2279.7, y = 246.9, z = -1419.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 42006, gadget_id = 70220005, pos = { x = 2278.2, y = 246.6, z = -1419.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 42007, gadget_id = 70220014, pos = { x = 2274.5, y = 245.8, z = -1421.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 42008, gadget_id = 70220014, pos = { x = 2274.2, y = 245.7, z = -1420.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 42009, gadget_id = 70220014, pos = { x = 2272.9, y = 245.3, z = -1421.2 }, rot = { x = 0.9, y = 356.6, z = 320.1 }, level = 1 },
	{ config_id = 42010, gadget_id = 70310004, pos = { x = 2276.8, y = 246.3, z = -1416.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 42011, gadget_id = 70220017, pos = { x = 2273.7, y = 245.6, z = -1417.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_42003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42003", action = "action_EVENT_ANY_MONSTER_DIE_42003" }
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
		monsters = { 42001, 42012, 42013, 42014 },
		gadgets = { 42002, 42004, 42005, 42006, 42007, 42008, 42009, 42010, 42011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_42003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 将configid为 42002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
