--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 670001, monster_id = 20011501, pos = { x = 1940.3, y = 232.7, z = 584.2 }, rot = { x = 0.0, y = 249.4, z = 0.0 }, level = 18, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 670004, monster_id = 20011501, pos = { x = 1937.5, y = 231.8, z = 581.3 }, rot = { x = 0.0, y = 5.2, z = 0.0 }, level = 18, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 670005, monster_id = 20011501, pos = { x = 1936.5, y = 231.4, z = 584.7 }, rot = { x = 0.0, y = 128.5, z = 0.0 }, level = 18, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 670002, gadget_id = 70211012, pos = { x = 1938.1, y = 231.7, z = 583.4 }, rot = { x = 0.0, y = 247.3, z = 0.0 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_670003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_670003", action = "action_EVENT_ANY_MONSTER_DIE_670003" }
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
		monsters = { 670001, 670004, 670005 },
		gadgets = { 670002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_670003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_670003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_670003(context, evt)
	-- 将configid为 670002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 670002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
