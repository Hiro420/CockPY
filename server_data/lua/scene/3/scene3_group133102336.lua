--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 336001, monster_id = 21011001, pos = { x = 1306.6, y = 200.0, z = 428.1 }, rot = { x = 359.6, y = 182.1, z = 359.3 }, level = 17, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 336004, monster_id = 21011001, pos = { x = 1305.1, y = 200.1, z = 423.0 }, rot = { x = 359.8, y = 200.6, z = 359.2 }, level = 17, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 336005, monster_id = 21011001, pos = { x = 1314.4, y = 200.1, z = 425.5 }, rot = { x = 359.4, y = 168.3, z = 359.4 }, level = 17, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 336002, gadget_id = 70211012, pos = { x = 1301.6, y = 200.2, z = 429.6 }, rot = { x = 0.0, y = 143.6, z = 0.0 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_336003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_336003", action = "action_EVENT_ANY_MONSTER_DIE_336003" }
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
		monsters = { 336001, 336004, 336005 },
		gadgets = { 336002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_336003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_336003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_336003(context, evt)
	-- 将configid为 336002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 336002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
