--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 115001, monster_id = 21020201, pos = { x = 500.5, y = 168.9, z = 1182.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 115004, monster_id = 21030301, pos = { x = 498.2, y = 168.6, z = 1183.7 }, rot = { x = 0.0, y = 48.4, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 115005, monster_id = 21010701, pos = { x = 496.6, y = 168.5, z = 1200.1 }, rot = { x = 0.0, y = 48.4, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 115006, monster_id = 21010701, pos = { x = 510.7, y = 167.4, z = 1204.6 }, rot = { x = 0.0, y = 84.0, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 115007, monster_id = 21010401, pos = { x = 513.1, y = 167.7, z = 1196.2 }, rot = { x = 0.0, y = 6.1, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 115002, gadget_id = 70211022, pos = { x = 493.9, y = 168.9, z = 1179.0 }, rot = { x = 0.6, y = 25.0, z = 7.2 }, level = 24, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 115008, gadget_id = 70310001, pos = { x = 522.1, y = 167.9, z = 1209.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 115009, gadget_id = 70220013, pos = { x = 493.8, y = 168.6, z = 1192.5 }, rot = { x = 0.0, y = 46.0, z = 0.0 }, level = 24 },
	{ config_id = 115010, gadget_id = 70310001, pos = { x = 498.6, y = 168.4, z = 1201.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 115011, gadget_id = 70310009, pos = { x = 500.3, y = 168.5, z = 1185.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_115003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_115003", action = "action_EVENT_ANY_MONSTER_DIE_115003" }
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
		-- description = suite_1,
		monsters = { 115001, 115004, 115005, 115006, 115007 },
		gadgets = { 115002, 115008, 115009, 115010, 115011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_115003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_115003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_115003(context, evt)
	-- 将configid为 115002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
