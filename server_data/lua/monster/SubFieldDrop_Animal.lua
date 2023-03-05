
function OnDie(context, element_type, strike_type)
	if element_type == ElementType.Fire then
		ScriptLib.DropSubfield(context, {subfield_name = "Animal_Wisp_Fire_Die"})
	elseif element_type == ElementType.Water then
		ScriptLib.DropSubfield(context, {subfield_name = "Animal_Wisp_Water_Die"})
	elseif element_type == ElementType.Ice then
		ScriptLib.DropSubfield(context, {subfield_name = "Animal_Wisp_Ice_Die"})
	elseif element_type == ElementType.Electric then
		ScriptLib.DropSubfield(context, {subfield_name = "Animal_Wisp_Electric_Die"})
	elseif element_type == ElementType.Grass then
		ScriptLib.DropSubfield(context, {subfield_name = "Animal_Wisp_Grass_Die"})
	elseif element_type == ElementType.Rock then
		ScriptLib.DropSubfield(context, {subfield_name = "Animal_Wisp_Rock_Die"})
	else
		ScriptLib.DropSubfield(context, {subfield_name = "Animal_Wisp_Wind_Die"})
	end
end	