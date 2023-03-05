--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42, monster_id = 21011001, pos = { x = 497.6, y = 206.7, z = -484.9 }, rot = { x = 0.0, y = 78.1, z = 0.0 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 43, monster_id = 21010301, pos = { x = 511.9, y = 200.2, z = -480.0 }, rot = { x = 0.0, y = 45.1, z = 0.0 }, level = 21, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 44, monster_id = 21010701, pos = { x = 506.3, y = 200.2, z = -486.3 }, rot = { x = 0.0, y = 174.2, z = 0.0 }, level = 21, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 45, monster_id = 21010501, pos = { x = 508.8, y = 200.1, z = -489.4 }, rot = { x = 0.0, y = 312.5, z = 0.0 }, level = 21, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 46, monster_id = 21010201, pos = { x = 506.2, y = 200.1, z = -489.5 }, rot = { x = 0.0, y = 38.5, z = 0.0 }, level = 21, drop_tag = "丘丘人", pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 369, gadget_id = 70211012, pos = { x = 502.8, y = 200.4, z = -482.6 }, rot = { x = 7.3, y = 99.7, z = 359.5 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_186", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_186", action = "action_EVENT_ANY_MONSTER_DIE_186" }
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
		monsters = { 42, 43, 44, 45, 46 },
		gadgets = { 369 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_186" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_186(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_186(context, evt)
	-- 将configid为 369 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 369, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
