--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 490001, monster_id = 24010101, pos = { x = 321.7, y = 222.5, z = 196.6 }, rot = { x = 0.0, y = 313.4, z = 0.0 }, level = 19, drop_tag = "遗迹守卫" },
	{ config_id = 490008, monster_id = 24010101, pos = { x = 345.4, y = 221.6, z = 227.2 }, rot = { x = 0.0, y = 313.4, z = 0.0 }, level = 19, drop_tag = "遗迹守卫" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 490002, gadget_id = 70211022, pos = { x = 332.6, y = 223.2, z = 214.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_490003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_490003", action = "action_EVENT_ANY_MONSTER_DIE_490003" }
}

-- 变量
variables = {
	{ name = "isFinished", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		monsters = { 490008 },
		gadgets = { 490002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_490003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_490003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_490003(context, evt)
	-- 将configid为 490002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 490002, GadgetState.Default) then
			return -1
		end 
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
