--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45001, monster_id = 25010202, pos = { x = -916.0, y = 234.3, z = 668.3 }, rot = { x = 0.0, y = 107.3, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 45005, monster_id = 25040201, pos = { x = -914.2, y = 234.3, z = 668.9 }, rot = { x = 0.0, y = 229.9, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 45007, monster_id = 25020201, pos = { x = -918.9, y = 237.0, z = 667.1 }, rot = { x = 0.0, y = 90.3, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 45002, gadget_id = 70211012, pos = { x = -920.4, y = 237.0, z = 668.6 }, rot = { x = 0.0, y = 160.6, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 45006, gadget_id = 70310004, pos = { x = -919.4, y = 237.0, z = 665.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_45003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45003", action = "action_EVENT_ANY_MONSTER_DIE_45003" }
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
		monsters = { 45001, 45005, 45007 },
		gadgets = { 45002, 45006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45003(context, evt)
	-- 将configid为 45002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
