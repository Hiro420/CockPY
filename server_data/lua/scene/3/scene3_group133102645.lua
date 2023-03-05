--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 645001, monster_id = 25030202, pos = { x = 1703.4, y = 246.1, z = 767.6 }, rot = { x = 0.0, y = 153.9, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 645004, monster_id = 25040201, pos = { x = 1704.0, y = 246.0, z = 764.3 }, rot = { x = 0.0, y = 45.4, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 645005, monster_id = 25010201, pos = { x = 1701.3, y = 245.7, z = 764.7 }, rot = { x = 0.0, y = 231.1, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 645006, monster_id = 25020201, pos = { x = 1707.5, y = 246.3, z = 764.6 }, rot = { x = 0.0, y = 276.4, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 645002, gadget_id = 70211022, pos = { x = 1706.7, y = 246.7, z = 768.1 }, rot = { x = 6.6, y = 217.0, z = 1.6 }, level = 18, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_645003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_645003", action = "action_EVENT_ANY_MONSTER_DIE_645003" }
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
		monsters = { 645001, 645004, 645005, 645006 },
		gadgets = { 645002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_645003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_645003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_645003(context, evt)
	-- 将configid为 645002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 645002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
