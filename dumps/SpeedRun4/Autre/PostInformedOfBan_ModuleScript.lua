-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:33
-- Luau version 6, Types version 3
-- Time taken: 0.000617 seconds

local Url_upvr = require(script:FindFirstAncestor("VoiceChat").Parent.Http).Url
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local var4
	if type(arg2) ~= "boolean" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "PostInformedOfBan request expects informedOfBan to be a boolean")
	var4 = "%sv1/moderation/informed-of-ban"
	var4 = HttpService_upvr
	local tbl = {}
	tbl.informedOfBan = arg2
	var4 = var4:JSONEncode(tbl)
	return arg1(string.format(var4, Url_upvr.VOICE_URL), "POST", var4)
end