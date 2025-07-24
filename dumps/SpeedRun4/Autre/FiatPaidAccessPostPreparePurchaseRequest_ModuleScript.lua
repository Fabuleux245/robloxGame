-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:12
-- Luau version 6, Types version 3
-- Time taken: 0.000671 seconds

local Url_upvr = require(script:FindFirstAncestor("GamePlayButton").Parent.Http).Url
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3) -- Line 21, Named "FiatPaidAccessPostPreparePurchaseRequest"
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local tbl = {}
	tbl.expected_base_price_id = arg3
	tbl.root_place_id = arg2
	return arg1(string.format("%s/fiat-paid-access-service/v1/purchase", Url_upvr.APIS_URL), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	})
end