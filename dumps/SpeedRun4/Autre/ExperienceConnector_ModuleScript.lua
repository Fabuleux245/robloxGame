-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:01
-- Luau version 6, Types version 3
-- Time taken: 0.003070 seconds

local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local Promise_upvr = require(GraphQLServer.Parent.Promise)
local GraphQLError_upvr = require(GraphQLServer.Parent.GraphQL).GraphQLError
local Fetch = require(GraphQLServer.Parent.Fetch)
local fetch_upvr = Fetch.fetch
local Response_upvr = Fetch.Response
local UrlBuilder = require(GraphQLServer.Parent.UrlBuilder).UrlBuilder
local module = {}
local any_fromString_result1_upvr = UrlBuilder.fromString("games:games?universeIds={universeIds}")
function module.findExperienceDetailsByUniverseId(arg1, arg2) -- Line 27
	--[[ Upvalues[5]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_fromString_result1_upvr (readonly)
		[4]: Response_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	if arg2 then
	else
	end
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 30
		--[[ Upvalues[5]:
			[1]: any_fromString_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: fetch_upvr (readonly)
			[4]: Response_upvr (copied, readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		tbl_2.universeIds = arg1
		local any_expect_result1_4 = fetch_upvr(any_fromString_result1_upvr(tbl_2), {
			method = "GET";
		}):catch(function() -- Line 33
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if not any_expect_result1_4.ok then
			arg2_2(GraphQLError_upvr.new(string.format("Failed to find experience for universeId: %s.", arg1)))
		else
			local any_expect_result1_3 = any_expect_result1_4:json():catch(function() -- Line 44
				return nil
			end):expect()
			if not any_expect_result1_3 then
				arg2_2(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for experience with universeId: %s.", arg1)))
				return
			end
			arg1_2(any_expect_result1_3.data[1])
		end
	end)
end
local any_new_result1_upvr = UrlBuilder.new({
	base = require(GraphQLServer.Parent.UrlBuilder).UrlBase.new("games", 2);
	path = "games/{universeId}/media";
})
function module.findExperienceMediaByUniverseId(arg1, arg2) -- Line 67
	--[[ Upvalues[5]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: Response_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	if arg2 then
	else
	end
	return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 70
		--[[ Upvalues[5]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: fetch_upvr (readonly)
			[4]: Response_upvr (copied, readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		local tbl = {}
		tbl.universeId = arg1
		local any_expect_result1_2 = fetch_upvr(any_new_result1_upvr(tbl), {
			method = "GET";
		}):catch(function() -- Line 73
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if not any_expect_result1_2.ok then
			arg2_3(GraphQLError_upvr.new(string.format("Failed to find experience media for universeId: %s.", arg1)))
		else
			local any_expect_result1 = any_expect_result1_2:json():catch(function() -- Line 84
				return nil
			end):expect()
			if not any_expect_result1 then
				arg2_3(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for experience media for universeId: %s.", arg1)))
				return
			end
			arg1_3(any_expect_result1.data)
		end
	end)
end
return module