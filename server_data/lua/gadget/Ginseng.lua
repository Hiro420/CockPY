function OnSubfieldDrop(context, drop_type, drop_value)

	ScriptLib.DropSubfield(context, {subfield_name = "Ginseng"})
	
end	

function OnBeHurt(context, element_type, strike_type)
    local this_target = ScriptLib.GetContextGadgetConfigId(context)
	--ScriptLib.PrintLog("##config="..this_target)
	--local this_group = ScriptLib.GetContextGroupId(context)
	--ScriptLib.PrintLog("##config="..this_group)
	ScriptLib.SetGadgetStateByConfigId(context, this_target, GadgetState.GatherDrop)
	ScriptLib.PrintLog("OnHit Trigger")
end
