--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145001, monster_id = 25030201, pos = { x = -502.6, y = 225.3, z = 794.0 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 145002, monster_id = 25040201, pos = { x = -492.0, y = 225.2, z = 797.1 }, rot = { x = 0.0, y = 327.6, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 145003, monster_id = 25020202, pos = { x = -483.0, y = 225.2, z = 795.3 }, rot = { x = 0.0, y = 3.5, z = 0.0 }, level = 28, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 145004, monster_id = 25040201, pos = { x = -493.7, y = 225.3, z = 787.5 }, rot = { x = 0.0, y = 117.9, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 145005, monster_id = 25020202, pos = { x = -491.8, y = 227.3, z = 781.3 }, rot = { x = 0.0, y = 303.2, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 145009, monster_id = 25010202, pos = { x = -488.8, y = 225.2, z = 804.5 }, rot = { x = 0.0, y = 155.2, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145006, gadget_id = 70211012, pos = { x = -485.1, y = 225.2, z = 788.1 }, rot = { x = 358.8, y = 327.3, z = 359.4 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 145007, gadget_id = 70310006, pos = { x = -503.7, y = 225.2, z = 794.7 }, rot = { x = 357.1, y = 92.7, z = 4.3 }, level = 24, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_145008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145008", action = "action_EVENT_ANY_MONSTER_DIE_145008" }
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
		monsters = { 145001, 145002, 145003, 145004, 145009 },
		gadgets = { 145006, 145007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_145008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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
function condition_EVENT_ANY_MONSTER_DIE_145008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_145008(context, evt)
	-- 将configid为 145006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145006, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
