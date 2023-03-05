--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 297001, monster_id = 21010601, pos = { x = 1732.6, y = 274.8, z = -49.0 }, rot = { x = 355.3, y = 102.2, z = 343.3 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 297004, monster_id = 21020201, pos = { x = 1738.6, y = 275.1, z = -50.9 }, rot = { x = 357.7, y = 304.7, z = 17.2 }, level = 15, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 },
	{ config_id = 297005, monster_id = 21010301, pos = { x = 1735.6, y = 276.1, z = -46.1 }, rot = { x = 340.4, y = 36.6, z = 352.2 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 297002, gadget_id = 70211012, pos = { x = 1735.0, y = 274.8, z = -49.9 }, rot = { x = 344.7, y = 358.8, z = 8.2 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_297003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_297003", action = "action_EVENT_ANY_MONSTER_DIE_297003" }
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
		monsters = { 297001, 297004, 297005 },
		gadgets = { 297002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_297003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_297003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_297003(context, evt)
	-- 将configid为 297002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
