--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 66001, monster_id = 21010501, pos = { x = -419.4, y = 285.6, z = 654.7 }, rot = { x = 0.0, y = 240.4, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 66004, monster_id = 21010501, pos = { x = -428.2, y = 288.6, z = 653.2 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 66005, monster_id = 21010501, pos = { x = -430.5, y = 285.7, z = 650.0 }, rot = { x = 0.0, y = 154.6, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 66006, monster_id = 21010501, pos = { x = -428.4, y = 285.7, z = 642.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 66002, gadget_id = 70211012, pos = { x = -425.9, y = 285.7, z = 650.6 }, rot = { x = 0.0, y = 218.1, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 66007, gadget_id = 70220014, pos = { x = -427.9, y = 285.7, z = 651.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 66008, gadget_id = 70220014, pos = { x = -430.6, y = 288.6, z = 656.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 66009, gadget_id = 70220014, pos = { x = -431.7, y = 288.6, z = 657.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 66010, gadget_id = 70220014, pos = { x = -426.8, y = 288.6, z = 659.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 66011, gadget_id = 70310004, pos = { x = -427.3, y = 285.7, z = 649.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 66012, gadget_id = 70310001, pos = { x = -431.7, y = 285.7, z = 636.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 66013, gadget_id = 70310001, pos = { x = -425.8, y = 285.7, z = 636.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 66014, gadget_id = 70310001, pos = { x = -428.3, y = 288.6, z = 656.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 66015, gadget_id = 70310001, pos = { x = -431.6, y = 285.7, z = 650.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_66003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_66003", action = "action_EVENT_ANY_MONSTER_DIE_66003" }
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
		monsters = { 66001, 66004, 66005, 66006 },
		gadgets = { 66002, 66007, 66008, 66009, 66010, 66011, 66012, 66013, 66014, 66015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_66003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_66003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_66003(context, evt)
	-- 将configid为 66002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
