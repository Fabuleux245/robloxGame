-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:03
-- Luau version 6, Types version 3
-- Time taken: 0.001967 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local module = {}
local fetch_upvr = require(Parent.Fetch).fetch
local Promise_upvr = require(Parent.Promise)
local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.UrlBuilder).UrlBase.new("thumbnails", 1);
	path = "users/avatar-headshot";
	query = {
		userIds = "{userIds}";
		size = "48x48";
		format = "Png";
		isCircular = "true";
	};
})
local GraphQLError_upvr = require(Parent.GraphQL).GraphQLError
function module.findAvatarHeadshotById(arg1, arg2) -- Line 25
	--[[ Upvalues[4]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: GraphQLError_upvr (readonly)
	]]
	if arg2 then
	else
	end
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 28
		--[[ Upvalues[4]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: fetch_upvr (readonly)
			[4]: GraphQLError_upvr (copied, readonly)
		]]
		local tbl = {}
		tbl.userIds = arg1
		local any_expect_result1_2 = fetch_upvr(any_new_result1_upvr(tbl), {
			method = "GET";
		}):expect()
		if not any_expect_result1_2.ok then
			arg2_2(GraphQLError_upvr.new(string.format("Http error occurred while trying to fetch avatarHeadshot for user %s.", arg1)))
		else
			local any_expect_result1 = any_expect_result1_2:json():catch(function() -- Line 48
				return nil
			end):expect()
			if not any_expect_result1 then
				arg2_2(GraphQLError_upvr.new(string.format("Failed to parse avatarHeadshot HttpResponse for user %s.", arg1)))
				return
			end
			arg1_2(any_expect_result1.data[1].imageUrl)
		end
	end)
end
return module