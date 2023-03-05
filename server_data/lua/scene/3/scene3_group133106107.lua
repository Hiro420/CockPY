--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 107001, monster_id = 21010601, pos = { x = -529.8, y = 200.7, z = 872.9 }, rot = { x = 0.0, y = 279.8, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 107004, monster_id = 21020201, pos = { x = -522.7, y = 208.1, z = 850.7 }, rot = { x = 0.0, y = 9.3, z = 0.0 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, affix = { 1001 }, isElite = true, pose_id = 401 },
	{ config_id = 107005, monster_id = 21010701, pos = { x = -503.5, y = 201.9, z = 858.6 }, rot = { x = 0.0, y = 323.0, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 107006, monster_id = 21010401, pos = { x = -497.9, y = 203.8, z = 855.6 }, rot = { x = 0.0, y = 12.3, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 107007, monster_id = 21011001, pos = { x = -506.9, y = 200.8, z = 869.6 }, rot = { x = 0.0, y = 22.4, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 107002, gadget_id = 70211022, pos = { x = -519.6, y = 204.5, z = 871.2 }, rot = { x = 0.0, y = 9.1, z = 0.0 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_107003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_107003", action = "action_EVENT_ANY_MONSTER_DIE_107003" }
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
		monsters = { 107001, 107004, 107005, 107006, 107007 },
		gadgets = { 107002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_107003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_107003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_107003(context, evt)
	-- 将configid为 107002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
