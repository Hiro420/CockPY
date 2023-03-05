--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 330001, monster_id = 21010201, pos = { x = 525.6, y = 288.2, z = 1501.6 }, rot = { x = 0.0, y = 107.7, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 330004, monster_id = 21010201, pos = { x = 509.2, y = 289.6, z = 1504.5 }, rot = { x = 0.0, y = 234.6, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 330011, monster_id = 21020201, pos = { x = 517.1, y = 289.4, z = 1512.1 }, rot = { x = 0.0, y = 94.9, z = 0.0 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 330012, monster_id = 21011001, pos = { x = 488.4, y = 301.4, z = 1498.5 }, rot = { x = 0.0, y = 69.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 330013, monster_id = 21010901, pos = { x = 545.0, y = 297.1, z = 1489.8 }, rot = { x = 0.0, y = 278.6, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 330002, gadget_id = 70211012, pos = { x = 521.6, y = 288.5, z = 1509.4 }, rot = { x = 0.0, y = 282.6, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 330005, gadget_id = 70220013, pos = { x = 525.3, y = 288.2, z = 1508.9 }, rot = { x = 0.0, y = 66.8, z = 0.0 }, level = 24 },
	{ config_id = 330006, gadget_id = 70220013, pos = { x = 523.2, y = 288.3, z = 1511.8 }, rot = { x = 0.0, y = 95.0, z = 0.0 }, level = 24 },
	{ config_id = 330007, gadget_id = 70310001, pos = { x = 526.8, y = 291.0, z = 1481.3 }, rot = { x = 0.0, y = 257.4, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 330008, gadget_id = 70310001, pos = { x = 502.7, y = 292.1, z = 1486.9 }, rot = { x = 0.0, y = 178.6, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 330009, gadget_id = 70310001, pos = { x = 523.9, y = 288.7, z = 1495.4 }, rot = { x = 0.0, y = 279.1, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 330010, gadget_id = 70310001, pos = { x = 507.4, y = 290.1, z = 1508.9 }, rot = { x = 0.0, y = 244.2, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 330014, gadget_id = 70310006, pos = { x = 519.7, y = 288.8, z = 1513.4 }, rot = { x = 0.0, y = 199.1, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_330003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_330003", action = "action_EVENT_ANY_MONSTER_DIE_330003" }
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
		monsters = { 330001, 330004, 330011, 330012, 330013 },
		gadgets = { 330002, 330005, 330006, 330007, 330008, 330009, 330010, 330014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_330003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_330003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_330003(context, evt)
	-- 将configid为 330002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 330002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
