-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:38
-- Luau version 6, Types version 3
-- Time taken: 0.003644 seconds

local Parent = script:FindFirstAncestor("FriendsLanding").Parent
local TCBannerImpressionCache_upvr = require(script.Parent.TCBannerImpressionCache)
local FIntAddFriendsTrustedContactsImpressionCap_upvr = require(script.Parent.FIntAddFriendsTrustedContactsImpressionCap)
local function isBannerHiddenInitState_upvr() -- Line 21, Named "isBannerHiddenInitState"
	--[[ Upvalues[2]:
		[1]: TCBannerImpressionCache_upvr (readonly)
		[2]: FIntAddFriendsTrustedContactsImpressionCap_upvr (readonly)
	]]
	local any_getValue_result1 = TCBannerImpressionCache_upvr.getValue()
	local var5 = true
	if any_getValue_result1 >= 0 then
		if FIntAddFriendsTrustedContactsImpressionCap_upvr > any_getValue_result1 then
			var5 = false
		else
			var5 = true
		end
	end
	return var5
end
local React_upvr = require(Parent.React)
local FFlagUseAmpV2EndpointForTCPolicy_upvr = require(Parent.SharedFlags).FFlagUseAmpV2EndpointForTCPolicy
local AmpApiProvider_upvr = require(Parent.AmpUpsell).AmpApiProvider
local FStringCanAccessTrustedContactsAmpFeature_upvr = require(Parent.SharedFlags).FStringCanAccessTrustedContactsAmpFeature
local FStringCanAccessTrustedContactsAmpNameSpace_upvr = require(Parent.SharedFlags).FStringCanAccessTrustedContactsAmpNameSpace
local AmpEnums_upvr = require(Parent.AmpUpsell).AmpEnums
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local FFlagAddFriendsTCEducationReleased_upvr = require(Parent.SharedFlags).FFlagAddFriendsTCEducationReleased
return function() -- Line 26, Named "useShowTrustedContactsEducationBanner"
	--[[ Upvalues[10]:
		[1]: React_upvr (readonly)
		[2]: isBannerHiddenInitState_upvr (readonly)
		[3]: FFlagUseAmpV2EndpointForTCPolicy_upvr (readonly)
		[4]: AmpApiProvider_upvr (readonly)
		[5]: FStringCanAccessTrustedContactsAmpFeature_upvr (readonly)
		[6]: FStringCanAccessTrustedContactsAmpNameSpace_upvr (readonly)
		[7]: AmpEnums_upvr (readonly)
		[8]: useAppPolicy_upvr (readonly)
		[9]: FFlagAddFriendsTCEducationReleased_upvr (readonly)
		[10]: TCBannerImpressionCache_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(isBannerHiddenInitState_upvr)
	local var27
	if FFlagUseAmpV2EndpointForTCPolicy_upvr then
		local any_useState_result1_4, any_useState_result2_upvw = React_upvr.useState(false)
		var27 = any_useState_result1_4
		React_upvr.useEffect(function() -- Line 34
			--[[ Upvalues[5]:
				[1]: AmpApiProvider_upvr (copied, readonly)
				[2]: FStringCanAccessTrustedContactsAmpFeature_upvr (copied, readonly)
				[3]: FStringCanAccessTrustedContactsAmpNameSpace_upvr (copied, readonly)
				[4]: AmpEnums_upvr (copied, readonly)
				[5]: any_useState_result2_upvw (read and write)
			]]
			if AmpApiProvider_upvr.upsellFeatureAccess(FStringCanAccessTrustedContactsAmpFeature_upvr, {}, FStringCanAccessTrustedContactsAmpNameSpace_upvr).access == AmpEnums_upvr.AccessResponseEnum.Granted then
				any_useState_result2_upvw(true)
			end
		end, {})
	else
		var27 = useAppPolicy_upvr(function(arg1) -- Line 41
			return arg1.getCanAccessTrustedContacts()
		end)
	end
	local var32 = not any_useState_result1
	if var32 then
		var32 = var27
		if var32 then
			var32 = FFlagAddFriendsTCEducationReleased_upvr
		end
	end
	return var32, React_upvr.useCallback(function() -- Line 48
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_2 (readonly)
			[2]: TCBannerImpressionCache_upvr (copied, readonly)
		]]
		any_useState_result2_upvr_2(true)
		TCBannerImpressionCache_upvr.dismissValue()
	end, {any_useState_result2_upvr_2}), React_upvr.useCallback(function() -- Line 53
		--[[ Upvalues[1]:
			[1]: TCBannerImpressionCache_upvr (copied, readonly)
		]]
		TCBannerImpressionCache_upvr.incrementValue()
	end, {})
end