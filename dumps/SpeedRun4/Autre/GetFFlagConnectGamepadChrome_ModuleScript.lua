-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:24:37
-- Luau version 6, Types version 3
-- Time taken: 0.000416 seconds

game:DefineFastFlag("ConnectGamepadChrome", false)
local module_upvr = require(script.Parent:WaitForChild("FFlagEnableConsoleExpControls"))
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var3 = module_upvr
	if var3 then
		var3 = game:GetFastFlag("ConnectGamepadChrome")
	end
	return var3
end