--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265, monster_id = 21030201, pos = { x = 301.0, y = 247.0, z = 932.8 }, rot = { x = 4.3, y = 96.2, z = 353.3 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 266, monster_id = 21010501, pos = { x = 301.3, y = 247.4, z = 926.0 }, rot = { x = 354.6, y = 73.8, z = 347.8 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 97001, monster_id = 21010701, pos = { x = 303.7, y = 246.4, z = 928.9 }, rot = { x = 3.6, y = 133.2, z = 354.8 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 205, gadget_id = 70211012, pos = { x = 298.6, y = 248.4, z = 929.4 }, rot = { x = 23.7, y = 98.5, z = 7.3 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_142", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_142", action = "action_EVENT_ANY_MONSTER_DIE_142" }
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
		monsters = { 265, 266, 97001 },
		gadgets = { 205 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_142" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_142(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_142(context, evt)
	-- 将configid为 205 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
