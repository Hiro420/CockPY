local fps_limit = function()
  CS.UnityEngine.QualitySettings.vSyncCount = 0
  CS.UnityEngine.Application.targetFrameRate = 240
end
local onError = function(error)
end
xpcall(fps_limit, onError)
