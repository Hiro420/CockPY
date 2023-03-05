--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 337001, monster_id = 21010401, pos = { x = 1388.6, y = 209.2, z = 633.8 }, rot = { x = 0.0, y = 224.3, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 337004, monster_id = 21010401, pos = { x = 1385.6, y = 209.0, z = 635.0 }, rot = { x = 358.6, y = 193.0, z = 356.5 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 337005, monster_id = 21020201, pos = { x = 1393.4, y = 208.8, z = 635.4 }, rot = { x = 0.0, y = 257.7, z = 0.0 }, level = 19, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 337006, monster_id = 21010701, pos = { x = 1389.8, y = 208.8, z = 637.7 }, rot = { x = 0.4, y = 152.2, z = 359.7 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 337002, gadget_id = 70211012, pos = { x = 1390.7, y = 209.5, z = 631.6 }, rot = { x = 4.8, y = 350.0, z = 2.3 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 337007, gadget_id = 70310004, pos = { x = 1390.4, y = 209.4, z = 635.1 }, rot = { x = 5.5, y = 0.1, z = 2.9 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_337003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_337003", action = "action_EVENT_ANY_MONSTER_DIE_337003" }
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
		monsters = { 337001, 337004, 337005, 337006 },
		gadgets = { 337002, 337007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_337003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_337003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_337003(context, evt)
	-- 将configid为 337002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 337002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
