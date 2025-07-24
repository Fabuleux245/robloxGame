-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:24
-- Luau version 6, Types version 3
-- Time taken: 0.000821 seconds

local VoiceChat = script:FindFirstAncestor("VoiceChat")
local SetShowAgeVerificationOverlay_upvr = require(VoiceChat.AgeVerificationOverlay.SetShowAgeVerificationOverlay)
local Cryo_upvr = require(VoiceChat.Parent.Cryo)
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: SetShowAgeVerificationOverlay_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	arg1 = var5
	local var6 = arg1
	local var7
	if arg2.type == SetShowAgeVerificationOverlay_upvr.name then
		var7 = Cryo_upvr
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var7[arg2.universeId] = tbl
			tbl.elegibleToSeeVoiceUpsell = arg2.elegibleToSeeVoiceUpsell
			tbl.isUniverseEnabledForAvatarVideo = arg2.isUniverseEnabledForAvatarVideo
			tbl.isVoiceEnabled = arg2.isVoiceEnabled
			tbl.isUniverseEnabledForVoice = arg2.isUniverseEnabledForVoice
			tbl.showVoiceOptInOverlay = arg2.showVoiceOptInOverlay
			tbl.isPlaceEnabledForVoice = arg2.isPlaceEnabledForVoice
			tbl.universeId = arg2.universeId
			local tbl = {}
			var7 = {}
			return var7
		end
		if arg2.universeId == nil or not INLINED() then
			var7 = {}
		end
		var6 = var7.Dictionary.join(var6, var7)
	end
	return var6
end