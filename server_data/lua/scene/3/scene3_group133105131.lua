--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 217, monster_id = 21010301, pos = { x = 1101.0, y = 204.6, z = -30.4 }, rot = { x = 359.8, y = 359.1, z = 350.2 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 228, monster_id = 21010201, pos = { x = 1099.4, y = 204.9, z = -29.0 }, rot = { x = 9.7, y = 93.7, z = 0.6 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 229, monster_id = 21010201, pos = { x = 1100.9, y = 204.6, z = -26.4 }, rot = { x = 1.2, y = 172.9, z = 9.7 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 230, monster_id = 21010201, pos = { x = 1102.7, y = 204.2, z = -27.3 }, rot = { x = 351.3, y = 242.5, z = 4.5 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 231, monster_id = 21010601, pos = { x = 1102.9, y = 204.2, z = -29.6 }, rot = { x = 353.6, y = 318.9, z = 352.7 }, level = 25, drop_tag = "丘丘人", pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 312, gadget_id = 70211012, pos = { x = 1107.2, y = 203.2, z = -26.4 }, rot = { x = 0.7, y = 185.2, z = 11.6 }, level = 25, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 325, gadget_id = 70310006, pos = { x = 1101.0, y = 204.6, z = -28.6 }, rot = { x = 359.8, y = 359.1, z = 350.2 }, level = 25, state = GadgetState.GearStart },
	{ config_id = 326, gadget_id = 70300089, pos = { x = 1101.1, y = 204.6, z = -22.3 }, rot = { x = 351.7, y = 238.0, z = 5.1 }, level = 25 },
	{ config_id = 327, gadget_id = 70220014, pos = { x = 1099.6, y = 204.6, z = -32.2 }, rot = { x = 359.8, y = 359.1, z = 350.2 }, level = 25 },
	{ config_id = 328, gadget_id = 70220005, pos = { x = 1099.1, y = 204.8, z = -31.3 }, rot = { x = 7.2, y = 47.2, z = 353.4 }, level = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_168", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168", action = "action_EVENT_ANY_MONSTER_DIE_168" }
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
		monsters = { 217, 228, 229, 230, 231 },
		gadgets = { 312, 325, 326, 327, 328 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_168" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_168(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168(context, evt)
	-- 将configid为 312 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 312, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
