--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 21010201, pos = { x = -103.5, y = 202.9, z = -993.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 109005, monster_id = 21010201, pos = { x = -104.7, y = 202.9, z = -991.4 }, rot = { x = 0.0, y = 95.7, z = 0.0 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 109006, monster_id = 21010201, pos = { x = -103.4, y = 202.9, z = -989.8 }, rot = { x = 0.0, y = 175.7, z = 0.0 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 109007, monster_id = 21010201, pos = { x = -101.7, y = 202.9, z = -991.6 }, rot = { x = 0.0, y = 269.3, z = 0.0 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 109008, monster_id = 21030101, pos = { x = -104.0, y = 203.0, z = -996.1 }, rot = { x = 0.0, y = 356.1, z = 0.0 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 109009, monster_id = 21030401, pos = { x = -98.7, y = 203.0, z = -992.3 }, rot = { x = 0.0, y = 279.4, z = 0.0 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 109002, gadget_id = 70211012, pos = { x = -107.3, y = 202.9, z = -1000.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 109004, gadget_id = 70300107, pos = { x = -103.4, y = 202.9, z = -991.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 109010, gadget_id = 70310001, pos = { x = -108.8, y = 203.0, z = -1000.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 109011, gadget_id = 70310001, pos = { x = -97.2, y = 202.9, z = -984.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 109012, gadget_id = 70310001, pos = { x = -95.1, y = 203.0, z = -995.4 }, rot = { x = 0.0, y = 295.3, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 109013, gadget_id = 70220013, pos = { x = -93.8, y = 203.3, z = -988.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 109014, gadget_id = 70220013, pos = { x = -102.4, y = 203.0, z = -983.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 109015, gadget_id = 70300089, pos = { x = -102.8, y = 202.8, z = -986.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 109016, gadget_id = 70300089, pos = { x = -109.0, y = 202.9, z = -991.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 109017, gadget_id = 70220014, pos = { x = -94.0, y = 203.2, z = -986.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 109018, gadget_id = 70220014, pos = { x = -100.0, y = 202.9, z = -982.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 109019, gadget_id = 70220014, pos = { x = -95.1, y = 203.3, z = -987.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 109020, gadget_id = 70220014, pos = { x = -103.7, y = 202.9, z = -1000.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 109021, gadget_id = 70220035, pos = { x = -95.0, y = 203.4, z = -988.0 }, rot = { x = 0.0, y = 309.6, z = 0.0 }, level = 32 },
	{ config_id = 109022, gadget_id = 70220035, pos = { x = -104.5, y = 202.9, z = -999.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_109003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109003", action = "action_EVENT_ANY_MONSTER_DIE_109003" }
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
		monsters = { 109001, 109005, 109006, 109007, 109008, 109009 },
		gadgets = { 109002, 109004, 109010, 109011, 109012, 109013, 109014, 109015, 109016, 109017, 109021, 109022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_109003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109003(context, evt)
	-- 将configid为 109002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 109002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
