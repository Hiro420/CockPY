--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17, monster_id = 20011301, pos = { x = -2.0, y = 1.0, z = -38.5 }, rot = { x = 0.0, y = 12.8, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 18, monster_id = 21011001, pos = { x = 15.1, y = 1.1, z = -39.5 }, rot = { x = 0.0, y = 305.3, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 20, monster_id = 20011201, pos = { x = 3.4, y = 1.0, z = -39.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 21, monster_id = 21010501, pos = { x = -4.2, y = 1.0, z = -45.1 }, rot = { x = 0.0, y = 31.1, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47, gadget_id = 70211111, pos = { x = 14.0, y = 12.0, z = -52.9 }, rot = { x = 0.0, y = 330.7, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 52, gadget_id = 70211012, pos = { x = 17.6, y = 1.0, z = -46.9 }, rot = { x = 0.0, y = 327.5, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 54, gadget_id = 70220004, pos = { x = -8.2, y = 0.9, z = -41.5 }, rot = { x = 0.0, y = 306.0, z = 0.0 }, level = 15 },
	{ config_id = 55, gadget_id = 70220004, pos = { x = 1.3, y = 1.0, z = -49.4 }, rot = { x = 0.0, y = 219.8, z = 0.0 }, level = 15 },
	{ config_id = 76, gadget_id = 70900201, pos = { x = 21.6, y = 8.0, z = -50.5 }, rot = { x = 0.0, y = 76.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 44, shape = RegionShape.SPHERE, radius = 5, pos = { x = 25.2, y = 8.1, z = -51.1 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_15", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15", action = "action_EVENT_ANY_MONSTER_DIE_15" },
	{ name = "ENTER_REGION_44", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44", action = "action_EVENT_ENTER_REGION_44", forbid_guest = false }
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
	rand_suite = true
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
		monsters = { 17, 18, 20, 21 },
		gadgets = { 47, 52, 54, 55 },
		regions = { 44 },
		triggers = { "ANY_MONSTER_DIE_15", "ENTER_REGION_44" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15(context, evt)
	-- 解锁目标2
	if 0 ~= ScriptLib.UnlockForce(context, 2) then
		return -1
	end
	
	-- 创生gadget 76
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76 }) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-6，4，-47），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6, y=4, z=-47}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2 }) then
					return -1
				end 
	
	-- 将configid为 52 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_44(context, evt)
	if evt.param1 ~= 44 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201006005, monsters = {}, gadgets = {76} }) then
			return -1
		end
	
	return 0
end
