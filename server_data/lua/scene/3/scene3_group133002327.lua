--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 327001, monster_id = 21010201, pos = { x = 1681.6, y = 275.8, z = -9.0 }, rot = { x = 348.9, y = 358.8, z = 12.1 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 327004, monster_id = 21030301, pos = { x = 1681.0, y = 276.8, z = -4.6 }, rot = { x = 0.0, y = 204.0, z = 0.0 }, level = 16, drop_tag = "丘丘萨满" },
	{ config_id = 327005, monster_id = 21010201, pos = { x = 1679.5, y = 275.7, z = -8.0 }, rot = { x = 348.9, y = 84.6, z = 12.1 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 327011, monster_id = 21010401, pos = { x = 1672.6, y = 275.0, z = -3.0 }, rot = { x = 15.0, y = 265.5, z = 9.2 }, level = 16, drop_tag = "远程丘丘人" },
	{ config_id = 327012, monster_id = 21010401, pos = { x = 1674.8, y = 275.1, z = -5.2 }, rot = { x = 14.9, y = 265.7, z = 9.2 }, level = 16, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 327002, gadget_id = 70211022, pos = { x = 1683.2, y = 277.3, z = -4.7 }, rot = { x = 19.4, y = 217.4, z = 358.7 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 327006, gadget_id = 70220005, pos = { x = 1685.2, y = 276.6, z = -9.0 }, rot = { x = 345.5, y = 358.3, z = 13.1 }, level = 16 },
	{ config_id = 327007, gadget_id = 70220005, pos = { x = 1682.4, y = 277.5, z = -3.2 }, rot = { x = 346.9, y = 358.5, z = 12.9 }, level = 16 },
	{ config_id = 327008, gadget_id = 70310006, pos = { x = 1680.7, y = 276.0, z = -7.7 }, rot = { x = 344.8, y = 358.5, z = 11.5 }, level = 16 },
	{ config_id = 327009, gadget_id = 70220013, pos = { x = 1682.1, y = 278.0, z = -0.9 }, rot = { x = 346.3, y = 358.3, z = 14.3 }, level = 16 },
	{ config_id = 327010, gadget_id = 70220013, pos = { x = 1679.4, y = 277.5, z = -0.3 }, rot = { x = 346.9, y = 358.5, z = 12.9 }, level = 16 },
	{ config_id = 327013, gadget_id = 70300088, pos = { x = 1667.7, y = 273.7, z = -3.2 }, rot = { x = 349.7, y = 358.7, z = 14.2 }, level = 16 },
	{ config_id = 327014, gadget_id = 70300088, pos = { x = 1669.4, y = 273.6, z = -6.0 }, rot = { x = 349.7, y = 346.8, z = 14.2 }, level = 16 },
	{ config_id = 327015, gadget_id = 70300089, pos = { x = 1679.7, y = 275.2, z = -9.8 }, rot = { x = 344.8, y = 358.5, z = 11.5 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_327003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_327003", action = "action_EVENT_ANY_MONSTER_DIE_327003" }
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
		monsters = { 327001, 327004, 327011, 327012 },
		gadgets = { 327002, 327006, 327007, 327008, 327009, 327010, 327013, 327014, 327015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_327003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_327003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_327003(context, evt)
	-- 将configid为 327002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
