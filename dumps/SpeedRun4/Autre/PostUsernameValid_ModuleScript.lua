-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:49
-- Luau version 6, Types version 3
-- Time taken: 0.001423 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local UsernameValidationContext_upvr = require(AuthCommon.Enums.UsernameValidationContext)
local UrlBuilder_upvr = require(AuthCommon.Parent.UrlBuilder).UrlBuilder
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3, arg4) -- Line 12
	--[[ Upvalues[3]:
		[1]: UsernameValidationContext_upvr (readonly)
		[2]: UrlBuilder_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	if not arg4 then
	end
	if type(arg2) ~= "string" then
	else
	end
	assert(true, "invalid username")
	if type(arg3) ~= "string" then
	else
	end
	assert(true, "invalid birthday")
	local tbl = {}
	tbl.username = arg2
	tbl.birthday = arg3
	tbl.context = UsernameValidationContext_upvr.Unknown
	return arg1(UrlBuilder_upvr.fromString("auth:v2/usernames/validate")(), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	})
end