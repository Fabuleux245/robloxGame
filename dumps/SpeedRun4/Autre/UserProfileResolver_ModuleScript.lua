-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:24
-- Luau version 6, Types version 3
-- Time taken: 0.001627 seconds

local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local module = {}
local tbl_2 = {
	id = function(arg1) -- Line 16, Named "id"
		return tostring(arg1.userId)
	end;
}
local GraphQLError_upvr = require(GraphQLServer.Parent.GraphQL).GraphQLError
function tbl_2.displayName() -- Line 19
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	return GraphQLError_upvr.new("The displayName field is not available on the UserProfile implementation of User, please use the names field instead")
end
module.UserProfile = tbl_2
local tbl = {}
local formatUserProfileFields_upvr = require(GraphQLServer.graphql.utils.formatUserProfileFields)
local FFlagUserProfileBetterErrors_upvr = require(GraphQLServer.Flags.FFlagUserProfileBetterErrors)
function tbl.userProfiles(arg1, arg2, arg3, arg4) -- Line 26
	--[[ Upvalues[2]:
		[1]: formatUserProfileFields_upvr (readonly)
		[2]: FFlagUserProfileBetterErrors_upvr (readonly)
	]]
	return arg3.dataLoaders.userProfiles:getLoader(arg3.fetchImpl, formatUserProfileFields_upvr(arg4, arg3.collectSubFieldsImpl)):loadMany(arg2.userIds):andThen(function(arg1_2) -- Line 31
		local var9 = arg1_2
		if not var9 then
			var9 = {}
		end
		return var9
	end):catch(function(arg1_3) -- Line 34
		--[[ Upvalues[1]:
			[1]: FFlagUserProfileBetterErrors_upvr (copied, readonly)
		]]
		if FFlagUserProfileBetterErrors_upvr then
			return arg1_3
		end
		return {}
	end)
end
module.Query = tbl
return module