--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 527001, monster_id = 21010201, pos = { x = -175.4, y = 335.0, z = 627.1 }, rot = { x = 17.9, y = 1.4, z = 11.3 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 527004, monster_id = 21010201, pos = { x = -177.6, y = 333.9, z = 630.2 }, rot = { x = 354.0, y = 101.8, z = 11.3 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 527005, monster_id = 21010401, pos = { x = -178.8, y = 335.0, z = 625.1 }, rot = { x = 13.2, y = 31.4, z = 23.9 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 527002, gadget_id = 70211012, pos = { x = -180.1, y = 334.5, z = 626.6 }, rot = { x = 11.5, y = 359.9, z = 2.6 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 527006, gadget_id = 70220013, pos = { x = -175.2, y = 336.5, z = 623.0 }, rot = { x = 19.6, y = 1.2, z = 7.1 }, level = 24 },
	{ config_id = 527007, gadget_id = 70220013, pos = { x = -177.1, y = 336.7, z = 621.6 }, rot = { x = 23.5, y = 1.2, z = 6.2 }, level = 24 },
	{ config_id = 527008, gadget_id = 70220014, pos = { x = -183.8, y = 334.3, z = 629.0 }, rot = { x = 5.3, y = 359.8, z = 354.6 }, level = 24 },
	{ config_id = 527009, gadget_id = 70310004, pos = { x = -175.8, y = 334.3, z = 629.2 }, rot = { x = 14.0, y = 0.5, z = 7.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_527003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_527003", action = "action_EVENT_ANY_MONSTER_DIE_527003" }
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
		monsters = { 527001, 527004, 527005 },
		gadgets = { 527002, 527006, 527007, 527008, 527009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_527003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_527003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_527003(context, evt)
	-- 将configid为 527002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 527002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
