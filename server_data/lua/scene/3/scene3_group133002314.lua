--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 314010, monster_id = 28030302, pos = { x = 1973.0, y = 208.6, z = -754.7 }, rot = { x = 0.0, y = 248.4, z = 0.0 }, level = 10, drop_tag = "鸟类", disableWander = true, pose_id = 2 },
	{ config_id = 314011, monster_id = 28030301, pos = { x = 1973.8, y = 208.0, z = -755.9 }, rot = { x = 0.0, y = 136.7, z = 0.0 }, level = 10, drop_tag = "鸟类", disableWander = true, pose_id = 2 },
	{ config_id = 314012, monster_id = 28030304, pos = { x = 1974.9, y = 208.2, z = -755.1 }, rot = { x = 0.0, y = 120.1, z = 0.0 }, level = 10, drop_tag = "鸟类" }
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
	{ name = "ANY_MONSTER_DIE_314015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_314015", action = "action_EVENT_ANY_MONSTER_DIE_314015" }
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
		monsters = { 314010, 314011, 314012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_314015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_314015(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_314015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330023101") then
	  return -1
	end
	
	return 0
end
