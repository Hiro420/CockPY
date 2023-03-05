--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 383001, monster_id = 25040201, pos = { x = 352.1, y = 215.6, z = 1553.5 }, rot = { x = 0.0, y = 330.4, z = 0.0 }, level = 24, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 383004, monster_id = 25010201, pos = { x = 352.5, y = 215.7, z = 1555.0 }, rot = { x = 0.0, y = 206.3, z = 0.0 }, level = 24, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 383002, gadget_id = 70211012, pos = { x = 346.0, y = 213.9, z = 1554.7 }, rot = { x = 6.4, y = 285.7, z = 12.1 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_383003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_383003", action = "action_EVENT_ANY_MONSTER_DIE_383003" }
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
		monsters = { 383001, 383004 },
		gadgets = { 383002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_383003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_383003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_383003(context, evt)
	-- 将configid为 383002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 383002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
