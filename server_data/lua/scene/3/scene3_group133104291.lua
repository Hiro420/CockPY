--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 291001, monster_id = 21010201, pos = { x = 583.0, y = 226.4, z = 759.5 }, rot = { x = 12.5, y = 76.5, z = 359.4 }, level = 19, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 291004, monster_id = 21010201, pos = { x = 586.2, y = 227.2, z = 761.0 }, rot = { x = 8.5, y = 206.7, z = 353.5 }, level = 19, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 291005, monster_id = 21020201, pos = { x = 589.2, y = 228.7, z = 765.1 }, rot = { x = 19.6, y = 196.8, z = 328.5 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 291006, monster_id = 21010401, pos = { x = 581.9, y = 228.8, z = 769.7 }, rot = { x = 14.4, y = 141.6, z = 340.6 }, level = 19, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 291007, monster_id = 21010401, pos = { x = 582.9, y = 226.7, z = 762.7 }, rot = { x = 11.5, y = 120.1, z = 355.9 }, level = 19, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 291002, gadget_id = 70211012, pos = { x = 584.6, y = 227.4, z = 766.0 }, rot = { x = 353.4, y = 1.4, z = 15.5 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 291008, gadget_id = 70310006, pos = { x = 583.9, y = 226.7, z = 761.1 }, rot = { x = 354.7, y = 359.6, z = 8.9 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_291003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_291003", action = "action_EVENT_ANY_MONSTER_DIE_291003" }
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
		monsters = { 291001, 291004, 291005, 291006, 291007 },
		gadgets = { 291002, 291008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_291003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_291003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_291003(context, evt)
	-- 将configid为 291002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 291002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
