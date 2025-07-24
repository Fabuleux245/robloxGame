-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:57
-- Luau version 6, Types version 3
-- Time taken: 0.000692 seconds

local UrlBuilder_upvr = require(script:FindFirstAncestor("PhoneUpsell").Parent.UrlBuilder).UrlBuilder
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2) -- Line 19
	--[[ Upvalues[2]:
		[1]: UrlBuilder_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local var4
	if type(arg2) ~= "string" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "invalid code in verify phone code")
	var4 = not string.match(arg2, "%D")
	assert(var4, "invalid code in verify phone code")
	var4 = UrlBuilder_upvr
	var4 = "accountinformation:phone/verify"
	var4 = HttpService_upvr
	local tbl = {}
	tbl.code = arg2
	var4 = var4:JSONEncode(tbl)
	return arg1(var4.fromString(var4)(), "POST", {
		postBody = var4;
	})
end