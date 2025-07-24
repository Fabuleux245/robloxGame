-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:20
-- Luau version 6, Types version 3
-- Time taken: 0.002499 seconds

local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local FriendsConnector = require(GraphQLServer.graphql.connectors.FriendsConnector)
local function _(arg1) -- Line 20, Named "convertToStringWithDefault"
	if arg1 then
		return tostring(arg1)
	end
	return ""
end
local module = {
	UserPresence = {
		id = function(arg1) -- Line 26, Named "id"
			return arg1.id
		end;
		userPresenceType = function(arg1) -- Line 29, Named "userPresenceType"
			return arg1.userPresence.UserPresenceType
		end;
		gameId = function(arg1) -- Line 32, Named "gameId"
			local gameInstanceId = arg1.userPresence.gameInstanceId
			if gameInstanceId then
				return tostring(gameInstanceId)
			end
			return ""
		end;
		placeId = function(arg1) -- Line 35, Named "placeId"
			local placeId = arg1.userPresence.placeId
			if placeId then
				return tostring(placeId)
			end
			return ""
		end;
		rootPlaceId = function(arg1) -- Line 38, Named "rootPlaceId"
			local rootPlaceId = arg1.userPresence.rootPlaceId
			if rootPlaceId then
				return tostring(rootPlaceId)
			end
			return ""
		end;
		universeId = function(arg1) -- Line 41, Named "universeId"
			local universeId = arg1.userPresence.universeId
			if universeId then
				return tostring(universeId)
			end
			return ""
		end;
		lastLocation = function(arg1) -- Line 44, Named "lastLocation"
			return arg1.userPresence.lastLocation
		end;
		lastOnline = function(arg1) -- Line 47, Named "lastOnline"
			return arg1.userPresence.lastOnline
		end;
	};
}
local tbl_2 = {}
local function targetUserId(arg1, arg2, arg3, arg4) -- Line 52
	return arg4.variableValues.userId
end
tbl_2.targetUserId = targetUserId
local GraphQLError_upvr = require(GraphQLServer.Parent.GraphQL).GraphQLError
function tbl_2.displayName() -- Line 55
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	return GraphQLError_upvr.new("The displayName field is being deprecated, please use UserProfile to retrieve names")
end
function tbl_2.presence(arg1) -- Line 60
	return arg1
end
function tbl_2.hasVerifiedBadge(arg1) -- Line 63
	return false
end
module.Friend = tbl_2
module.AllFriendsPage = {
	targetUserId = function(arg1, arg2, arg3, arg4) -- Line 68, Named "targetUserId"
		return arg4.variableValues.userId
	end;
	curCursor = function(arg1, arg2, arg3, arg4) -- Line 71, Named "curCursor"
		return arg4.variableValues.pageCursor or ""
	end;
	nextCursor = function(arg1) -- Line 74, Named "nextCursor"
		return arg1.NextCursor or ""
	end;
	prevCursor = function(arg1) -- Line 77, Named "prevCursor"
		return arg1.PreviousCursor or ""
	end;
	friends = function(arg1) -- Line 80, Named "friends"
		local PageItems = arg1.PageItems
		if not PageItems then
			PageItems = {}
		end
		return PageItems
	end;
}
local tbl = {}
local getAllFriendsByUserId_upvr = FriendsConnector.getAllFriendsByUserId
function tbl.allFriendsByUserId(arg1, arg2, arg3) -- Line 85
	--[[ Upvalues[1]:
		[1]: getAllFriendsByUserId_upvr (readonly)
	]]
	return getAllFriendsByUserId_upvr(arg2, arg3.fetchImpl)
end
local getOnlineFriendsByUserId_upvr = FriendsConnector.getOnlineFriendsByUserId
function tbl.onlineFriendsByUserId(arg1, arg2, arg3) -- Line 88
	--[[ Upvalues[1]:
		[1]: getOnlineFriendsByUserId_upvr (readonly)
	]]
	return getOnlineFriendsByUserId_upvr(arg2, arg3.fetchImpl)
end
module.Query = tbl
return module