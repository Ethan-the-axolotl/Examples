﻿using GmodNET.API;

namespace Examples
{
    public class HelloWorld : IModule
    {
        public string ModuleName => "HelloWorld";

        public string ModuleVersion => "1.0.0";

        public void Load(ILua lua, bool is_serverside, GetILuaFromLuaStatePointer lua_extructor, ModuleAssemblyLoadContext assembly_context)
        {
            lua.PushSpecial(SPECIAL_TABLES.SPECIAL_GLOB);
            lua.GetField(-1, "print");
            lua.PushString("Hello World!");
            lua.MCall(1, 0);
        }

        public void Unload() { }
        public void Unload(ILua lua)
        {
            lua.PushSpecial(SPECIAL_TABLES.SPECIAL_GLOB);
            lua.GetField(-1, "print");
            lua.PushString("Goodbye World!");
            lua.MCall(1, 0);
        }
    }
}
