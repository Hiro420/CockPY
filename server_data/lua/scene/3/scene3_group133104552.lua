--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 552001, monster_id = 25040201, pos = { x = 116.5, y = 253.0, z = 41.0 }, rot = { x = 359.9, y = 17.0, z = 356.9 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 552004, monster_id = 25020201, pos = { x = 113.6, y = 253.0, z = 39.6 }, rot = { x = 0.0, y = 357.1, z = 0.0 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 552005, monster_id = 25030201, pos = { x = 118.9, y = 252.8, z = 38.6 }, rot = { x = 0.4, y = 345.5, z = 0.0 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 552002, gadget_id = 70211012, pos = { x = 116.8, y = 252.9, z = 37.2 }, rot = { x = 1.5, y = 313.6, z = 359.5 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 552006, gadget_id = 70220013, pos = { x = 119.2, y = 252.9, z = 42.3 }, rot = { x = 0.2, y = 48.2, z = 358.2 }, level = 19 },
	{ config_id = 552007, gadget_id = 70220013, pos = { x = 117.2, y = 253.2, z = 43.6 }, rot = { x = 0.0, y = 297.5, z = 1.5 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_552003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_552003", action = "action_EVENT_ANY_MONSTER_DIE_552003" }
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
		monsters = { 552001, 552004, 552005 },
		gadgets = { 552002, 552006, 552007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_552003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_552003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_552003(context, evt)
	-- 将configid为 552002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 552002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
