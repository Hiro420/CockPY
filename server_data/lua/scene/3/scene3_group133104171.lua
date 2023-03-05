--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 404, monster_id = 21011201, pos = { x = 154.4, y = 218.0, z = 871.7 }, rot = { x = 2.4, y = 116.3, z = 1.2 }, level = 19, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 405, monster_id = 21011201, pos = { x = 159.4, y = 217.7, z = 877.5 }, rot = { x = 4.1, y = 173.0, z = 11.1 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 406, monster_id = 21011001, pos = { x = 152.1, y = 218.0, z = 877.5 }, rot = { x = 0.0, y = 129.3, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 407, monster_id = 21030401, pos = { x = 153.7, y = 218.0, z = 882.0 }, rot = { x = 0.0, y = 166.2, z = 0.0 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 579, gadget_id = 70211012, pos = { x = 150.9, y = 218.0, z = 881.2 }, rot = { x = 0.0, y = 0.5, z = 357.3 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 171001, gadget_id = 70220013, pos = { x = 151.4, y = 218.0, z = 873.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 171002, gadget_id = 70220013, pos = { x = 159.0, y = 217.4, z = 872.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 171003, gadget_id = 70220014, pos = { x = 156.2, y = 218.0, z = 881.4 }, rot = { x = 0.0, y = 0.0, z = 357.3 }, level = 19 },
	{ config_id = 171004, gadget_id = 70220014, pos = { x = 157.6, y = 217.9, z = 880.7 }, rot = { x = 355.6, y = 0.3, z = 352.9 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_287", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_287", action = "action_EVENT_ANY_MONSTER_DIE_287" }
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
		monsters = { 404, 405, 406, 407 },
		gadgets = { 579, 171001, 171002, 171003, 171004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_287" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_287(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_287(context, evt)
	-- 将configid为 579 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 579, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
