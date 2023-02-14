local function changeUid()
    CS.UnityEngine.GameObject.Find("/BetaWatermarkCanvas(Clone)/Panel/TxtUID"):GetComponent(
        "Text").text = tostring("CockPY")
end

local function onError(error)
    CS.UnityEngine.GameObject.Find("/BetaWatermarkCanvas(Clone)/Panel/TxtUID"):GetComponent(
        "Text").text = tostring(error)
end

xpcall(changeUid, onError)