function OnBeHurt(context, element_type, strike_type)
	ScriptLib.SetGadgetState(context, GadgetState.Action01)
	local this_target = ScriptLib.GetContextGadgetConfigId(context)
	--ScriptLib.PrintLog("##config="..this_target)
	local this_group = ScriptLib.GetContextGroupId(context)
	--ScriptLib.PrintLog("##config="..this_group)
	ScriptLib.KillEntityByConfigId(context, { group_id = this_group, config_id = this_target })
end