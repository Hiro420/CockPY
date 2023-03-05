--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 74001, monster_id = 25020201, pos = { x = 1117.2, y = 283.5, z = 1369.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 26, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 74004, monster_id = 25020201, pos = { x = 1117.0, y = 283.5, z = 1375.0 }, rot = { x = 0.0, y = 215.4, z = 0.0 }, level = 26, drop_tag = "盗宝团" },
	{ config_id = 74005, monster_id = 25030201, pos = { x = 1113.0, y = 282.6, z = 1374.9 }, rot = { x = 0.0, y = 123.7, z = 0.0 }, level = 26, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 74002, gadget_id = 70211012, pos = { x = 1123.3, y = 283.9, z = 1371.4 }, rot = { x = 0.0, y = 329.6, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 74006, gadget_id = 70210101, pos = { x = 1120.2, y = 284.3, z = 1375.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜遗物璃月", type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_74003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_74003", action = "action_EVENT_ANY_MONSTER_DIE_74003" }
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
		monsters = { 74001, 74004, 74005 },
		gadgets = { 74002, 74006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_74003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_74003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_74003(context, evt)
	-- 将configid为 74002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 74002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
