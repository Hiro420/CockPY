--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57001, monster_id = 21010201, pos = { x = -422.1, y = 334.6, z = 574.9 }, rot = { x = 0.0, y = 327.2, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 57004, monster_id = 21011201, pos = { x = -425.6, y = 335.7, z = 574.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘人" },
	{ config_id = 57005, monster_id = 21020301, pos = { x = -424.4, y = 335.9, z = 578.3 }, rot = { x = 0.0, y = 156.7, z = 0.0 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 57006, monster_id = 21010401, pos = { x = -421.3, y = 334.5, z = 579.3 }, rot = { x = 355.7, y = 225.9, z = 4.1 }, level = 24, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57002, gadget_id = 70211012, pos = { x = -426.7, y = 336.8, z = 578.5 }, rot = { x = 20.1, y = 136.2, z = 13.9 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 57007, gadget_id = 70220013, pos = { x = -428.5, y = 337.6, z = 579.6 }, rot = { x = 20.1, y = 55.4, z = 343.3 }, level = 24 },
	{ config_id = 57008, gadget_id = 70220013, pos = { x = -428.8, y = 337.4, z = 576.4 }, rot = { x = 349.3, y = 2.2, z = 336.6 }, level = 24 },
	{ config_id = 57009, gadget_id = 70300089, pos = { x = -421.6, y = 334.1, z = 572.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 57010, gadget_id = 70300089, pos = { x = -419.2, y = 333.8, z = 576.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 57011, gadget_id = 70300086, pos = { x = -428.3, y = 336.6, z = 571.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 57012, gadget_id = 70300086, pos = { x = -421.4, y = 334.4, z = 583.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 57013, gadget_id = 70300107, pos = { x = -423.3, y = 334.8, z = 576.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_57003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57003", action = "action_EVENT_ANY_MONSTER_DIE_57003" }
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
		monsters = { 57001, 57004, 57005, 57006 },
		gadgets = { 57002, 57007, 57008, 57009, 57010, 57011, 57012, 57013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_57003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57003(context, evt)
	-- 将configid为 57002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
