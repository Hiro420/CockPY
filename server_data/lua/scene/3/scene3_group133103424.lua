--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 424001, monster_id = 21010601, pos = { x = 239.8, y = 204.0, z = 1256.7 }, rot = { x = 0.0, y = 73.4, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 424004, monster_id = 21010601, pos = { x = 226.0, y = 203.7, z = 1264.0 }, rot = { x = 0.0, y = 244.0, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 424005, monster_id = 20011201, pos = { x = 241.6, y = 204.5, z = 1257.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 424006, monster_id = 20011201, pos = { x = 224.2, y = 204.2, z = 1263.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 424007, monster_id = 22010101, pos = { x = 233.4, y = 202.8, z = 1259.5 }, rot = { x = 0.0, y = 15.0, z = 0.0 }, level = 24, drop_tag = "深渊法师" },
	{ config_id = 424008, monster_id = 21011001, pos = { x = 252.8, y = 201.7, z = 1280.0 }, rot = { x = 0.0, y = 340.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 424009, monster_id = 21011001, pos = { x = 226.8, y = 200.2, z = 1284.0 }, rot = { x = 0.0, y = 45.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 424002, gadget_id = 70211022, pos = { x = 231.1, y = 206.3, z = 1255.3 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 24, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_424003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_424003", action = "action_EVENT_ANY_MONSTER_DIE_424003" }
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
		monsters = { 424001, 424004, 424005, 424006, 424007, 424008, 424009 },
		gadgets = { 424002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_424003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_424003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_424003(context, evt)
	-- 将configid为 424002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 424002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
