-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:34
-- Luau version 6, Types version 3
-- Time taken: 0.001174 seconds

local Url_upvr = require(script:FindFirstAncestor("VoiceChat").Parent.Http).Url
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3) -- Line 15
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4
	if type(arg2) ~= "boolean" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "UserOptIn request expects isUserOptIn to be a boolean")
	var4 = "%sv1/settings/user-opt-in/"
	var4 = nil
	if arg3 ~= nil then
		if type(arg3) ~= "boolean" then
		else
		end
		assert(true, "UserOptIn request expects isOptedInThroughUpsell to be a boolean")
		local tbl_2 = {}
		tbl_2.isUserOptIn = arg2
		tbl_2.isOptedInThroughUpsell = arg3
		var4 = HttpService_upvr:JSONEncode(tbl_2)
	else
		local tbl = {}
		tbl.isUserOptIn = arg2
		var4 = HttpService_upvr:JSONEncode(tbl)
	end
	return arg1(string.format(var4, Url_upvr.VOICE_URL), "POST", {
		postBody = var4;
	})
end