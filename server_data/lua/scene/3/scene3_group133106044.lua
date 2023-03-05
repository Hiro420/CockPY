--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44001, monster_id = 25030201, pos = { x = -894.8, y = 222.2, z = 674.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 44004, monster_id = 25010201, pos = { x = -889.6, y = 222.5, z = 680.3 }, rot = { x = 0.0, y = 154.4, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 44005, monster_id = 25010201, pos = { x = -902.0, y = 224.3, z = 685.7 }, rot = { x = 0.0, y = 111.7, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 44007, monster_id = 25010201, pos = { x = -895.6, y = 222.2, z = 678.2 }, rot = { x = 0.0, y = 136.9, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44002, gadget_id = 70211012, pos = { x = -897.4, y = 222.2, z = 673.5 }, rot = { x = 0.0, y = 62.0, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 44006, gadget_id = 70310006, pos = { x = -894.0, y = 222.2, z = 676.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_44003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44003", action = "action_EVENT_ANY_MONSTER_DIE_44003" }
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
		monsters = { 44001, 44004, 44005, 44007 },
		gadgets = { 44002, 44006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 将configid为 44002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
