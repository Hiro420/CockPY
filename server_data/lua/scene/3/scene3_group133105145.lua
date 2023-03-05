--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58, monster_id = 21030301, pos = { x = 702.2, y = 266.7, z = -452.9 }, rot = { x = 0.0, y = 108.5, z = 0.0 }, level = 25, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 59, monster_id = 21010901, pos = { x = 708.2, y = 266.6, z = -462.3 }, rot = { x = 0.0, y = 331.2, z = 0.0 }, level = 25, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 60, monster_id = 21010201, pos = { x = 704.2, y = 266.7, z = -451.5 }, rot = { x = 0.0, y = 236.5, z = 0.0 }, level = 25, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 61, monster_id = 21010201, pos = { x = 704.0, y = 266.7, z = -454.2 }, rot = { x = 0.0, y = 310.8, z = 0.0 }, level = 25, drop_tag = "丘丘人", pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 370, gadget_id = 70211012, pos = { x = 706.1, y = 266.6, z = -462.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 371, gadget_id = 70220013, pos = { x = 714.3, y = 266.8, z = -455.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 372, gadget_id = 70220014, pos = { x = 713.8, y = 266.8, z = -454.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 373, gadget_id = 70220014, pos = { x = 712.8, y = 266.7, z = -455.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 374, gadget_id = 70220014, pos = { x = 701.4, y = 266.7, z = -454.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 375, gadget_id = 70220014, pos = { x = 702.6, y = 266.7, z = -455.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 376, gadget_id = 70220005, pos = { x = 701.5, y = 266.7, z = -455.4 }, rot = { x = 0.0, y = 300.9, z = 0.0 }, level = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_187", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_187", action = "action_EVENT_ANY_MONSTER_DIE_187" }
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
		monsters = { 58, 59, 60, 61 },
		gadgets = { 370, 371, 372, 373, 374, 375, 376 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_187" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_187(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_187(context, evt)
	-- 将configid为 370 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 370, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
