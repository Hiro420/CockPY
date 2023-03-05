--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 441001, monster_id = 21010201, pos = { x = 314.5, y = 231.9, z = 1049.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 441004, monster_id = 21010601, pos = { x = 310.9, y = 231.1, z = 1052.5 }, rot = { x = 0.0, y = 80.4, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 441005, monster_id = 21010701, pos = { x = 317.7, y = 230.9, z = 1052.4 }, rot = { x = 0.0, y = 255.0, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 441002, gadget_id = 70211012, pos = { x = 314.6, y = 231.1, z = 1052.7 }, rot = { x = 17.4, y = 359.9, z = 359.1 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 441006, gadget_id = 70220013, pos = { x = 316.3, y = 230.0, z = 1056.0 }, rot = { x = 22.3, y = 19.1, z = 357.9 }, level = 19 },
	{ config_id = 441007, gadget_id = 70220013, pos = { x = 313.9, y = 230.1, z = 1055.8 }, rot = { x = 18.6, y = 325.4, z = 353.6 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_441003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_441003", action = "action_EVENT_ANY_MONSTER_DIE_441003" }
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
		monsters = { 441001, 441004, 441005 },
		gadgets = { 441002, 441006, 441007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_441003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_441003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_441003(context, evt)
	-- 将configid为 441002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
