--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140001, monster_id = 25010201, pos = { x = 946.4, y = 273.7, z = 1534.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 140006, monster_id = 25010201, pos = { x = 950.5, y = 273.3, z = 1534.6 }, rot = { x = 0.0, y = 311.6, z = 0.0 }, level = 24, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 140007, monster_id = 25020201, pos = { x = 954.0, y = 272.1, z = 1542.8 }, rot = { x = 0.0, y = 48.4, z = 0.0 }, level = 24, drop_tag = "盗宝团", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 140002, gadget_id = 70211012, pos = { x = 948.5, y = 272.9, z = 1537.7 }, rot = { x = 0.2, y = 360.0, z = 355.5 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 140004, gadget_id = 70310004, pos = { x = 950.0, y = 272.9, z = 1536.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_140003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_140003", action = "action_EVENT_ANY_MONSTER_DIE_140003" }
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
		monsters = { 140001, 140006, 140007 },
		gadgets = { 140002, 140004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_140003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_140003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_140003(context, evt)
	-- 将configid为 140002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
