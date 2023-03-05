function OnBeHurt(context, element_type, strike_type)
	--ScriptLib.PrintLog("##BeHurt")
	local this_flower = ScriptLib.GetContextGadgetConfigId(context)
	local this_group = ScriptLib.GetContextGroupId(context)

	if element_type == ElementType.Fire then
		local state = ScriptLib.GetGadgetState(context)
		if state == GadgetState.Default then
			ScriptLib.SetGadgetState(context, GadgetState.Action01)
			ScriptLib.SetGadgetEnableInteract(context, this_group, this_flower, true)
		elseif state ~= GadgetState.Action02 then
			ScriptLib.SetGadgetState(context, GadgetState.Action03)
		elseif state == GadgetState.Action03 then
			ScriptLib.SetGadgetState(context, GadgetState.Action02)
		end
		
		--ScriptLib.KillEntityByConfigId(context, { group_id = this_group, config_id = this_flower })
	end
end