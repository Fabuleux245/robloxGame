-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:38
-- Luau version 6, Types version 3
-- Time taken: 0.000662 seconds

game:DefineFastFlag("EnableLeaveGameUpsellEntrypoint", false)
local GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr = require(game:GetService("CorePackages").Workspace.Packages.SharedFlags).GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints
return function() -- Line 6
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr (readonly)
	]]
	local var2_result1 = GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints_upvr()
	if var2_result1 then
		var2_result1 = game:GetFastFlag("EnableLeaveGameUpsellEntrypoint")
	end
	return var2_result1
end