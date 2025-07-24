-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:49
-- Luau version 6, Types version 3
-- Time taken: 0.002584 seconds

local Constants = require(script:FindFirstAncestor("VoiceChatCore").Constants)
game:DefineFastFlag("EnableSeamlessVoiceFeature", false)
game:DefineFastFlag("EnableConnectDisconnect", false)
game:DefineFastFlag("EnableHearingWithoutMicPermissions", false)
game:DefineFastFlag("EnableLikelySpeakingBubblesRemoved", false)
game:DefineFastFlag("EnableJoinVoiceIsMutedMic", false)
game:DefineFastFlag("EnableReducedCooldownLikelySpeakingBubbles", false)
game:DefineFastFlag("EnableJoinVoiceTooltip", false)
local tbl_upvr = {
	[Constants.SeamlessVoiceFeatures.ConnectDisconnect] = function() -- Line 19
		return game:GetFastFlag("EnableConnectDisconnect")
	end;
	[Constants.SeamlessVoiceFeatures.HearingWithoutMicPermissions] = function() -- Line 22
		return game:GetFastFlag("EnableHearingWithoutMicPermissions")
	end;
	[Constants.SeamlessVoiceFeatures.LikelySpeakingBubblesRemoved] = function() -- Line 25
		return game:GetFastFlag("EnableLikelySpeakingBubblesRemoved")
	end;
	[Constants.SeamlessVoiceFeatures.JoinVoiceIsMutedMic] = function() -- Line 28
		return game:GetFastFlag("EnableJoinVoiceIsMutedMic")
	end;
	[Constants.SeamlessVoiceFeatures.ReducedCooldownLikelySpeakingBubbles] = function() -- Line 31
		return game:GetFastFlag("EnableReducedCooldownLikelySpeakingBubbles")
	end;
	[Constants.SeamlessVoiceFeatures.JoinVoiceTooltip] = function() -- Line 34
		return game:GetFastFlag("EnableJoinVoiceTooltip")
	end;
}
return function(arg1) -- Line 39
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var14
	if type(arg1) == "string" then
		var14 = {var14}
	end
	if var14 == nil or #var14 == 0 or not game:GetFastFlag("EnableSeamlessVoiceFeature") then
		return game:GetFastFlag("EnableSeamlessVoiceFeature")
	end
	for _, v in pairs(var14) do
		local var19 = tbl_upvr[v]
		if not var19 or not var19() then
			return false
		end
	end
	return true
end