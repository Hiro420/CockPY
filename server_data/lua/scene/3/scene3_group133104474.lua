--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 474001, monster_id = 24010101, pos = { x = -73.2, y = 268.4, z = 78.7 }, rot = { x = 0.0, y = 62.1, z = 0.0 }, level = 19, drop_tag = "遗迹守卫", disableWander = true, pose_id = 100 },
	{ config_id = 474004, monster_id = 24010101, pos = { x = -59.0, y = 268.4, z = 104.0 }, rot = { x = 0.0, y = 262.3, z = 0.0 }, level = 19, drop_tag = "遗迹守卫", disableWander = true, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 474002, gadget_id = 70211022, pos = { x = -68.1, y = 268.3, z = 94.5 }, rot = { x = 355.1, y = 151.2, z = 358.6 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 474005, gadget_id = 70211012, pos = { x = -68.8, y = 268.3, z = 88.0 }, rot = { x = 359.3, y = 36.1, z = 359.5 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 474006, gadget_id = 70211012, pos = { x = -63.1, y = 268.4, z = 89.9 }, rot = { x = 359.9, y = 278.8, z = 0.9 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_474003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_474003", action = "action_EVENT_ANY_MONSTER_DIE_474003" }
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
		monsters = { 474001 },
		gadgets = { 474002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_474003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_474003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_474003(context, evt)
	-- 将configid为 474002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474002, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 474005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474005, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 474006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474006, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
