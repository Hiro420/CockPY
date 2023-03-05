--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 223001, monster_id = 25040201, pos = { x = -621.8, y = 222.4, z = 914.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 223004, monster_id = 25010201, pos = { x = -624.6, y = 222.1, z = 916.1 }, rot = { x = 0.0, y = 228.0, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 223005, monster_id = 25010201, pos = { x = -618.8, y = 222.5, z = 916.9 }, rot = { x = 0.0, y = 110.2, z = 0.0 }, level = 30, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 223006, monster_id = 25030201, pos = { x = -626.4, y = 221.4, z = 909.8 }, rot = { x = 0.0, y = 210.8, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 223002, gadget_id = 70211012, pos = { x = -622.0, y = 222.4, z = 917.3 }, rot = { x = 359.7, y = 171.7, z = 352.4 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_223003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_223003", action = "action_EVENT_ANY_MONSTER_DIE_223003" }
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
		monsters = { 223001, 223004, 223005, 223006 },
		gadgets = { 223002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_223003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_223003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_223003(context, evt)
	-- 将configid为 223002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
