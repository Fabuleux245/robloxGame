-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:04
-- Luau version 6, Types version 3
-- Time taken: 0.002336 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local UrlBuilder = require(Parent.UrlBuilder)
local Fetch = require(Parent.Fetch)
local fetch_upvr = Fetch.fetch
local HttpService_upvr = game:GetService("HttpService")
local Promise_upvr = require(Parent.Promise)
local var8_upvr = UrlBuilder.UrlBuilder.new({
	base = UrlBuilder.UrlBase.APIS;
	path = "sharelinks/v1/get-or-create-link";
})()
local Response_upvr = Fetch.Response
local GraphQLError_upvr = require(Parent.GraphQL).GraphQLError
return {
	fetchShareLink = function(arg1, arg2) -- Line 40, Named "fetchShareLink"
		--[[ Upvalues[6]:
			[1]: fetch_upvr (readonly)
			[2]: HttpService_upvr (readonly)
			[3]: Promise_upvr (readonly)
			[4]: var8_upvr (readonly)
			[5]: Response_upvr (readonly)
			[6]: GraphQLError_upvr (readonly)
		]]
		if arg2 then
		else
		end
		local any_JSONEncode_result1_upvr = HttpService_upvr:JSONEncode({
			linkType = arg1.linkType;
			data = HttpService_upvr:JSONEncode(arg1.data);
		})
		return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 50
			--[[ Upvalues[5]:
				[1]: fetch_upvr (readonly)
				[2]: var8_upvr (copied, readonly)
				[3]: any_JSONEncode_result1_upvr (readonly)
				[4]: Response_upvr (copied, readonly)
				[5]: GraphQLError_upvr (copied, readonly)
			]]
			local any_expect_result1 = fetch_upvr(var8_upvr, {
				body = any_JSONEncode_result1_upvr;
				method = "POST";
				headers = {
					["Content-Type"] = "application/json";
					Accept = "application/json";
				};
			}):catch(function(arg1_3) -- Line 59
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				local any_error_result1 = Response_upvr.error()
				any_error_result1.statusText = arg1_3.message
				return any_error_result1
			end):expect()
			if not any_expect_result1.ok then
				print(any_expect_result1.statusText..' '..any_expect_result1.status)
				arg2_2(GraphQLError_upvr.new(any_expect_result1.statusText, nil, nil, nil, nil, {
					extensions = {
						status = any_expect_result1.status;
						statusText = any_expect_result1.statusText;
					};
				}))
			else
				if not any_expect_result1 then
					arg2_2(GraphQLError_upvr.new(`Failed to decode HTTP response as JSON for share link matching type: {type}`))
					return
				end
				arg1_2(any_expect_result1:json():catch(function() -- Line 83
					return nil
				end):expect())
			end
		end)
	end;
}