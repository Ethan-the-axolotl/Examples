hook.Add("Tick", "Template_CloseServer", engine.CloseServer)

-- load GmodDotNet
require("dotnet")
-- test function
local function run_test()
	local module_loaded = dotnet.load("Examples")
	assert(module_loaded==true)

	-- do your test here --
	local s = "lol"
	local utf8s = "Мёнём"
	local ms = CreateCSString(s)

	print(ms.Length)
	//assert(string.len(s) == ms.Length)

	print(utf8s)
	print(string.len(utf8s))
	print(utf8.len(utf8s))

	local utf8cs = CreateCSString(utf8s)
	print(utf8cs)
	print(utf8cs.Length)

	print(type(ms:ToCharArray()))
	print(ms:ToCharArray())

	-----------------------

	local module_unloaded = dotnet.unload("Examples")
	assert(module_unloaded==true)
end

run_test()

print("tests are successful!")
file.Write("success.txt", "done")
