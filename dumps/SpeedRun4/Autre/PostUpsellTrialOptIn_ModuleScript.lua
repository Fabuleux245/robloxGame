-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:57
-- Luau version 6, Types version 3
-- Time taken: 0.000440 seconds

local Url_upvr = require(script:FindFirstAncestor("PhoneUpsell").Parent.Http).Url
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local tbl = {}
	tbl.upsellCardType = arg2
	return arg1(string.format("%supsellcard/trial-opt-in", Url_upvr.APIS_URL), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	})
end