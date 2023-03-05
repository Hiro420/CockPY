--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 218, monster_id = 21010201, pos = { x = 982.3, y = 213.2, z = -6.7 }, rot = { x = 344.6, y = 234.3, z = 355.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 219, monster_id = 21010501, pos = { x = 985.4, y = 214.1, z = -12.0 }, rot = { x = 0.0, y = 53.7, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 220, monster_id = 21010301, pos = { x = 992.9, y = 210.9, z = 3.6 }, rot = { x = 0.0, y = 267.0, z = 0.0 }, level = 20, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 221, monster_id = 21030201, pos = { x = 989.9, y = 211.0, z = 3.5 }, rot = { x = 0.0, y = 87.9, z = 0.0 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 313, gadget_id = 70211012, pos = { x = 980.2, y = 213.6, z = -8.2 }, rot = { x = 9.9, y = 58.4, z = 12.4 }, level = 25, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_169", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169", action = "action_EVENT_ANY_MONSTER_DIE_169" }
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
		monsters = { 218, 219, 220, 221 },
		gadgets = { 313 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_169" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_169(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_169(context, evt)
	-- 将configid为 313 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
