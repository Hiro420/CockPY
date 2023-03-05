--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 536001, monster_id = 22010201, pos = { x = 365.5, y = 232.0, z = 998.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "深渊法师", disableWander = true, pose_id = 0 },
	{ config_id = 536004, monster_id = 21030101, pos = { x = 368.8, y = 231.0, z = 1002.4 }, rot = { x = 0.0, y = 243.8, z = 0.0 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 536002, gadget_id = 70211012, pos = { x = 365.3, y = 231.5, z = 1001.4 }, rot = { x = 9.7, y = 359.6, z = 355.5 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 536005, gadget_id = 70310001, pos = { x = 361.9, y = 231.4, z = 1003.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_536003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_536003", action = "action_EVENT_ANY_MONSTER_DIE_536003" }
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
		monsters = { 536001, 536004 },
		gadgets = { 536002, 536005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_536003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_536003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_536003(context, evt)
	-- 将configid为 536002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 536002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
