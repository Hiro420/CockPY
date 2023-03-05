function OnSubfieldDrop(context, drop_type, drop_value)
	if 1 == drop_value then
		ScriptLib.DropSubfield(context, {subfield_name = "ElectricRock_Destroy"})
	end
end	