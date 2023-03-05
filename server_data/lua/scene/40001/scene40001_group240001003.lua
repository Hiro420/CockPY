--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7, monster_id = 21010301, pos = { x = 58.9, y = 42.0, z = 123.7 }, rot = { x = 0.0, y = 287.7, z = 0.0 }, level = 1 },
	{ config_id = 8, monster_id = 21010301, pos = { x = 59.0, y = 42.0, z = 121.3 }, rot = { x = 0.0, y = 314.8, z = 0.0 }, level = 1 },
	{ config_id = 9, monster_id = 21010301, pos = { x = 1.1, y = 47.0, z = 62.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10, monster_id = 21010301, pos = { x = -1.8, y = 47.0, z = 60.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 33, monster_id = 21010201, pos = { x = 58.1, y = 42.0, z = 121.9 }, rot = { x = 0.0, y = 263.4, z = 0.0 }, level = 1 },
	{ config_id = 34, monster_id = 21010601, pos = { x = 58.5, y = 42.0, z = 120.3 }, rot = { x = 0.0, y = 273.7, z = 0.0 }, level = 1 },
	{ config_id = 36, monster_id = 21010201, pos = { x = 2.2, y = 47.0, z = 60.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 37, monster_id = 21010601, pos = { x = 3.8, y = 47.0, z = 59.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
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
	{ name = "ANY_MONSTER_DIE_2", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2", action = "action_EVENT_ANY_MONSTER_DIE_2" }
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
	rand_suite = false,
	npcs = { }
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
		monsters = { 7, 8, 9, 10 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 7, 8, 9, 10 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 33, 34, 36, 37 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240001004, suite = 2 }) then
			return -1
		end
	
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=7, y=42, z=96}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	return 0
	
end
