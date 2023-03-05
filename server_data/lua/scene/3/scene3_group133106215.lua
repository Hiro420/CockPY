--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 215001, monster_id = 21011201, pos = { x = -313.0, y = 248.9, z = 741.7 }, rot = { x = 0.0, y = 269.3, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9010 },
	{ config_id = 215004, monster_id = 21011201, pos = { x = -316.2, y = 248.3, z = 744.8 }, rot = { x = 0.0, y = 145.1, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 215005, monster_id = 21011201, pos = { x = -316.8, y = 248.2, z = 740.5 }, rot = { x = 0.0, y = 45.1, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9010 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 215002, gadget_id = 70211012, pos = { x = -312.0, y = 248.8, z = 746.3 }, rot = { x = 355.3, y = 222.4, z = 353.3 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_215003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_215003", action = "action_EVENT_ANY_MONSTER_DIE_215003" }
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
		monsters = { 215001, 215004, 215005 },
		gadgets = { 215002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_215003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_215003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_215003(context, evt)
	-- 将configid为 215002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
