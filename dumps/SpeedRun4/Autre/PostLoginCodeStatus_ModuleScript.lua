-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:48
-- Luau version 6, Types version 3
-- Time taken: 0.000681 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local UrlBuilder_upvr = require(Parent.UrlBuilder).UrlBuilder
local HttpService_upvr = game:GetService("HttpService")
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2, arg3) -- Line 8
	--[[ Upvalues[3]:
		[1]: UrlBuilder_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	if type(arg2) == "string" and type(arg3) == "string" then
		local tbl = {}
		tbl.code = arg2
		tbl.privateKey = arg3
		return arg1(UrlBuilder_upvr.fromString("apis:auth-token-service/v1/login/status")(), "POST", {
			postBody = HttpService_upvr:JSONEncode(tbl);
		})
	end
	if type(arg2) ~= "string" then
		return Promise_upvr.reject("invalid login code")
	end
	return Promise_upvr.reject("invalid private key")
end