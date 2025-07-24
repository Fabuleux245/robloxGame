-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:10
-- Luau version 6, Types version 3
-- Time taken: 0.000991 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local LuaSocialLibrariesDeps = require(Parent.LuaSocialLibrariesDeps)
local httpRequest_upvr = LuaSocialLibrariesDeps.httpRequest
local any_new_result1_upvr = require(Parent.Lumberyak).Logger.new(nil, require(Parent_2.Constants).LoggerKey)
local any_config_result1 = LuaSocialLibrariesDeps.RoduxNetworking.config({
	keyPath = "NetworkStatus";
	networkImpl = httpRequest_upvr.config({
		requestFunction = function(arg1, arg2, arg3) -- Line 17, Named "requestFunction"
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (readonly)
				[2]: httpRequest_upvr (readonly)
			]]
			any_new_result1_upvr:debug(`Request: [ requestMethod = {arg2}, url = {arg1} ]`)
			return httpRequest_upvr.requestFunctions.HttpRbxApi(arg1, arg2, arg3)
		end;
		postRequestFunction = function(arg1, arg2) -- Line 22, Named "postRequestFunction"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:debug(`Response: [ requestMethod = {arg2.requestMethod}, url = {arg2.url}, statusCode = {arg1.StatusCode}, body = {arg1.Body} ]`)
		end;
		maxRetryCount = game:DefineFastInt("CapturesMaxHttpRequestRetries", 2);
		maxWaitTime = game:DefineFastInt("CapturesMaxHttpRequestWaitTime", 8);
	});
})
return {
	RoduxNetworking = any_config_result1;
	ShareLinksNetworking = require(Parent.ShareLinksNetworking).config({
		roduxNetworking = any_config_result1;
	});
	ShareLinksRodux = require(Parent.ShareLinksRodux).config({
		keyPath = "ShareLinks";
	});
}