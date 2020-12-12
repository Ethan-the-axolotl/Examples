hook.Add("Tick", "Template_CloseServer", engine.CloseServer)

-- load GmodDotNet
require("dotnet")
-- test function
local function run_test()
	local module_loaded = dotnet.load("Examples")
	assert(module_loaded==true)

	-- do your test here --

	

	-----------------------

	local module_unloaded = dotnet.unload("Examples")
	assert(module_unloaded==true)
end

run_test()

print("tests are successful!")
file.Write("success.txt", "done")
