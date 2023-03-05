-- abilityRequest
function OnClientExecuteReq(context, param1, param2, param3)

	-- 获取机关当前状态
	if param1 == 0 then
		--[[local this_config = ScriptLib.GetGadgetConfigId(context, {gadget_eid = source_entity_id})
		local this_group = ScriptLib.GetContextGroupId(context)
		ScriptLib.SetGroupGadgetStateByConfigId(context, this_group, this_config, GadgetState.Default)]]

		ScriptLib.SetGadgetState(context, GadgetState.Default)
	end
end


