-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:56
-- Luau version 6, Types version 3
-- Time taken: 0.000906 seconds

local Parent = script:FindFirstAncestor("GameInvite").Parent
local HttpRequest = require(Parent.HttpRequest)
local tbl = {}
local RequestInternal = HttpRequest.requestFunctions.RequestInternal
tbl.requestFunction = RequestInternal
if require(Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	RequestInternal = game:DefineFastInt("GetRewardMetadataHttpRetryCount", 4)
else
	RequestInternal = nil
end
tbl.maxRetryCount = RequestInternal
local Promise_upvr = require(Parent.Promise)
local Url_upvr = require(Parent.Http).Url
local any_config_result1_upvr = HttpRequest.config(tbl)
return function() -- Line 14
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: any_config_result1_upvr (readonly)
	]]
	if game.GameId == nil or game.GameId == 0 then
		return Promise_upvr.reject("GameId is nil or 0")
	end
	return any_config_result1_upvr(string.format("%sreferral-reward-metadata/v1/get-reward-metadata?%s", Url_upvr.APIS_URL, Url_upvr:makeQueryString({
		UniverseId = game.GameId;
	})), "GET")
end