--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68, monster_id = 20011201, pos = { x = 2935.9, y = 213.7, z = 179.6 }, rot = { x = 0.0, y = 266.3, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 69, monster_id = 20010501, pos = { x = 2931.6, y = 212.9, z = 178.2 }, rot = { x = 0.0, y = 250.6, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 132, monster_id = 20011201, pos = { x = 2933.8, y = 213.9, z = 174.9 }, rot = { x = 0.0, y = 266.3, z = 0.0 }, level = 20, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 173, gadget_id = 70211112, pos = { x = 2933.5, y = 213.5, z = 177.4 }, rot = { x = 0.0, y = 308.3, z = 0.0 }, level = 23, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 426, gadget_id = 70500000, pos = { x = 2935.1, y = 213.8, z = 176.2 }, rot = { x = 0.0, y = 86.1, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 427, gadget_id = 70500000, pos = { x = 2932.2, y = 213.5, z = 176.6 }, rot = { x = 0.0, y = 9.1, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 428, gadget_id = 70500000, pos = { x = 2933.6, y = 213.3, z = 179.0 }, rot = { x = 0.0, y = 289.3, z = 0.0 }, level = 23, point_type = 2003 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_40", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_40", tlog_tag = "风龙_34_伏击_开始" },
	{ name = "ANY_MONSTER_DIE_87", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_87", action = "action_EVENT_ANY_MONSTER_DIE_87", tlog_tag = "风龙_34_伏击_成功" }
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
	rand_suite = true
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
		gadgets = { 426, 427, 428 },
		regions = { },
		triggers = { "GATHER_40", "ANY_MONSTER_DIE_87" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_GATHER_40(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 132, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 68, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 69, delay_time = 0 }) then
	  return -1
	end
	
	-- 创建id为173的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 173 }) then
	  return -1
	end
	
	-- 将configid为 173 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173, GadgetState.ChestLocked) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_87(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_87(context, evt)
	-- 将configid为 173 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
