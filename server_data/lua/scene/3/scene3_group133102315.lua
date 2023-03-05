--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 315001, monster_id = 21010201, pos = { x = 1117.8, y = 202.0, z = 302.1 }, rot = { x = 7.2, y = 287.0, z = 6.8 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 315004, monster_id = 21010601, pos = { x = 1113.8, y = 201.3, z = 303.3 }, rot = { x = 352.8, y = 130.9, z = 348.1 }, level = 16, drop_tag = "丘丘人", pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 315002, gadget_id = 70211012, pos = { x = 1114.7, y = 201.2, z = 299.6 }, rot = { x = 5.1, y = 195.9, z = 348.6 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 315005, gadget_id = 70310004, pos = { x = 1115.3, y = 201.5, z = 301.9 }, rot = { x = 12.6, y = 287.9, z = 6.8 }, level = 16, state = GadgetState.GearStart },
	{ config_id = 315006, gadget_id = 70220014, pos = { x = 1117.1, y = 201.7, z = 299.8 }, rot = { x = 7.5, y = 287.1, z = 6.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_315003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_315003", action = "action_EVENT_ANY_MONSTER_DIE_315003" }
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
		monsters = { 315001, 315004 },
		gadgets = { 315002, 315005, 315006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_315003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_315003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_315003(context, evt)
	-- 将configid为 315002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 315002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
