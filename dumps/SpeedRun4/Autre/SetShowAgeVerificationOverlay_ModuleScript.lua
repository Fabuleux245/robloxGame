-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:24
-- Luau version 6, Types version 3
-- Time taken: 0.000360 seconds

return require(script:FindFirstAncestor("VoiceChat").Parent.Rodux).makeActionCreator(script.Name, function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 7
	local module = {}
	module.universeId = arg1
	module.isPlaceEnabledForVoice = arg2
	module.isUniverseEnabledForVoice = arg3
	module.isVoiceEnabled = arg4
	module.isUniverseEnabledForAvatarVideo = arg6
	module.showVoiceOptInOverlay = arg5
	module.elegibleToSeeVoiceUpsell = arg7
	return module
end)