function OnBeHurt(context, element_type, strike_type)
    local gather_config_ids = ScriptLib.GetGatherConfigIdList(context)
    local length = #gather_config_ids
    ScriptLib.PrintLog("gather_config_ids length: " ..length)
    if length > 0 then
        if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, gather_config_ids[1], GadgetState.GatherDrop) then
            ScriptLib.PrintLog("Drop config_id:" .. gather_config_ids[1] .." failed")
        end 
    end 
end