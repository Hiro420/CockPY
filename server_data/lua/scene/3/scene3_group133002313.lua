--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 313005, monster_id = 28030301, pos = { x = 1934.5, y = 209.1, z = -808.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "鸟类", disableWander = true, pose_id = 2 },
	{ config_id = 313006, monster_id = 28030302, pos = { x = 1935.7, y = 208.9, z = -807.8 }, rot = { x = 0.0, y = 248.4, z = 0.0 }, level = 10, drop_tag = "鸟类", disableWander = true, pose_id = 2 },
	{ config_id = 313007, monster_id = 28030301, pos = { x = 1936.2, y = 209.0, z = -810.2 }, rot = { x = 0.0, y = 95.5, z = 0.0 }, level = 10, drop_tag = "鸟类", disableWander = true, pose_id = 2 },
	{ config_id = 313008, monster_id = 28030301, pos = { x = 1936.5, y = 208.9, z = -809.0 }, rot = { x = 0.0, y = 136.7, z = 0.0 }, level = 10, drop_tag = "鸟类", disableWander = true, pose_id = 2 },
	{ config_id = 313009, monster_id = 28030304, pos = { x = 1937.6, y = 208.8, z = -808.2 }, rot = { x = 0.0, y = 120.1, z = 0.0 }, level = 10, drop_tag = "鸟类" }
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
	{ name = "ANY_MONSTER_DIE_313014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_313014", action = "action_EVENT_ANY_MONSTER_DIE_313014" }
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
		monsters = { 313005, 313006, 313007, 313008, 313009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_313014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_313014(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_313014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330023101") then
	  return -1
	end
	
	return 0
end
