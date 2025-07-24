-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:56
-- Luau version 6, Types version 3
-- Time taken: 0.001680 seconds

local UrlBuilder_upvr = require(script:FindFirstAncestor("PhoneUpsell").Parent.UrlBuilder).UrlBuilder
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3, arg4, arg5) -- Line 19
	--[[ Upvalues[2]:
		[1]: UrlBuilder_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local var4
	if type(arg2) ~= "string" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "invalid country code in set phone number")
	if type(arg3) ~= "string" then
		var4 = false
		-- KONSTANTWARNING: GOTO [24] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 31 start (CF ANALYSIS FAILED)
	var4 = true
	assert(var4, "invalid prefix in set phone number")
	if type(arg4) ~= "string" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "invalid phone number in set phone number")
	var4 = true
	if type(arg5) ~= "string" then
		if arg5 ~= nil then
			var4 = false
		else
			var4 = true
		end
	end
	assert(var4, "invalid password in set phone number")
	var4 = UrlBuilder_upvr
	var4 = "accountinformation:phone"
	var4 = HttpService_upvr
	local tbl = {}
	tbl.password = arg5
	tbl.countryCode = arg2
	tbl.prefix = arg3
	tbl.phone = arg4
	var4 = var4:JSONEncode(tbl)
	do
		return arg1(var4.fromString(var4)(), "POST", {
			postBody = var4;
		})
	end
	-- KONSTANTERROR: [23] 18. Error Block 31 end (CF ANALYSIS FAILED)
end