-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:05
-- Luau version 6, Types version 3
-- Time taken: 0.001860 seconds

local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local Parent = GraphQLServer.Parent
local Fetch = require(Parent.Fetch)
local fetch_upvr = Fetch.fetch
local Promise_upvr = require(Parent.Promise)
local var7_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.Http).Url.APIS_URL;
	path = "user-profile-api/v1/user/profiles/get-profiles";
})()
local HttpService_upvr = game:GetService("HttpService")
local FFlagUserProfileBetterErrors_upvr = require(GraphQLServer.Flags.FFlagUserProfileBetterErrors)
local Response_upvr = Fetch.Response
local GraphQLError_upvr = require(Parent.GraphQL).GraphQLError
return {
	fetchProfilesByIds = function(arg1, arg2, arg3) -- Line 33, Named "fetchProfilesByIds"
		--[[ Upvalues[7]:
			[1]: fetch_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: var7_upvr (readonly)
			[4]: HttpService_upvr (readonly)
			[5]: FFlagUserProfileBetterErrors_upvr (readonly)
			[6]: Response_upvr (readonly)
			[7]: GraphQLError_upvr (readonly)
		]]
		if arg3 then
		else
		end
		return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 39
			--[[ Upvalues[8]:
				[1]: fetch_upvr (readonly)
				[2]: var7_upvr (copied, readonly)
				[3]: HttpService_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: arg2 (readonly)
				[6]: FFlagUserProfileBetterErrors_upvr (copied, readonly)
				[7]: Response_upvr (copied, readonly)
				[8]: GraphQLError_upvr (copied, readonly)
			]]
			local tbl = {}
			local tbl_2 = {}
			tbl_2.UserIds = arg1
			tbl_2.Fields = arg2
			tbl.body = HttpService_upvr:JSONEncode(tbl_2)
			tbl.method = "POST"
			tbl.headers = {
				["Content-Type"] = "application/json";
				Accept = "application/json";
			}
			local any_expect_result1 = fetch_upvr(var7_upvr, tbl):catch(function(arg1_3) -- Line 51
				--[[ Upvalues[2]:
					[1]: FFlagUserProfileBetterErrors_upvr (copied, readonly)
					[2]: Response_upvr (copied, readonly)
				]]
				if FFlagUserProfileBetterErrors_upvr then
					local any_error_result1 = Response_upvr.error()
					any_error_result1.statusText = arg1_3.message
					return any_error_result1
				end
				return Response_upvr.error()
			end):expect()
			if not any_expect_result1.ok then
				if FFlagUserProfileBetterErrors_upvr then
					arg2_2(GraphQLError_upvr.new(any_expect_result1.statusText, nil, nil, nil, nil, {
						extensions = {
							status = any_expect_result1.status;
							statusText = any_expect_result1.statusText;
						};
					}))
				else
					arg2_2(GraphQLError_upvr.new(`Failed to fetch user profiles. Error code: {any_expect_result1.status}`))
				end
			end
			if not any_expect_result1 then
				arg2_2(GraphQLError_upvr.new(`Failed to decode HTTP response as JSON for user matching id: {arg1[1]}`))
			else
				arg1_2(any_expect_result1:json():catch(function() -- Line 82
					return nil
				end):expect().profileDetails)
			end
		end)
	end;
}