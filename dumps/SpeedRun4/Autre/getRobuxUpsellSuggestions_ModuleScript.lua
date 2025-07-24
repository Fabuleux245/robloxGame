-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:28
-- Luau version 6, Types version 3
-- Time taken: 0.001624 seconds

local Parent = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local paymentPlatformToUpsellPlatform_upvr = require(Parent.Utils.paymentPlatformToUpsellPlatform)
local Promise_upvr = require(Parent.Promise)
local GetUpsellSuggestions_upvr = require(CorePackages.Workspace.Packages.PurchasePromptDeps).IAPExperience.Api.PaymentsGateway.GetUpsellSuggestions
local UpsellSuggestionsAPIMaxPackages_upvr = require(CorePackages.Workspace.Packages.SharedFlags).UpsellSuggestionsAPIMaxPackages
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 16
	--[[ Upvalues[5]:
		[1]: paymentPlatformToUpsellPlatform_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: GetUpsellSuggestions_upvr (readonly)
		[4]: UpsellSuggestionsAPIMaxPackages_upvr (readonly)
		[5]: PurchaseError_upvr (readonly)
	]]
	local paymentPlatformToUpsellPlatform_upvr_result1_upvr = paymentPlatformToUpsellPlatform_upvr(arg3)
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 20
		--[[ Upvalues[10]:
			[1]: GetUpsellSuggestions_upvr (copied, readonly)
			[2]: paymentPlatformToUpsellPlatform_upvr_result1_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: arg1 (readonly)
			[5]: UpsellSuggestionsAPIMaxPackages_upvr (copied, readonly)
			[6]: arg4 (readonly)
			[7]: arg5 (readonly)
			[8]: arg6 (readonly)
			[9]: arg7 (readonly)
			[10]: PurchaseError_upvr (copied, readonly)
		]]
		spawn(function() -- Line 22
			--[[ Upvalues[12]:
				[1]: GetUpsellSuggestions_upvr (copied, readonly)
				[2]: paymentPlatformToUpsellPlatform_upvr_result1_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: UpsellSuggestionsAPIMaxPackages_upvr (copied, readonly)
				[6]: arg4 (copied, readonly)
				[7]: arg5 (copied, readonly)
				[8]: arg6 (copied, readonly)
				[9]: arg7 (copied, readonly)
				[10]: arg2_2 (readonly)
				[11]: PurchaseError_upvr (copied, readonly)
				[12]: arg1_2 (readonly)
			]]
			local GetUpsellSuggestions_upvr_result1, var6_result2 = GetUpsellSuggestions_upvr(paymentPlatformToUpsellPlatform_upvr_result1_upvr, arg2, arg1, UpsellSuggestionsAPIMaxPackages_upvr, arg4, arg5, arg6, arg7)
			if not GetUpsellSuggestions_upvr_result1 then
				return arg2_2(PurchaseError_upvr.UnknownFailure)
			end
			if not var6_result2 or not var6_result2.products or #var6_result2.products == 0 then
				return arg2_2(PurchaseError_upvr.UnknownFailure)
			end
			return arg1_2(var6_result2)
		end)
	end)
end