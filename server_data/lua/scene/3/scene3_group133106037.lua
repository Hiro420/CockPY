--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 21010501, pos = { x = -853.7, y = 179.0, z = 904.1 }, rot = { x = 0.0, y = 159.9, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 37004, monster_id = 21010701, pos = { x = -820.4, y = 181.7, z = 912.9 }, rot = { x = 0.0, y = 201.0, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 37005, monster_id = 21010701, pos = { x = -819.1, y = 184.0, z = 921.1 }, rot = { x = 0.0, y = 30.2, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37002, gadget_id = 70211012, pos = { x = -818.3, y = 184.0, z = 922.3 }, rot = { x = 0.0, y = 212.0, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_37003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37003", action = "action_EVENT_ANY_MONSTER_DIE_37003" }
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
		monsters = { 37001, 37004, 37005 },
		gadgets = { 37002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_37003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 将configid为 37002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
