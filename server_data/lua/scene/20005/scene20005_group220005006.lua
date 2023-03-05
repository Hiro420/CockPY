--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6003, monster_id = 20010801, pos = { x = -196.2, y = 25.8, z = 126.7 }, rot = { x = 0.0, y = 218.7, z = 0.0 }, level = 1, pose_id = 901 },
	{ config_id = 6005, monster_id = 20010801, pos = { x = -191.4, y = 25.8, z = 126.6 }, rot = { x = 0.0, y = 218.7, z = 0.0 }, level = 1, pose_id = 901 },
	{ config_id = 6006, monster_id = 20010801, pos = { x = -186.6, y = 25.8, z = 128.3 }, rot = { x = 0.0, y = 218.7, z = 0.0 }, level = 1, pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6002, gadget_id = 70900201, pos = { x = -230.6, y = 30.6, z = 171.4 }, rot = { x = 0.0, y = 89.4, z = 0.0 }, level = 1 },
	{ config_id = 6008, gadget_id = 70350005, pos = { x = -190.6, y = 25.3, z = 141.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_6009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6009", action = "action_EVENT_ANY_MONSTER_DIE_6009" }
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
		monsters = { 6003, 6005, 6006 },
		gadgets = { 6008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	-- 将configid为 6008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6008, GadgetState.GearStart) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005004, monsters = {}, gadgets = {4014} }) then
			return -1
		end
	
	-- 创建id为6002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6002 }) then
	  return -1
	end
	
	return 0
end
