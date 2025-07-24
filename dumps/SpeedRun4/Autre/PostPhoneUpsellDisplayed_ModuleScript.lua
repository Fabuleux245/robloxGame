-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:55
-- Luau version 6, Types version 3
-- Time taken: 0.000574 seconds

local HttpService_upvr = game:GetService("HttpService")
local UrlBuilder_upvr = require(script:FindFirstAncestor("PhoneUpsell").Parent.UrlBuilder).UrlBuilder
return function(arg1, arg2, arg3, arg4, arg5) -- Line 7
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: UrlBuilder_upvr (readonly)
	]]
	local tbl = {}
	tbl.layerName = arg2
	tbl.displayTime = arg3
	tbl.userIgnored = arg4
	local var5
	if arg5 then
		var5 = {}
		var5.postBody = HttpService_upvr:JSONEncode(tbl)
	else
		var5 = HttpService_upvr:JSONEncode(tbl)
	end
	return arg1(UrlBuilder_upvr.fromString("apis:upsellcard/v1/phone-verification/display-time")(), "POST", var5)
end