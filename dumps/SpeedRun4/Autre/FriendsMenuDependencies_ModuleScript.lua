-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:35
-- Luau version 6, Types version 3
-- Time taken: 0.000895 seconds

local Parent = script.Parent.Parent
local HttpRequest = require(Parent.HttpRequest)
local tbl = {}
local HttpRbxApi = HttpRequest.requestFunctions.HttpRbxApi
tbl.requestFunction = HttpRbxApi
if require(Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	HttpRbxApi = game:DefineFastInt("FriendsMenuHttpRetryCount", 4)
else
	HttpRbxApi = nil
end
tbl.maxRetryCount = HttpRbxApi
return {
	networkImpl = HttpRequest.config(tbl);
	sortFriendsByCorrectedPresenceAndRank = require(Parent.LuaSocialLibrariesDeps).SocialLibraries.config({}).User.sortFriendsByCorrectedPresenceAndRank;
}