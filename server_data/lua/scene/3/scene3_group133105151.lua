--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 253, monster_id = 21030201, pos = { x = 475.0, y = 200.7, z = -38.4 }, rot = { x = 0.0, y = 133.9, z = 0.0 }, level = 18, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 254, monster_id = 21010701, pos = { x = 484.2, y = 200.6, z = -41.2 }, rot = { x = 0.0, y = 295.3, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 255, monster_id = 21010301, pos = { x = 475.1, y = 200.7, z = -45.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 408, gadget_id = 70211012, pos = { x = 483.6, y = 200.4, z = -44.5 }, rot = { x = 0.0, y = 300.3, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_193", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_193", action = "action_EVENT_ANY_MONSTER_DIE_193" }
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
		monsters = { 253, 254, 255 },
		gadgets = { 408 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_193" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_193(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_193(context, evt)
	-- 将configid为 408 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 408, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
