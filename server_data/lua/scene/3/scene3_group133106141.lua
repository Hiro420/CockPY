--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141001, monster_id = 25030201, pos = { x = -156.2, y = 208.8, z = 1163.4 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 141002, monster_id = 25040201, pos = { x = -148.7, y = 210.7, z = 1157.8 }, rot = { x = 0.0, y = 274.3, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 141003, monster_id = 25020202, pos = { x = -144.2, y = 211.5, z = 1159.7 }, rot = { x = 0.0, y = 303.2, z = 0.0 }, level = 30, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 141004, monster_id = 25040201, pos = { x = -142.8, y = 211.6, z = 1157.1 }, rot = { x = 0.0, y = 117.9, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 141008, monster_id = 25020202, pos = { x = -149.4, y = 211.5, z = 1149.9 }, rot = { x = 0.0, y = 303.2, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 141005, gadget_id = 70211012, pos = { x = -150.6, y = 208.8, z = 1165.0 }, rot = { x = 0.0, y = 209.3, z = 1.4 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 141006, gadget_id = 70310006, pos = { x = -155.7, y = 208.8, z = 1158.7 }, rot = { x = 357.1, y = 92.7, z = 4.3 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_141007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_141007", action = "action_EVENT_ANY_MONSTER_DIE_141007" }
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
		monsters = { 141001, 141002, 141003, 141004 },
		gadgets = { 141005, 141006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_141007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_141007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_141007(context, evt)
	-- 将configid为 141005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 141005, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
