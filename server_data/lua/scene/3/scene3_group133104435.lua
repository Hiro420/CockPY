--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 435001, monster_id = 21030101, pos = { x = 398.6, y = 203.8, z = 220.9 }, rot = { x = 0.0, y = 60.7, z = 0.0 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 435004, monster_id = 21010101, pos = { x = 402.1, y = 203.1, z = 228.2 }, rot = { x = 0.0, y = 344.1, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 435005, monster_id = 21010101, pos = { x = 403.4, y = 202.4, z = 230.8 }, rot = { x = 0.0, y = 298.0, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 435006, monster_id = 21010901, pos = { x = 400.3, y = 203.8, z = 218.9 }, rot = { x = 0.0, y = 57.9, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 435007, monster_id = 21010901, pos = { x = 397.8, y = 203.4, z = 223.5 }, rot = { x = 0.0, y = 125.5, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 435002, gadget_id = 70211012, pos = { x = 397.4, y = 203.8, z = 218.1 }, rot = { x = 356.4, y = 67.7, z = 8.2 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 435008, gadget_id = 70220013, pos = { x = 403.4, y = 203.5, z = 217.4 }, rot = { x = 11.5, y = 359.3, z = 359.9 }, level = 19 },
	{ config_id = 435009, gadget_id = 70220013, pos = { x = 406.2, y = 202.8, z = 218.6 }, rot = { x = 11.1, y = 358.9, z = 342.8 }, level = 19 },
	{ config_id = 435010, gadget_id = 70220005, pos = { x = 401.8, y = 203.1, z = 229.1 }, rot = { x = 0.0, y = 344.1, z = 0.0 }, level = 19 },
	{ config_id = 435011, gadget_id = 70220005, pos = { x = 402.9, y = 202.3, z = 231.0 }, rot = { x = 25.2, y = 8.2, z = 11.3 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_435003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_435003", action = "action_EVENT_ANY_MONSTER_DIE_435003" }
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
		monsters = { 435001, 435004, 435005, 435006, 435007 },
		gadgets = { 435002, 435008, 435009, 435010, 435011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_435003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_435003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_435003(context, evt)
	-- 将configid为 435002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 435002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
