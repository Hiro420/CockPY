function OnSubfieldDrop(context, drop_type, drop_value)
	if 1 == drop_value then
		--ScriptLib.PrintLog("drop_start")
		ScriptLib.DropSubfield(context, {subfield_name = "WoodenObject_Broken"})
		--ScriptLib.PrintLog("drop_done")
	end
end