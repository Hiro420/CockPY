--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 384001, monster_id = 25030201, pos = { x = 184.9, y = 200.2, z = 1416.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 384004, monster_id = 25020201, pos = { x = 184.3, y = 200.8, z = 1423.0 }, rot = { x = 0.0, y = 187.8, z = 0.0 }, level = 24, drop_tag = "盗宝团" },
	{ config_id = 384005, monster_id = 25040201, pos = { x = 180.8, y = 200.2, z = 1420.3 }, rot = { x = 0.0, y = 91.7, z = 0.0 }, level = 24, drop_tag = "盗宝团" },
	{ config_id = 384006, monster_id = 25010201, pos = { x = 188.0, y = 200.0, z = 1419.5 }, rot = { x = 0.0, y = 269.0, z = 0.0 }, level = 24, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 384002, gadget_id = 70211022, pos = { x = 181.9, y = 199.0, z = 1416.3 }, rot = { x = 339.8, y = 52.3, z = 350.9 }, level = 24, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 384007, gadget_id = 70310009, pos = { x = 184.7, y = 200.2, z = 1419.7 }, rot = { x = 346.8, y = 0.3, z = 357.3 }, level = 24, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_384003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_384003", action = "action_EVENT_ANY_MONSTER_DIE_384003" }
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
		monsters = { 384001, 384004, 384005, 384006 },
		gadgets = { 384002, 384007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_384003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_384003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_384003(context, evt)
	-- 将configid为 384002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 384002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
