--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 259, monster_id = 21010201, pos = { x = 406.8, y = 201.1, z = -74.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 260, monster_id = 21010201, pos = { x = 411.1, y = 201.0, z = -71.0 }, rot = { x = 0.0, y = 120.7, z = 0.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 261, monster_id = 21010701, pos = { x = 409.3, y = 201.2, z = -66.2 }, rot = { x = 0.0, y = 170.6, z = 0.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 262, monster_id = 21011001, pos = { x = 399.4, y = 201.3, z = -75.9 }, rot = { x = 0.0, y = 218.3, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 410, gadget_id = 70211012, pos = { x = 408.6, y = 201.1, z = -70.5 }, rot = { x = 359.1, y = 168.0, z = 0.2 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_194", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_194", action = "action_EVENT_ANY_MONSTER_DIE_194" }
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
		monsters = { 259, 260, 261, 262 },
		gadgets = { 410 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_194" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_194(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_194(context, evt)
	-- 将configid为 410 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 410, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
