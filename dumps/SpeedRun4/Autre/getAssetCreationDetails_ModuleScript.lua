-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:29
-- Luau version 6, Types version 3
-- Time taken: 0.000498 seconds

local APIUtil_upvr = require(script.Parent.Parent.util.APIUtil)
local var2_upvr = string.format("https://itemconfiguration.%s", APIUtil_upvr.getBaseDomain()).."v1/creations/get-asset-details"
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 13, Named "getAssetCreationDetails"
	--[[ Upvalues[3]:
		[1]: APIUtil_upvr (readonly)
		[2]: var2_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local tbl = {}
	tbl.assetIds = arg1
	local any_requestAndRetryPost_result1, any_requestAndRetryPost_result2 = APIUtil_upvr.requestAndRetryPost(var2_upvr, HttpService_upvr:JSONEncode(tbl))
	if any_requestAndRetryPost_result1 then
		return true, HttpService_upvr:JSONDecode(any_requestAndRetryPost_result2)
	end
	return false, any_requestAndRetryPost_result2
end