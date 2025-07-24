-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:04
-- Luau version 6, Types version 3
-- Time taken: 0.004531 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local FFlagProfileInsightsUpdateGql_upvr = require(Parent.SharedFlags).FFlagProfileInsightsUpdateGql
local tbl_6_upvr = {
	base = require(Parent.UrlBuilder).UrlBase.APIS;
	path = "profile-insights-api/v1/multiProfileInsights";
}
if FFlagProfileInsightsUpdateGql_upvr then
	local fetch_upvr = require(Parent.Fetch).fetch
	local Promise_upvr = require(Parent.Promise)
	local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new(tbl_6_upvr)
	local HttpService_upvr = game:GetService("HttpService")
	local Response_upvr = require(Parent.Fetch).Response
	local GraphQLError_upvr = require(Parent.GraphQL).GraphQLError
	function tbl_6_upvr(arg1, arg2, arg3, arg4) -- Line 106
		--[[ Upvalues[6]:
			[1]: fetch_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: any_new_result1_upvr (readonly)
			[4]: HttpService_upvr (readonly)
			[5]: Response_upvr (readonly)
			[6]: GraphQLError_upvr (readonly)
		]]
		if arg4 then
		else
		end
		return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 114
			--[[ Upvalues[8]:
				[1]: fetch_upvr (readonly)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: HttpService_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: arg3 (readonly)
				[6]: arg2 (readonly)
				[7]: Response_upvr (copied, readonly)
				[8]: GraphQLError_upvr (copied, readonly)
			]]
			local tbl = {}
			local tbl_4 = {}
			local var14 = arg1
			tbl_4.userIds = var14
			if arg3 then
				var14 = nil
			else
				var14 = arg2 or 2
			end
			tbl_4.count = var14
			tbl_4.rankingStrategy = arg3
			tbl.body = HttpService_upvr:JSONEncode(tbl_4)
			tbl.method = "POST"
			tbl.headers = {
				["Content-Type"] = "application/json";
				Accept = "application/json";
			}
			local any_expect_result1_2 = fetch_upvr(any_new_result1_upvr(), tbl):catch(function() -- Line 128
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				return Response_upvr.error()
			end):expect()
			if not any_expect_result1_2.ok then
				arg2_2(GraphQLError_upvr.new(string.format("Failed to fetch profile insights. Error code: %d", any_expect_result1_2.status)))
			else
				local any_expect_result1_3 = any_expect_result1_2:json():catch(function() -- Line 147
					return nil
				end):expect()
				if not any_expect_result1_3 then
					arg2_2(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for profile insights: %s.", HttpService_upvr:JSONEncode(arg1))))
					return
				end
				arg1_2(any_expect_result1_3.userInsights)
			end
		end)
	end
else
	tbl_6_upvr = function(arg1, arg2, arg3) -- Line 168
		--[[ Upvalues[6]:
			[1]: fetch_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: any_new_result1_upvr (readonly)
			[4]: HttpService_upvr (readonly)
			[5]: Response_upvr (readonly)
			[6]: GraphQLError_upvr (readonly)
		]]
		if arg3 then
		else
		end
		return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 171
			--[[ Upvalues[7]:
				[1]: fetch_upvr (readonly)
				[2]: any_new_result1_upvr (copied, readonly)
				[3]: HttpService_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: arg2 (readonly)
				[6]: Response_upvr (copied, readonly)
				[7]: GraphQLError_upvr (copied, readonly)
			]]
			local tbl_2 = {}
			local tbl_3 = {}
			tbl_3.userIds = arg1
			tbl_3.count = arg2 or 2
			tbl_2.body = HttpService_upvr:JSONEncode(tbl_3)
			tbl_2.method = "POST"
			local tbl_5 = {}
			tbl_5["Content-Type"] = "application/json"
			tbl_5.Accept = "application/json"
			tbl_2.headers = tbl_5
			local any_expect_result1 = fetch_upvr(any_new_result1_upvr(), tbl_2):catch(function() -- Line 183
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				return Response_upvr.error()
			end):expect()
			if not any_expect_result1.ok then
				arg2_3(GraphQLError_upvr.new(string.format("Failed to fetch profile insights. Error code: %d", any_expect_result1.status)))
				return
			end
			local any_expect_result1_4 = any_expect_result1:json():catch(function() -- Line 202
				return nil
			end):expect()
			if not any_expect_result1_4 then
				arg2_3(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for profile insights: %s.", HttpService_upvr:JSONEncode(arg1))))
				return
			end
			arg1_3(any_expect_result1_4.userInsights)
		end)
	end
end
return {
	findProfileInsightsByUserIds = tbl_6_upvr;
	findProfileInsightsByUserIdsFeed = function(arg1, arg2, arg3, arg4) -- Line 224, Named "findProfileInsightsByUserIdsFeed"
		--[[ Upvalues[2]:
			[1]: FFlagProfileInsightsUpdateGql_upvr (readonly)
			[2]: tbl_6_upvr (readonly)
		]]
		if FFlagProfileInsightsUpdateGql_upvr then
			return tbl_6_upvr(arg1, arg2, nil, arg4):andThen(function(arg1_4) -- Line 231
				--[[ Upvalues[1]:
					[1]: arg3 (readonly)
				]]
				local module_2 = {}
				module_2.pageId = arg3
				module_2.profileInsights = arg1_4
				return module_2
			end)
		end
		return tbl_6_upvr(arg1, arg2, arg4):andThen(function(arg1_5) -- Line 237
			--[[ Upvalues[1]:
				[1]: arg3 (readonly)
			]]
			local module = {}
			module.pageId = arg3
			module.profileInsights = arg1_5
			return module
		end)
	end;
}