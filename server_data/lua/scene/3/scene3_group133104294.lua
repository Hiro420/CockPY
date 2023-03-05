--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 294001, monster_id = 21020301, pos = { x = 370.5, y = 207.5, z = 632.7 }, rot = { x = 0.0, y = 136.0, z = 0.0 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 294004, monster_id = 21011001, pos = { x = 368.8, y = 210.5, z = 609.1 }, rot = { x = 0.0, y = 93.2, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 294005, monster_id = 21030401, pos = { x = 365.3, y = 207.5, z = 618.9 }, rot = { x = 0.0, y = 93.2, z = 0.0 }, level = 19, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 294006, monster_id = 21011201, pos = { x = 377.7, y = 205.9, z = 618.5 }, rot = { x = 0.0, y = 113.2, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 294007, monster_id = 21010301, pos = { x = 374.8, y = 205.9, z = 614.8 }, rot = { x = 0.0, y = 93.2, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 294008, monster_id = 21011001, pos = { x = 391.9, y = 208.3, z = 634.9 }, rot = { x = 0.0, y = 191.6, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 294002, gadget_id = 70211012, pos = { x = 379.7, y = 207.5, z = 630.3 }, rot = { x = 0.0, y = 205.1, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 294009, gadget_id = 70220013, pos = { x = 368.3, y = 207.5, z = 619.9 }, rot = { x = 350.7, y = 359.7, z = 4.3 }, level = 19 },
	{ config_id = 294010, gadget_id = 70220013, pos = { x = 374.6, y = 205.9, z = 609.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 294011, gadget_id = 70220013, pos = { x = 375.7, y = 205.9, z = 612.0 }, rot = { x = 0.0, y = 25.8, z = 0.0 }, level = 19 },
	{ config_id = 294012, gadget_id = 70220014, pos = { x = 376.7, y = 205.9, z = 609.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 294013, gadget_id = 70310006, pos = { x = 383.7, y = 207.5, z = 636.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_294003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_294003", action = "action_EVENT_ANY_MONSTER_DIE_294003" }
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
		monsters = { 294001, 294004, 294005, 294006, 294007, 294008 },
		gadgets = { 294002, 294009, 294010, 294011, 294012, 294013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_294003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_294003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_294003(context, evt)
	-- 将configid为 294002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
