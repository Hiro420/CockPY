--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 293001, monster_id = 21030101, pos = { x = 392.5, y = 202.0, z = 555.2 }, rot = { x = 10.7, y = 113.7, z = 353.2 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 293004, monster_id = 21010301, pos = { x = 398.6, y = 201.1, z = 554.4 }, rot = { x = 4.8, y = 177.9, z = 7.8 }, level = 19, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 293005, monster_id = 21011001, pos = { x = 395.0, y = 201.3, z = 550.8 }, rot = { x = 8.6, y = 359.0, z = 346.8 }, level = 19, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 293006, monster_id = 21011001, pos = { x = 391.3, y = 203.2, z = 561.7 }, rot = { x = 354.2, y = 148.4, z = 10.3 }, level = 19, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 293002, gadget_id = 70211012, pos = { x = 395.9, y = 201.6, z = 555.1 }, rot = { x = 353.8, y = 0.3, z = 354.6 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_293003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_293003", action = "action_EVENT_ANY_MONSTER_DIE_293003" }
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
		monsters = { 293001, 293004, 293005, 293006 },
		gadgets = { 293002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_293003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_293003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_293003(context, evt)
	-- 将configid为 293002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 293002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
