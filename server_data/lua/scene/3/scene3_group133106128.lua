--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128001, monster_id = 25030201, pos = { x = -224.5, y = 186.1, z = 921.4 }, rot = { x = 0.0, y = 177.9, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 128002, monster_id = 25040201, pos = { x = -222.9, y = 186.1, z = 919.9 }, rot = { x = 0.0, y = 106.5, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 128003, monster_id = 25020202, pos = { x = -228.3, y = 185.9, z = 916.2 }, rot = { x = 0.0, y = 73.3, z = 0.0 }, level = 32, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 128004, monster_id = 25010202, pos = { x = -228.4, y = 186.0, z = 922.0 }, rot = { x = 0.0, y = 139.3, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 128005, gadget_id = 70211012, pos = { x = -225.8, y = 187.1, z = 924.4 }, rot = { x = 359.7, y = 194.3, z = 357.5 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 128006, gadget_id = 70310006, pos = { x = -228.1, y = 187.0, z = 924.7 }, rot = { x = 1.9, y = 93.0, z = 2.5 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_128007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128007", action = "action_EVENT_ANY_MONSTER_DIE_128007" }
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
		monsters = { 128001, 128002, 128003, 128004 },
		gadgets = { 128005, 128006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_128007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_128007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_128007(context, evt)
	-- 将configid为 128005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128005, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
