function OnClientExecuteReq(context, param1, param2, param3)
  if param1 == 0 then
    ScriptLib.SetGadgetState(context, GadgetState.Default)
  end
  if param1 == 202 then
    ScriptLib.SetGadgetState(context, GadgetState.GearStop)
  end
  if param1 == 201 then
    ScriptLib.SetGadgetState(context, GadgetState.GearStart)
  end
  if param1 == 202 then
    ScriptLib.SetGadgetState(context, GadgetState.GearStop)
  end
  if param1 == 203 then
    ScriptLib.SetGadgetState(context, GadgetState.GearAction1)
  end
  if param1 == 204 then
    ScriptLib.SetGadgetState(context, GadgetState.GearAction2)
  end
  if param1 == 901 then
    ScriptLib.SetGadgetState(context, GadgetState.Action01)
  end
  if param1 == 902 then
    ScriptLib.SetGadgetState(context, GadgetState.Action02)
  end
end
