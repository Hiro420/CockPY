function OnBeHurt(context, element_type, strike_type)
	if element_type == ElementType.Electric then
		ScriptLib.DropSubfield(context, {subfield_name = "ElectricRock_Destroy"})
		local this_rock = ScriptLib.GetContextGadgetConfigId(context)
		local this_group = ScriptLib.GetContextGroupId(context)
		ScriptLib.KillEntityByConfigId(context, { group_id = this_group, config_id = this_rock })
	end
end