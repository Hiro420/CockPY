function OnSubfieldDrop(context, drop_type, drop_value)
	if 1 == drop_value then
		ScriptLib.DropSubfield(context, {subfield_name = "test_1"})
	elseif 2 == drop_value then
		ScriptLib.DropSubfield(context, {subfield_name = "test_2"})
	else
		ScriptLib.DropSubfield(context, {subfield_name = "test_3"})
	end
end	