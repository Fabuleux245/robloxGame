-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:36
-- Luau version 6, Types version 3
-- Time taken: 0.000852 seconds

local dependencies = require(script:FindFirstAncestor("VoiceChat").dependencies)
local SharedFlags = dependencies.SharedFlags
local FFlagEnableRetryForLinkingProtocolFetch_upvr = SharedFlags.FFlagEnableRetryForLinkingProtocolFetch
local FIntLinkingProtocolFetchRetries_upvr = SharedFlags.FIntLinkingProtocolFetchRetries
local default_upvr = dependencies.LinkingProtocol.LinkingProtocol.default
local SettingsRoute_upvr = dependencies.LinkingProtocol.Enums.SettingsRoute
local FIntLinkingProtocolFetchTimeoutMS_upvr = SharedFlags.FIntLinkingProtocolFetchTimeoutMS
return function() -- Line 20
	--[[ Upvalues[5]:
		[1]: FFlagEnableRetryForLinkingProtocolFetch_upvr (readonly)
		[2]: FIntLinkingProtocolFetchRetries_upvr (readonly)
		[3]: default_upvr (readonly)
		[4]: SettingsRoute_upvr (readonly)
		[5]: FIntLinkingProtocolFetchTimeoutMS_upvr (readonly)
	]]
	-- KONSTANTERROR: [28] 25. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 25. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.2]
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.1]
		if nil == nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.3]
			-- KONSTANTWARNING: GOTO [8] #9
		end
	else
		local any_await_result1, any_await_result2 = default_upvr:supportsSwitchToSettingsApp(SettingsRoute_upvr.Microphone):await()
	end
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 35. Error Block 18 start (CF ANALYSIS FAILED)
	any_await_result1 = any_await_result1
	local var11 = any_await_result1
	if var11 then
		if any_await_result2 ~= true then
			var11 = false
		else
			var11 = true
		end
	end
	do
		return var11
	end
	-- KONSTANTERROR: [41] 35. Error Block 18 end (CF ANALYSIS FAILED)
end