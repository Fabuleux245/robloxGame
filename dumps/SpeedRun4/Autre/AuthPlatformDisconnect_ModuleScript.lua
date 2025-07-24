-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:40
-- Luau version 6, Types version 3
-- Time taken: 0.000567 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local getSingleSignOnUrls_upvr = require(AuthCommon.Utils.getSingleSignOnUrls)
local ConsoleAuthRequestWrapper_upvr = require(Parent.Http).Utils.ConsoleAuthRequestWrapper
local Promise_upvr = require(Parent.Promise)
return function(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: getSingleSignOnUrls_upvr (readonly)
		[2]: ConsoleAuthRequestWrapper_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local disconnect = getSingleSignOnUrls_upvr().disconnect
	if disconnect then
		return ConsoleAuthRequestWrapper_upvr(arg1, disconnect(), "POST", {
			postBody = "";
			maxRetryCount = 0;
		})
	end
	return Promise_upvr.reject({})
end