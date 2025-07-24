-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:04
-- Luau version 6, Types version 3
-- Time taken: 0.004532 seconds

local Parent = script:FindFirstAncestor("AmpUpsell").Parent
local UrlBuilder = require(Parent.UrlBuilder).UrlBuilder
local UrlBase = require(Parent.UrlBuilder).UrlBase
local Fetch = require(Parent.Fetch)
local Promise_upvr = require(Parent.Promise)
local fetch_upvr = Fetch.fetch
local Response_upvr = Fetch.Response
local any_new_result1_upvr = UrlBuilder.new({
	base = UrlBase.APIS;
	path = "age-verification-service/v1/persona-id-verification/verified-status";
	query = {
		token = "{token}";
	};
})
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableAmpFAEUpsellNextStepSupport", false)
local any_new_result1_upvr_2 = UrlBuilder.new({
	base = UrlBase.APIS;
	path = "age-verification-service/v1/persona-id-verification/start-verification";
})
local HttpService_upvr = game:GetService("HttpService")
local FFlagEnableAmpFAEUpsellSupport_upvr = require(Parent.SharedFlags).FFlagEnableAmpFAEUpsellSupport
local Cryo_upvr = require(Parent.Cryo)
return {
	startVerification = function(arg1) -- Line 78, Named "startVerification"
		--[[ Upvalues[7]:
			[1]: fetch_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: any_new_result1_upvr_2 (readonly)
			[4]: HttpService_upvr (readonly)
			[5]: FFlagEnableAmpFAEUpsellSupport_upvr (readonly)
			[6]: Cryo_upvr (readonly)
			[7]: Response_upvr (readonly)
		]]
		return Promise_upvr.new(function(arg1_3, arg2) -- Line 80
			--[[ Upvalues[7]:
				[1]: any_new_result1_upvr_2 (copied, readonly)
				[2]: fetch_upvr (readonly)
				[3]: HttpService_upvr (copied, readonly)
				[4]: FFlagEnableAmpFAEUpsellSupport_upvr (copied, readonly)
				[5]: Cryo_upvr (copied, readonly)
				[6]: arg1 (readonly)
				[7]: Response_upvr (copied, readonly)
			]]
			local tbl = {
				method = "POST";
			}
			local var28
			if FFlagEnableAmpFAEUpsellSupport_upvr then
				var28 = Cryo_upvr.Dictionary.join
				local var30 = arg1
				if not var30 then
					var30 = {}
				end
				var28 = var28({
					generatedLink = true;
				}, var30)
			else
				var28 = {}
				var28.generatedLink = true
			end
			tbl.body = HttpService_upvr:JSONEncode(var28)
			tbl.headers = {
				["Content-Type"] = "application/json";
				Accept = "application/json";
			}
			local any_expect_result1 = fetch_upvr(any_new_result1_upvr_2(), tbl):catch(function() -- Line 94
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				return Response_upvr.error()
			end):expect()
			if not any_expect_result1.ok then
				arg2(string.format("Got start-verification HTTP Response: %d", any_expect_result1.status))
			else
				local any_expect_result1_2 = any_expect_result1:json():catch(function() -- Line 106
					return nil
				end):expect()
				if not any_expect_result1_2 then
					arg2("Failed to decode HTTP response as JSON for IDV Verification")
					return
				end
				local tbl_3 = {
					emailSent = any_expect_result1_2.emailSent;
					sessionIdentifier = any_expect_result1_2.sessionIdentifier;
					daysUntilNextVerification = any_expect_result1_2.daysUntilNextVerification;
				}
				local verificationLink = any_expect_result1_2.verificationLink
				tbl_3.verificationLink = verificationLink
				var28 = FFlagEnableAmpFAEUpsellSupport_upvr
				if var28 then
					verificationLink = any_expect_result1_2.sessionToken
				else
					verificationLink = nil
				end
				tbl_3.sessionToken = verificationLink
				arg1_3(tbl_3)
			end
		end)
	end;
	getVerifiedStatus = function(arg1) -- Line 32, Named "getVerifiedStatus"
		--[[ Upvalues[5]:
			[1]: fetch_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: any_new_result1_upvr (readonly)
			[4]: Response_upvr (readonly)
			[5]: game_DefineFastFlag_result1_upvr (readonly)
		]]
		return Promise_upvr.new(function(arg1_2, arg2) -- Line 34
			--[[ Upvalues[5]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: fetch_upvr (readonly)
				[4]: Response_upvr (copied, readonly)
				[5]: game_DefineFastFlag_result1_upvr (copied, readonly)
			]]
			local tbl_2 = {}
			tbl_2.token = arg1
			local any_expect_result1_3 = fetch_upvr(any_new_result1_upvr(tbl_2), {
				method = "GET";
			}):catch(function() -- Line 37
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				return Response_upvr.error()
			end):expect()
			if not any_expect_result1_3.ok then
				arg2(string.format("Got verified-status verification HTTP Response: %d", any_expect_result1_3.status))
			else
				local any_expect_result1_4 = any_expect_result1_3:json():catch(function() -- Line 51
					return nil
				end):expect()
				if not any_expect_result1_4 then
					arg2("Failed to decode HTTP response as JSON for get IDV Verification status")
					return
				end
				local tbl_4 = {
					isPending = any_expect_result1_4.isPending;
					sessionStatus = any_expect_result1_4.sessionStatus;
					sessionErrorCode = any_expect_result1_4.sessionErrorCode;
				}
				local isVerified = any_expect_result1_4.isVerified
				tbl_4.isVerified = isVerified
				if game_DefineFastFlag_result1_upvr then
					isVerified = any_expect_result1_4.ageEstimationNextStep
				else
					isVerified = nil
				end
				tbl_4.ageEstimationNextStep = isVerified
				arg1_2(tbl_4)
			end
		end)
	end;
}