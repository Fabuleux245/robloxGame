-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:07
-- Luau version 6, Types version 3
-- Time taken: 0.000955 seconds

local Parent = script.Parent.Parent.Parent
local LuaSocialLibrariesDeps = require(Parent.LuaSocialLibrariesDeps)
local httpRequest_upvr = LuaSocialLibrariesDeps.httpRequest
local any_new_result1_upvr = require(Parent.Lumberyak).Logger.new(nil, "ShareGame"):new("ShareGame Networking")
local any_config_result1 = LuaSocialLibrariesDeps.RoduxNetworking.config({
	keyPath = "NetworkStatus";
	networkImpl = httpRequest_upvr.config({
		requestFunction = function(arg1, arg2, arg3) -- Line 17, Named "requestFunction"
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (readonly)
				[2]: httpRequest_upvr (readonly)
			]]
			any_new_result1_upvr:info("Fetching: {}", string.format("[ requestMethod = %q, url = %q ]", arg2, arg1))
			return httpRequest_upvr.requestFunctions.HttpRbxApi(arg1, arg2, arg3)
		end;
		postRequestFunction = function(arg1, arg2) -- Line 21, Named "postRequestFunction"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:debug("Returned: {}", string.format("[ requestMethod = %q, url = %q, statusCode = %s, body = %s ]", arg2.requestMethod, arg2.url, arg1.StatusCode, arg1.Body))
		end;
		maxRetryCount = game:DefineFastInt("ShareGameHttpRetryCount", 3);
	});
})
return {
	ShareLinksRodux = require(Parent.ShareLinksRodux).config({
		keyPath = "ShareGame.ShareLinks";
	});
	RoduxNetworking = any_config_result1;
	ShareLinksNetworking = require(Parent.ShareLinksNetworking).config({
		roduxNetworking = any_config_result1;
	});
}