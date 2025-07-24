-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:22
-- Luau version 6, Types version 3
-- Time taken: 0.000611 seconds

local HttpService_upvr = game:GetService("HttpService")
local Url_upvr = require(script:FindFirstAncestor("VoiceChat").Parent.Http).Url
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: Url_upvr (readonly)
	]]
	local var4
	if type(arg2) ~= "string" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "PostRecordUserSeenGeneralModal request expects modalId to be a string")
	local module = {}
	module.modalId = arg2
	var4 = string.format("%s/v1/settings/record-user-seen-modal", Url_upvr.VOICE_URL)
	return arg1(var4, "POST", HttpService_upvr:JSONEncode(module))
end