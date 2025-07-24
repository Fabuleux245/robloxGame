-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:30
-- Luau version 6, Types version 3
-- Time taken: 0.000481 seconds

local APIUtil_upvr = require(script.Parent.Parent.util.APIUtil)
local var2_upvr = string.format("https://apis.%s", APIUtil_upvr.getBaseDomain()).."assets/rcc/v1/assets/%s"
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 15, Named "getAssetCreationDetailsRCC"
	--[[ Upvalues[3]:
		[1]: var2_upvr (readonly)
		[2]: APIUtil_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local any_requestAndRetryGet_result1, any_requestAndRetryGet_result2 = APIUtil_upvr.requestAndRetryGet(string.format(var2_upvr, arg1))
	if any_requestAndRetryGet_result1 then
		return true, HttpService_upvr:JSONDecode(any_requestAndRetryGet_result2)
	end
	return false, any_requestAndRetryGet_result2
end