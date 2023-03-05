--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 21010901, pos = { x = -357.8, y = 323.5, z = 574.4 }, rot = { x = 0.0, y = 112.6, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 58012, monster_id = 21020201, pos = { x = -351.9, y = 325.5, z = 574.9 }, rot = { x = 0.0, y = 220.3, z = 0.0 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 58013, monster_id = 21030401, pos = { x = -352.3, y = 325.8, z = 571.3 }, rot = { x = 0.0, y = 277.8, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 58014, monster_id = 21010901, pos = { x = -354.3, y = 329.4, z = 566.7 }, rot = { x = 0.0, y = 305.2, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 58015, monster_id = 21010901, pos = { x = -355.6, y = 325.4, z = 569.3 }, rot = { x = 0.0, y = 259.9, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58002, gadget_id = 70211012, pos = { x = -348.9, y = 326.6, z = 576.9 }, rot = { x = 17.8, y = 241.4, z = 345.3 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 58004, gadget_id = 70300107, pos = { x = -354.3, y = 323.2, z = 578.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 58005, gadget_id = 70300107, pos = { x = -352.5, y = 324.2, z = 577.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 58006, gadget_id = 70310006, pos = { x = -353.7, y = 325.0, z = 573.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 58007, gadget_id = 70220013, pos = { x = -346.6, y = 327.4, z = 575.8 }, rot = { x = 4.7, y = 0.9, z = 22.5 }, level = 24 },
	{ config_id = 58008, gadget_id = 70220013, pos = { x = -350.3, y = 325.8, z = 579.1 }, rot = { x = 349.5, y = 358.1, z = 20.4 }, level = 24 },
	{ config_id = 58009, gadget_id = 70220013, pos = { x = -348.4, y = 326.8, z = 574.2 }, rot = { x = 347.4, y = 42.5, z = 25.0 }, level = 24 },
	{ config_id = 58010, gadget_id = 70300086, pos = { x = -350.2, y = 326.1, z = 571.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 58011, gadget_id = 70300086, pos = { x = -364.7, y = 321.3, z = 572.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_58003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58003", action = "action_EVENT_ANY_MONSTER_DIE_58003" }
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
		monsters = { 58001, 58012, 58013, 58014, 58015 },
		gadgets = { 58002, 58004, 58005, 58006, 58007, 58008, 58009, 58010, 58011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
