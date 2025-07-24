-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:01
-- Luau version 6, Types version 3
-- Time taken: 0.004622 seconds

local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local UrlBuilder = require(GraphQLServer.Parent.UrlBuilder).UrlBuilder
local UrlBase = require(GraphQLServer.Parent.UrlBuilder).UrlBase
local Promise_upvr = require(GraphQLServer.Parent.Promise)
local GraphQLError_upvr = require(GraphQLServer.Parent.GraphQL).GraphQLError
local Fetch = require(GraphQLServer.Parent.Fetch)
local fetch_upvr = Fetch.fetch
local Response_upvr = Fetch.Response
local SocialLuaAnalytics = require(GraphQLServer.Parent.SocialLuaAnalytics)
local reportPromiseLoadingTimeWrapper = SocialLuaAnalytics.Analytics.Timing.reportPromiseLoadingTimeWrapper
local any_new_result1_upvr = UrlBuilder.new({
	base = UrlBase.FRIENDS;
	path = "users/{userId}/friends/find";
	query = {{
		name = "limit";
		value = "{limit}";
		optional = false;
	}, {
		name = "userSort";
		value = "{userSort}";
		optional = true;
	}, {
		name = "cursor";
		value = "{cursor}";
		optional = true;
	}};
})
local any_new_result1_upvr_2 = UrlBuilder.new({
	base = UrlBase.FRIENDS;
	path = "users/{userId}/friends/online";
	query = {{
		name = "userSort";
		value = "{userSort}";
		optional = true;
	}};
})
local createDiagMetricString_upvr = SocialLuaAnalytics.Analytics.Formatters.createDiagMetricString
local getPlatformSuffix_upvr = SocialLuaAnalytics.Analytics.FireEvent.getPlatformSuffix
local PlatformSpecificity_upvr = SocialLuaAnalytics.Analytics.Enums.PlatformSpecificity
local Diag_upvr = SocialLuaAnalytics.Analytics.DefaultAnalyticsService.Diag
local function fireLoadingEvent(arg1, arg2, arg3) -- Line 177
	--[[ Upvalues[4]:
		[1]: createDiagMetricString_upvr (readonly)
		[2]: getPlatformSuffix_upvr (readonly)
		[3]: PlatformSpecificity_upvr (readonly)
		[4]: Diag_upvr (readonly)
	]]
	Diag_upvr:reportStats(createDiagMetricString_upvr(arg1, arg2)..getPlatformSuffix_upvr(PlatformSpecificity_upvr.BucketsOnly), arg3)
end
return {
	getAllFriendsByUserId = reportPromiseLoadingTimeWrapper(function(arg1, arg2) -- Line 86, Named "getAllFriendsByUserId"
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
		return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 89
			--[[ Upvalues[5]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: fetch_upvr (readonly)
				[4]: Response_upvr (copied, readonly)
				[5]: GraphQLError_upvr (copied, readonly)
			]]
			local any_expect_result1_2 = fetch_upvr(any_new_result1_upvr({
				userId = arg1.userId;
				limit = arg1.pageLimit or 50;
				cursor = arg1.pageCursor;
				userSort = arg1.sort;
			}), {
				method = "GET";
			}):catch(function(arg1_3) -- Line 98
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				local any_error_result1_2 = Response_upvr.error()
				any_error_result1_2.statusText = arg1_3.message
				return any_error_result1_2
			end):expect()
			if not any_expect_result1_2.ok then
				arg2_2(GraphQLError_upvr.new(any_expect_result1_2.statusText, nil, nil, nil, nil, {
					extensions = {
						status = any_expect_result1_2.status;
						statusText = any_expect_result1_2.statusText;
					};
				}))
			else
				local any_expect_result1 = any_expect_result1_2:json():catch(function() -- Line 117
					return nil
				end):expect()
				if not any_expect_result1 then
					arg2_2(GraphQLError_upvr.new("Failed to decode HTTP response as JSON for friends API"))
					return
				end
				arg1_2(any_expect_result1)
			end
		end)
	end, function(arg1) -- Line 185
		local module = {
			fetch = "friends_find";
		}
		local pageCursor = arg1.pageCursor
		if pageCursor then
			if arg1.pageCursor == "" then
				pageCursor = false
			else
				pageCursor = true
			end
		end
		module.nextPage = pageCursor
		return module
	end, {
		fireEvent = fireLoadingEvent;
	});
	getOnlineFriendsByUserId = reportPromiseLoadingTimeWrapper(function(arg1, arg2) -- Line 132, Named "getOnlineFriendsByUserId"
		--[[ Upvalues[5]:
			[1]: fetch_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: any_new_result1_upvr_2 (readonly)
			[4]: Response_upvr (readonly)
			[5]: GraphQLError_upvr (readonly)
		]]
		if arg2 then
		else
		end
		return Promise_upvr.new(function(arg1_4, arg2_3) -- Line 135
			--[[ Upvalues[5]:
				[1]: any_new_result1_upvr_2 (copied, readonly)
				[2]: arg1 (readonly)
				[3]: fetch_upvr (readonly)
				[4]: Response_upvr (copied, readonly)
				[5]: GraphQLError_upvr (copied, readonly)
			]]
			local any_expect_result1_3 = fetch_upvr(any_new_result1_upvr_2({
				userId = arg1.userId;
				userSort = arg1.sort;
			}), {
				method = "GET";
			}):catch(function(arg1_5) -- Line 142
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				local any_error_result1 = Response_upvr.error()
				any_error_result1.statusText = arg1_5.message
				return any_error_result1
			end):expect()
			if not any_expect_result1_3.ok then
				arg2_3(GraphQLError_upvr.new(any_expect_result1_3.statusText, nil, nil, nil, nil, {
					extensions = {
						status = any_expect_result1_3.status;
						statusText = any_expect_result1_3.statusText;
					};
				}))
			else
				local any_expect_result1_4 = any_expect_result1_3:json():catch(function() -- Line 161
					return nil
				end):expect()
				if not any_expect_result1_4 then
					arg2_3(GraphQLError_upvr.new("Failed to decode HTTP response as JSON for friends API"))
					return
				end
				local data = any_expect_result1_4.data
				if not data then
					data = {}
				end
				arg1_4(data)
			end
		end)
	end, function(arg1) -- Line 193
		return {
			fetch = "friends_online";
		}
	end, {
		fireEvent = fireLoadingEvent;
	});
}