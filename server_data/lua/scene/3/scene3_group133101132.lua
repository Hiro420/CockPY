--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 132001, monster_id = 21011001, pos = { x = 1192.6, y = 252.4, z = 1079.5 }, rot = { x = 0.0, y = 57.2, z = 0.0 }, level = 26, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 132004, monster_id = 21010901, pos = { x = 1195.6, y = 252.7, z = 1077.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 26, drop_tag = "远程丘丘人", pose_id = 9013 },
	{ config_id = 132005, monster_id = 21030401, pos = { x = 1193.3, y = 253.1, z = 1083.4 }, rot = { x = 0.0, y = 147.6, z = 0.0 }, level = 26, drop_tag = "丘丘萨满", pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 132002, gadget_id = 70211012, pos = { x = 1195.8, y = 253.4, z = 1085.5 }, rot = { x = 4.2, y = 187.3, z = 2.3 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_132003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_132003", action = "action_EVENT_ANY_MONSTER_DIE_132003" }
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
		monsters = { 132001, 132004, 132005 },
		gadgets = { 132002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_132003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_132003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_132003(context, evt)
	-- 将configid为 132002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
