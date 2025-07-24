-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:26:18
-- Luau version 6, Types version 3
-- Time taken: 0.000643 seconds

game:DefineFastFlag("NotificationModalSetMenuIsOpen", false)
local GetFFlagPackagifySettingsShowSignal_upvr = require(script.Parent.GetFFlagPackagifySettingsShowSignal)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: GetFFlagPackagifySettingsShowSignal_upvr (readonly)
	]]
	local var2_result1 = GetFFlagPackagifySettingsShowSignal_upvr()
	if var2_result1 then
		var2_result1 = game:GetFastFlag("NotificationModalSetMenuIsOpen")
	end
	return var2_result1
end