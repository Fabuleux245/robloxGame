-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:02
-- Luau version 6, Types version 3
-- Time taken: 0.002334 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local Object_upvr = require(Parent.LuauPolyfill).Object
local Promise_upvr = require(Parent.Promise)
local module = {}
local Fetch = require(Parent.Fetch)
local fetch_upvr = Fetch.fetch
local Response_upvr = Fetch.Response
local GraphQLError_upvr = require(Parent.GraphQL).GraphQLError
local buildOmniRecommendationsRequest_upvr = require(script.Parent.buildOmniRecommendationsRequest)
local any_fromString_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.fromString("apis:discovery-api/omni-recommendation-metadata")
local HttpService_upvr = game:GetService("HttpService")
function module.findOmniFeedBySessionId(arg1, arg2) -- Line 52
	--[[ Upvalues[6]:
		[1]: fetch_upvr (readonly)
		[2]: buildOmniRecommendationsRequest_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: Response_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
		[6]: Object_upvr (readonly)
	]]
	if arg2 then
	else
	end
	local buildOmniRecommendationsRequest_upvr_result1_upvr = buildOmniRecommendationsRequest_upvr(fetch_upvr)
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 59
		--[[ Upvalues[5]:
			[1]: buildOmniRecommendationsRequest_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Response_upvr (copied, readonly)
			[4]: GraphQLError_upvr (copied, readonly)
			[5]: Object_upvr (copied, readonly)
		]]
		local any_expect_result1_2 = buildOmniRecommendationsRequest_upvr_result1_upvr(arg1.pageType, arg1.sessionId, arg1.nextPageToken, arg1.supportedTreatmentTypes):catch(function() -- Line 65
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if not any_expect_result1_2.ok then
			arg2_2(GraphQLError_upvr.new(string.format("Failed to fetch omni recommendations. Error code: %d", any_expect_result1_2.status)))
			return nil
		end
		local any_expect_result1 = any_expect_result1_2:json():catch(function() -- Line 80
			return nil
		end):expect()
		if not any_expect_result1 then
			arg2_2(GraphQLError_upvr.new("Failed to decode HTTP response as JSON for omni-recommendation fetch"))
		end
		arg1_2(Object_upvr.assign({
			omniSessionId = arg1.sessionId;
			pageType = arg1.pageType;
		}, any_expect_result1))
		return nil
	end)
end
function module.fetchMoreOmniRecommendationMetadata(arg1, arg2) -- Line 100
	--[[ Upvalues[7]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_fromString_result1_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: Response_upvr (readonly)
		[6]: GraphQLError_upvr (readonly)
		[7]: Object_upvr (readonly)
	]]
	if arg2 then
	else
	end
	return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 103
		--[[ Upvalues[7]:
			[1]: any_fromString_result1_upvr (copied, readonly)
			[2]: fetch_upvr (readonly)
			[3]: HttpService_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Response_upvr (copied, readonly)
			[6]: GraphQLError_upvr (copied, readonly)
			[7]: Object_upvr (copied, readonly)
		]]
		local any_expect_result1_3 = fetch_upvr(any_fromString_result1_upvr(), {
			body = HttpService_upvr:JSONEncode({
				sessionId = arg1.sessionId;
				contents = arg1.recommendations;
			});
			method = "POST";
			headers = {
				["Content-Type"] = "application/json";
				Accept = "application/json";
			};
		}):catch(function() -- Line 117
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if not any_expect_result1_3.ok then
			arg2_3(GraphQLError_upvr.new(string.format("Failed to fetch additional metadata for topicId: %s", arg1.topicId)))
		else
			local any_expect_result1_4 = any_expect_result1_3:json():catch(function() -- Line 129
				return nil
			end):expect()
			if not any_expect_result1_4 then
				arg2_3(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for topicId: %s", arg1.topicId)))
				return
			end
			arg1_3(Object_upvr.assign(any_expect_result1_4, {
				topicId = arg1.topicId;
				recommendations = arg1.recommendations;
			}))
		end
	end)
end
return module