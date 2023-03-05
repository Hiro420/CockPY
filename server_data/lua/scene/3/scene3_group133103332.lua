--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 332001, monster_id = 21011001, pos = { x = 381.5, y = 292.8, z = 1535.2 }, rot = { x = 0.0, y = 80.9, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 332004, monster_id = 21030401, pos = { x = 381.2, y = 292.6, z = 1532.1 }, rot = { x = 0.0, y = 80.9, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332002, gadget_id = 70211012, pos = { x = 385.9, y = 292.5, z = 1533.6 }, rot = { x = 357.4, y = 278.3, z = 3.6 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 332005, gadget_id = 70220014, pos = { x = 383.8, y = 292.7, z = 1535.7 }, rot = { x = 2.8, y = 204.0, z = 3.4 }, level = 24 },
	{ config_id = 332006, gadget_id = 70310006, pos = { x = 383.4, y = 292.5, z = 1532.5 }, rot = { x = 357.3, y = 27.7, z = 356.5 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_332003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_332003", action = "action_EVENT_ANY_MONSTER_DIE_332003" }
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
		monsters = { 332001, 332004 },
		gadgets = { 332002, 332005, 332006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_332003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_332003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_332003(context, evt)
	-- 将configid为 332002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
