--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 89001, monster_id = 25030201, pos = { x = -340.5, y = 227.8, z = 1194.1 }, rot = { x = 0.0, y = 177.9, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 89002, monster_id = 25040201, pos = { x = -338.9, y = 227.8, z = 1192.6 }, rot = { x = 0.0, y = 106.5, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 89003, monster_id = 25020202, pos = { x = -344.3, y = 227.7, z = 1188.8 }, rot = { x = 0.0, y = 73.3, z = 0.0 }, level = 30, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 89004, monster_id = 25040201, pos = { x = -341.0, y = 227.8, z = 1188.3 }, rot = { x = 0.0, y = 340.6, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 89005, gadget_id = 70211012, pos = { x = -347.2, y = 227.8, z = 1189.1 }, rot = { x = 359.6, y = 51.2, z = 358.5 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 89006, gadget_id = 70310006, pos = { x = -343.7, y = 227.8, z = 1193.8 }, rot = { x = 1.9, y = 93.0, z = 2.5 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_89007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_89007", action = "action_EVENT_ANY_MONSTER_DIE_89007" }
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
		monsters = { 89001, 89002, 89003, 89004 },
		gadgets = { 89005, 89006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_89007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_89007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_89007(context, evt)
	-- 将configid为 89005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89005, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
