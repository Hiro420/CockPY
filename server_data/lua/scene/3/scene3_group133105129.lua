--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213, monster_id = 21010201, pos = { x = 1001.4, y = 243.3, z = -293.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9015 },
	{ config_id = 214, monster_id = 21010201, pos = { x = 999.2, y = 244.0, z = -292.6 }, rot = { x = 0.0, y = 64.5, z = 0.0 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9015 },
	{ config_id = 129002, monster_id = 21020201, pos = { x = 999.8, y = 243.6, z = -295.2 }, rot = { x = 0.0, y = 12.0, z = 0.0 }, level = 25, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308, gadget_id = 70211012, pos = { x = 1001.3, y = 243.1, z = -297.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 129001, gadget_id = 70300091, pos = { x = 1001.8, y = 242.8, z = -291.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_165", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_165", action = "action_EVENT_ANY_MONSTER_DIE_165" }
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
		monsters = { 213, 214, 129002 },
		gadgets = { 308, 129001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_165" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_165(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_165(context, evt)
	-- 将configid为 308 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
