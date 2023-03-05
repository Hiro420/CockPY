--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 106001, monster_id = 21010401, pos = { x = -488.7, y = 180.8, z = 919.6 }, rot = { x = 0.0, y = 218.9, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 106004, monster_id = 21010401, pos = { x = -497.1, y = 182.3, z = 934.4 }, rot = { x = 0.0, y = 140.5, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 },
	{ config_id = 106005, monster_id = 21010401, pos = { x = -481.9, y = 181.9, z = 930.5 }, rot = { x = 0.0, y = 172.6, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 106006, monster_id = 21010501, pos = { x = -485.9, y = 180.8, z = 918.7 }, rot = { x = 0.0, y = 336.0, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 106007, monster_id = 21020301, pos = { x = -488.2, y = 181.5, z = 927.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 106002, gadget_id = 70211022, pos = { x = -488.3, y = 181.2, z = 925.3 }, rot = { x = 353.8, y = 0.0, z = 0.0 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_106003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_106003", action = "action_EVENT_ANY_MONSTER_DIE_106003" }
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
		monsters = { 106001, 106004, 106005, 106006, 106007 },
		gadgets = { 106002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_106003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_106003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_106003(context, evt)
	-- 将configid为 106002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
