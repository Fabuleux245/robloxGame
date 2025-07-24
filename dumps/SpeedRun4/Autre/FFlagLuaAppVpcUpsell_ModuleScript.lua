-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:23:08
-- Luau version 6, Types version 3
-- Time taken: 0.000454 seconds

local var1 = require(script.Parent.GetFFlagEnableAmpVPCUpsellSupport)()
if var1 then
	var1 = game:DefineFastFlag("LuaAppVpcUpsell3", false)
end
return var1