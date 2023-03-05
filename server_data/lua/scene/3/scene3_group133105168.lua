--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 304, monster_id = 25030201, pos = { x = 813.3, y = 262.8, z = -146.5 }, rot = { x = 0.0, y = 312.5, z = 0.0 }, level = 25, drop_tag = "盗宝团", disableWander = true, affix = { 1001 }, isElite = true },
	{ config_id = 168002, monster_id = 25010201, pos = { x = 812.6, y = 262.7, z = -148.1 }, rot = { x = 0.0, y = 335.1, z = 0.0 }, level = 25, drop_tag = "盗宝团", disableWander = true, affix = { 1001 }, isElite = true },
	{ config_id = 168003, monster_id = 25040201, pos = { x = 814.9, y = 263.1, z = -146.0 }, rot = { x = 0.0, y = 303.5, z = 0.0 }, level = 25, drop_tag = "盗宝团", disableWander = true, affix = { 1001 }, isElite = true },
	{ config_id = 168004, monster_id = 25020201, pos = { x = 812.9, y = 262.6, z = -151.4 }, rot = { x = 0.0, y = 257.5, z = 0.0 }, level = 25, drop_tag = "盗宝团", disableWander = true, affix = { 1001 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_168001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168001", action = "action_EVENT_ANY_MONSTER_DIE_168001" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 304, 168002, 168003, 168004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_168001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_168001(context, evt)
	if 304 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168001(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5005, 3, 1) then
	      return -1
	    end
	
	return 0
end
