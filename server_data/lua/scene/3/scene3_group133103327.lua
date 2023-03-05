--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 327001, monster_id = 22010201, pos = { x = 295.3, y = 254.5, z = 1164.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "深渊法师", disableWander = true, pose_id = 0 },
	{ config_id = 327004, monster_id = 21030101, pos = { x = 292.3, y = 254.9, z = 1167.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 327002, gadget_id = 70211012, pos = { x = 295.1, y = 255.2, z = 1167.8 }, rot = { x = 347.7, y = 359.4, z = 5.4 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 327005, gadget_id = 70220013, pos = { x = 290.0, y = 254.1, z = 1164.4 }, rot = { x = 348.6, y = 359.5, z = 5.4 }, level = 24 },
	{ config_id = 327006, gadget_id = 70310001, pos = { x = 292.8, y = 254.0, z = 1163.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
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
		monsters = { 327001, 327004 },
		gadgets = { 327002, 327005, 327006 },
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
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
