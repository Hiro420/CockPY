--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 249001, monster_id = 21010901, pos = { x = -172.0, y = 196.6, z = 872.7 }, rot = { x = 0.0, y = 330.2, z = 0.0 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 249005, monster_id = 21010901, pos = { x = -172.5, y = 196.6, z = 875.5 }, rot = { x = 0.0, y = 193.0, z = 0.0 }, level = 32, drop_tag = "远程丘丘人" },
	{ config_id = 249006, monster_id = 21010901, pos = { x = -174.7, y = 196.6, z = 873.5 }, rot = { x = 0.0, y = 47.2, z = 0.0 }, level = 32, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 249002, gadget_id = 70211012, pos = { x = -173.2, y = 196.6, z = 871.2 }, rot = { x = 0.0, y = 359.3, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 249004, gadget_id = 70310004, pos = { x = -173.2, y = 196.6, z = 873.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 249007, gadget_id = 70220014, pos = { x = -163.0, y = 196.6, z = 871.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 249008, gadget_id = 70220014, pos = { x = -162.1, y = 196.6, z = 872.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 249009, gadget_id = 70220014, pos = { x = -163.2, y = 196.6, z = 872.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 249010, gadget_id = 70220014, pos = { x = -170.7, y = 196.6, z = 871.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_249003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_249003", action = "action_EVENT_ANY_MONSTER_DIE_249003" }
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
		monsters = { 249001, 249005, 249006 },
		gadgets = { 249002, 249004, 249007, 249008, 249009, 249010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_249003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_249003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_249003(context, evt)
	-- 将configid为 249002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
