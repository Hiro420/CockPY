--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 314, monster_id = 21010501, pos = { x = 566.3, y = 200.5, z = 69.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 315, monster_id = 21010401, pos = { x = 564.1, y = 200.8, z = 71.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 316, monster_id = 21010401, pos = { x = 559.5, y = 200.3, z = 63.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 317, monster_id = 21010401, pos = { x = 553.0, y = 200.1, z = 73.7 }, rot = { x = 4.6, y = 359.8, z = 355.3 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308, gadget_id = 70211012, pos = { x = 557.7, y = 200.3, z = 62.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_172", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_172", action = "action_EVENT_ANY_MONSTER_DIE_172" }
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
		monsters = { 314, 315, 316, 317 },
		gadgets = { 308 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_172" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_172(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_172(context, evt)
	-- 将configid为 308 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
