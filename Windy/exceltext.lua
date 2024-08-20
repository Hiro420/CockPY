local function on_error(error)
	local files = io.open("./error.txt", "w")
	files:write(tostring(error) .. "\n")
	files:close()
end

local flags = CS.System.Reflection.BindingFlags.NonPublic | CS.System.Reflection.BindingFlags.Instance | CS.System.Reflection.BindingFlags.Static | CS.System.Reflection.BindingFlags.Public


local function dump_all_excel()

    local last_part = "AvatarExcelConfigData"
    
    xlua.private_accessible(CS.HLEMHDFFILF)
    local excel = CS.HLEMHDFFILF.EMOEICACCLN()

    local values = {}
        
    local serializer = CS.Newtonsoft.Json.JsonSerializer()
    --serializer.Formatting = CS.Newtonsoft.Json.Formatting.Indented
    serializer.ReferenceLoopHandling = CS.Newtonsoft.Json.ReferenceLoopHandling.Ignore
    serializer.NullValueHandling = CS.Newtonsoft.Json.NullValueHandling.Ignore
    serializer.Converters:Add(CS.Newtonsoft.Json.Converters.StringEnumConverter())


    if excel ~= nil then
        for _, i in pairs(excel) do

            local outpath = "./ExcelBinoutput/" .. last_part .. "69.json"
            local swriter = CS.System.IO.StreamWriter(outpath)
            local jwriter = CS.Newtonsoft.Json.JsonTextWriter(swriter)

            serializer:Serialize(jwriter, i)

            swriter:Close()
            jwriter:Close()

            local serialized = CS.UnityEngine.JsonUtility.ToJson(i, true)
            table.insert(values, serialized)
        end
    end

    local out = '['..table.concat(values, ",\n")..']'

    local outfile = io.open("./ExcelBinoutput/" .. last_part .. ".json", "w")

    outfile:write(out)

    outfile:close()

    on_error("complete")
end

xpcall(dump_all_excel, on_error)