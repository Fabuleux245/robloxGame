-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:07
-- Luau version 6, Types version 3
-- Time taken: 0.004684 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local UrlBuilder = require(Parent.UrlBuilder).UrlBuilder
local UrlBase = require(Parent.UrlBuilder).UrlBase
local Fetch = require(Parent.Fetch)
local Promise_upvr = require(Parent.Promise)
local fetch_upvr = Fetch.fetch
local Response_upvr = Fetch.Response
local HttpService_upvr = game:GetService("HttpService")
local any_new_result1_upvr_2 = UrlBuilder.new({
	base = UrlBase.APIS;
	path = "child-requests-api/v1/send-request-to-new-parent";
})
local VPCRequestTypeEnum_upvr = require(AmpUpsell.Common.Enums).VPCRequestTypeEnum
local any_new_result1_upvr = UrlBuilder.new({
	base = UrlBase.APIS;
	path = "child-requests-api/v1/send-request-to-all-parents";
})
local any_new_result1_upvr_3 = UrlBuilder.new({
	base = UrlBase.APIS;
	path = "user-settings-api/v1/account-insights/parent-emails";
})
return {
	sendRequestToNewParent = function(arg1, arg2, arg3) -- Line 32, Named "sendRequestToNewParent"
		--[[ Upvalues[6]:
			[1]: fetch_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: any_new_result1_upvr_2 (readonly)
			[4]: VPCRequestTypeEnum_upvr (readonly)
			[5]: HttpService_upvr (readonly)
			[6]: Response_upvr (readonly)
		]]
		return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 38
			--[[ Upvalues[8]:
				[1]: any_new_result1_upvr_2 (copied, readonly)
				[2]: arg2 (readonly)
				[3]: VPCRequestTypeEnum_upvr (copied, readonly)
				[4]: HttpService_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: arg3 (readonly)
				[7]: fetch_upvr (readonly)
				[8]: Response_upvr (copied, readonly)
			]]
			local var16
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var16 = VPCRequestTypeEnum_upvr.LinkToChild
				return var16
			end
			if arg2 ~= nil or not INLINED() then
				var16 = arg2[1]
			end
			local tbl_2 = {}
			tbl_2.email = arg1
			tbl_2.requestType = var16
			tbl_2.requestDetails = arg3
			local any_expect_result1_6 = fetch_upvr(any_new_result1_upvr_2(), {
				method = "POST";
				body = HttpService_upvr:JSONEncode(tbl_2);
				headers = {
					["Content-Type"] = "application/json";
					Accept = "application/json";
				};
			}):catch(function() -- Line 54
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				return Response_upvr.error()
			end):expect()
			local any_expect_result1_5 = any_expect_result1_6:json():catch(function() -- Line 61
				return nil
			end):expect()
			if not any_expect_result1_5 then
				arg2_2({
					message = string.format("Got send-request-to-new-parent HTTP response: %d", any_expect_result1_6.status);
				})
			else
				if not any_expect_result1_6.ok then
					arg2_2({
						code = any_expect_result1_5.code;
						message = any_expect_result1_5.message;
					})
					return
				end
				arg1_2({
					sessionId = any_expect_result1_5.sessionId;
					lockedUntil = any_expect_result1_5.lockedUntil;
				})
			end
		end)
	end;
	sendRequestToAllParents = function(arg1, arg2) -- Line 95, Named "sendRequestToAllParents"
		--[[ Upvalues[5]:
			[1]: fetch_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: any_new_result1_upvr (readonly)
			[4]: HttpService_upvr (readonly)
			[5]: Response_upvr (readonly)
		]]
		return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 97
			--[[ Upvalues[6]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: HttpService_upvr (copied, readonly)
				[4]: arg2 (readonly)
				[5]: fetch_upvr (readonly)
				[6]: Response_upvr (copied, readonly)
			]]
			local tbl = {
				requestType = arg1[1];
			}
			tbl.requestDetails = arg2
			local any_expect_result1 = fetch_upvr(any_new_result1_upvr(), {
				method = "POST";
				body = HttpService_upvr:JSONEncode(tbl);
				headers = {
					["Content-Type"] = "application/json";
					Accept = "application/json";
				};
			}):catch(function() -- Line 114
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				return Response_upvr.error()
			end):expect()
			local any_expect_result1_2 = any_expect_result1:json():catch(function() -- Line 121
				return nil
			end):expect()
			if not any_expect_result1_2 then
				arg2_3({
					message = string.format("Got send-request-to-all-parents HTTP response: %d", any_expect_result1.status);
				})
			else
				if not any_expect_result1.ok then
					arg2_3({
						code = any_expect_result1_2.code;
						message = any_expect_result1_2.message;
					})
					return
				end
				arg1_3({
					sessionId = any_expect_result1_2.sessionId;
					lockedUntil = any_expect_result1_2.lockedUntil;
				})
			end
		end)
	end;
	getLinkedParentEmails = function() -- Line 151, Named "getLinkedParentEmails"
		--[[ Upvalues[4]:
			[1]: fetch_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: any_new_result1_upvr_3 (readonly)
			[4]: Response_upvr (readonly)
		]]
		return Promise_upvr.new(function(arg1, arg2) -- Line 153
			--[[ Upvalues[3]:
				[1]: any_new_result1_upvr_3 (copied, readonly)
				[2]: fetch_upvr (readonly)
				[3]: Response_upvr (copied, readonly)
			]]
			local any_expect_result1_4 = fetch_upvr(any_new_result1_upvr_3(), {
				method = "GET";
			}):catch(function() -- Line 156
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				return Response_upvr.error()
			end):expect()
			if not any_expect_result1_4.ok then
				arg2(string.format("Got parent-emails HTTP Response: %d", any_expect_result1_4.status))
			else
				local any_expect_result1_3 = any_expect_result1_4:json():catch(function() -- Line 168
					return nil
				end):expect()
				if not any_expect_result1_3 then
					arg2("Failed to decode HTTP response as JSON for get linked parent emails")
					return
				end
				arg1({
					parentEmails = any_expect_result1_3.parentEmails;
				})
			end
		end)
	end;
}