--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79001, monster_id = 25030201, pos = { x = -545.1, y = 184.2, z = 1149.7 }, rot = { x = 0.0, y = 177.9, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 79002, monster_id = 25040201, pos = { x = -543.6, y = 184.0, z = 1148.2 }, rot = { x = 0.0, y = 242.0, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 79003, monster_id = 25020202, pos = { x = -548.9, y = 184.3, z = 1144.4 }, rot = { x = 0.0, y = 73.3, z = 0.0 }, level = 32, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 79004, monster_id = 25010202, pos = { x = -549.0, y = 184.4, z = 1150.3 }, rot = { x = 0.0, y = 139.3, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 79005, gadget_id = 70211012, pos = { x = -550.9, y = 184.8, z = 1146.5 }, rot = { x = 0.1, y = 69.9, z = 358.4 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 79006, gadget_id = 70310006, pos = { x = -548.3, y = 184.3, z = 1149.3 }, rot = { x = 1.9, y = 93.0, z = 2.5 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_79007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_79007", action = "action_EVENT_ANY_MONSTER_DIE_79007" }
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
		monsters = { 79001, 79002, 79003, 79004 },
		gadgets = { 79005, 79006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_79007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_79007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_79007(context, evt)
	-- 将configid为 79005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79005, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
