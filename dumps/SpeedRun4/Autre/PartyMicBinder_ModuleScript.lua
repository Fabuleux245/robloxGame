-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:45
-- Luau version 6, Types version 3
-- Time taken: 0.001254 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local Enabled_upvr = Chrome.Enabled
if require(Enabled_upvr)() then
	Enabled_upvr = require(Chrome.Service)
else
	Enabled_upvr = nil
end
local useIsVoiceFocused_upvr = CrossExperienceVoice.Hooks.useIsVoiceFocused
local useIsVoiceConnected_upvr = CrossExperienceVoice.Hooks.useIsVoiceConnected
local React_upvr = require(CorePackages.Packages.React)
local Constants_upvr = require(Chrome.Integrations.Party.Constants)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("AudioFocusManagement")
local dependencyArray_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.dependencyArray
return function() -- Line 18, Named "PartyMicBinder"
	--[[ Upvalues[7]:
		[1]: useIsVoiceFocused_upvr (readonly)
		[2]: useIsVoiceConnected_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Enabled_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: game_GetEngineFeature_result1_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
	]]
	local var5_result1_upvr = useIsVoiceFocused_upvr()
	local useIsVoiceConnected_upvr_result1_upvr = useIsVoiceConnected_upvr()
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 21
		--[[ Upvalues[2]:
			[1]: Enabled_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		if Enabled_upvr then
			return Enabled_upvr:integrations()[Constants_upvr.TOGGLE_MIC_INTEGRATION_ID]
		end
		return nil
	end, {})
	React_upvr.useEffect(function() -- Line 28
		--[[ Upvalues[4]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: useIsVoiceConnected_upvr_result1_upvr (readonly)
			[3]: var5_result1_upvr (readonly)
			[4]: game_GetEngineFeature_result1_upvr (copied, readonly)
		]]
		if any_useMemo_result1_upvr then
			if useIsVoiceConnected_upvr_result1_upvr and (var5_result1_upvr or not game_GetEngineFeature_result1_upvr) then
				any_useMemo_result1_upvr.availability:available()
				return
			end
			any_useMemo_result1_upvr.availability:unavailable()
		end
	end, dependencyArray_upvr(useIsVoiceConnected_upvr_result1_upvr, var5_result1_upvr, any_useMemo_result1_upvr))
	return nil
end