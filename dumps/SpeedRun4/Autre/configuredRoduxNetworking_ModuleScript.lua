-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:09
-- Luau version 6, Types version 3
-- Time taken: 0.001344 seconds

local ProfileShareLinks = script:FindFirstAncestor("ProfileShareLinks")
local Parent = ProfileShareLinks.Parent
local LuaSocialLibrariesDeps = require(Parent.LuaSocialLibrariesDeps)
local httpRequest_upvr = LuaSocialLibrariesDeps.httpRequest
local any_new_result1_upvr = require(Parent.Lumberyak).Logger.new(nil, "ProfileShareLinks"):new("ProfileShareLinks Networking")
return LuaSocialLibrariesDeps.RoduxNetworking.config({
	keyPath = require(ProfileShareLinks.Common.Constants).RODUX_KEY..".NetworkStatus";
	networkImpl = httpRequest_upvr.config({
		requestFunction = function(arg1, arg2, arg3) -- Line 14, Named "requestFunction"
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (readonly)
				[2]: httpRequest_upvr (readonly)
			]]
			any_new_result1_upvr:info("Fetching: {}", string.format("[ requestMethod = %q, url = %q ]", arg2, arg1))
			return httpRequest_upvr.requestFunctions.RequestInternal(arg1, arg2, arg3)
		end;
		postRequestFunction = function(arg1, arg2) -- Line 18, Named "postRequestFunction"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:debug("Returned: {}", string.format("[ requestMethod = %q, url = %q, statusCode = %s, body = %s ]", arg2.requestMethod, arg2.url, arg1.StatusCode, arg1.Body))
		end;
		maxRetryCount = game:DefineFastInt("ProfileShareLinksHttpRetryCount", 3);
	});
})