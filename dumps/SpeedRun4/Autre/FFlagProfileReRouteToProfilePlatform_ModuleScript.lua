-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:23:29
-- Luau version 6, Types version 3
-- Time taken: 0.000514 seconds

local var1
local function INLINED() -- Internal function, doesn't exist in bytecode
	var1 = require(script.Parent.FFlagProfilePlatformSetup)
	return var1
end
if not game:DefineFastFlag("ProfileReRouteToProfilePlatform_v1", false) or not INLINED() then
	var1 = require(script.Parent.FFlagProfilePlatformDevFlag)
end
return var1