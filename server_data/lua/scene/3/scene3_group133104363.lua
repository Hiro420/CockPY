--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363001, monster_id = 21020301, pos = { x = 632.8, y = 215.7, z = 688.5 }, rot = { x = 0.0, y = 216.9, z = 0.0 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 363004, monster_id = 21030201, pos = { x = 625.8, y = 214.8, z = 687.0 }, rot = { x = 359.6, y = 316.1, z = 18.3 }, level = 19, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 363005, monster_id = 21010401, pos = { x = 636.1, y = 214.8, z = 678.1 }, rot = { x = 11.6, y = 175.8, z = 348.7 }, level = 19, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 363006, monster_id = 21010401, pos = { x = 628.8, y = 213.4, z = 677.9 }, rot = { x = 5.8, y = 265.5, z = 16.1 }, level = 19, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 363002, gadget_id = 70211012, pos = { x = 632.1, y = 215.1, z = 682.9 }, rot = { x = 348.6, y = 358.6, z = 3.8 }, level = 1, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_363003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363003", action = "action_EVENT_ANY_MONSTER_DIE_363003" }
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
		monsters = { 363001, 363004, 363005, 363006 },
		gadgets = { 363002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_363003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_363003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363003(context, evt)
	-- 将configid为 363002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 363002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
