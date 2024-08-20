local function on_error(error)
	local files = io.open("./error.txt", "w")
	files:write(tostring(error) .. "\n")
	files:close()
end

local flags = CS.System.Reflection.BindingFlags.NonPublic | CS.System.Reflection.BindingFlags.Instance | CS.System.Reflection.BindingFlags.Static | CS.System.Reflection.BindingFlags.Public

local function dump_excel(class, get_data)

        if not (CS.System.IO.Directory.Exists("./ExcelBinoutput/")) then
	        CS.System.IO.Directory.CreateDirectory("./ExcelBinoutput/");
        end

        
        local serializer = CS.Newtonsoft.Json.JsonSerializer()
        serializer.Formatting = CS.Newtonsoft.Json.Formatting.Indented
        serializer.ReferenceLoopHandling = CS.Newtonsoft.Json.ReferenceLoopHandling.Ignore
        serializer.NullValueHandling = CS.Newtonsoft.Json.NullValueHandling.Ignore
        serializer.Converters:Add(CS.Newtonsoft.Json.Converters.StringEnumConverter())

        local excelname = tostring(CS[class].PJFNIMKPEIJ)
        local parts = {}
        for part in excelname:gmatch("[^/]+") do
            table.insert(parts, part)
        end
        local last_part = parts[#parts]
        
        
        local excel = CS[class][get_data]()

        local outpath = "./ExcelBinoutput/" .. last_part .. "69.json"
        local swriter = CS.System.IO.StreamWriter(outpath)
        local jwriter = CS.Newtonsoft.Json.JsonTextWriter(swriter)

		serializer:Serialize(jwriter, excel)

		swriter:Close()
		jwriter:Close()


        local outfile = io.open("./ExcelBinoutput/" .. last_part .. ".json", "w")
        local values = {}

        if excel ~= nil then
            for _, i in ipairs(excel) do
                local serialized = CS.UnityEngine.JsonUtility.ToJson(i, true)
                table.insert(values, serialized)
            end
        end

        local out = '['..table.concat(values, ",\n")..']'
        outfile:write(out)

        outfile:close()

end

local function dump_all_excel()
    local assemblies = CS.System.AppDomain.CurrentDomain:GetAssemblies()

    local assembly = assemblies[24]
    local types = assembly:GetTypes()

    local excel_loader_classes = {}

    for i = 0, types.Length - 1 do
        local type = types[i]

        local fields = type:GetFields(flags)

        for j = 0, fields.Length - 1 do
            local field = fields[j]
            if field.Name == "DGJEMPLLAKE" and type:GetMethod("EMOEICACCLN") then
                excel_loader_classes[#excel_loader_classes + 1] = type.Name
            end
        end
    end
    for _, key in ipairs(excel_loader_classes) do
        dump_excel(key, "EMOEICACCLN")
    end
    on_error("complete")
end

xpcall(dump_all_excel, on_error)