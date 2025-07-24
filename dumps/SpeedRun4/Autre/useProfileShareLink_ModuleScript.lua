-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:06
-- Luau version 6, Types version 3
-- Time taken: 0.002977 seconds

local ProfileShareLinks = script:FindFirstAncestor("ProfileShareLinks")
local Parent = ProfileShareLinks.Parent
local RoactUtils = require(Parent.RoactUtils)
local useAnalytics_upvr = require(ProfileShareLinks.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useProfileSharePolicy_upvr = require(ProfileShareLinks.Hooks.useProfileSharePolicy)
local useGetOrGenerateLinkUrl_upvr = require(ProfileShareLinks.Hooks.useGetOrGenerateLinkUrl)
local useShortUrl_upvr = require(ProfileShareLinks.Hooks.useShortUrl)
local useEffectOnce_upvr = RoactUtils.Hooks.useEffectOnce
local ProfileSharePolicyEnum_upvr = require(ProfileShareLinks.Enums.ProfileSharePolicyEnum)
local React_upvr = require(Parent.React)
local EventNames_upvr = require(ProfileShareLinks.Analytics.EventNames)
local default_upvr = require(Parent.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default
local SetCurrentToastMessage_upvr = require(Parent.ToastRodux).Actions.SetCurrentToastMessage
local TextKeys_upvr = require(ProfileShareLinks.Common.TextKeys)
return function(arg1) -- Line 31
	--[[ Upvalues[12]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useProfileSharePolicy_upvr (readonly)
		[4]: useGetOrGenerateLinkUrl_upvr (readonly)
		[5]: useShortUrl_upvr (readonly)
		[6]: useEffectOnce_upvr (readonly)
		[7]: ProfileSharePolicyEnum_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: EventNames_upvr (readonly)
		[10]: default_upvr (readonly)
		[11]: SetCurrentToastMessage_upvr (readonly)
		[12]: TextKeys_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var30
	if arg1.enableFetch == nil then
	else
	end
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local useDispatch_upvr_result1_upvr_2 = useDispatch_upvr()
	local var7_result1_upvr = useProfileSharePolicy_upvr()
	local var9_result1_upvr = useShortUrl_upvr()
	if var9_result1_upvr == nil then
		var30 = false
	else
		var30 = true
	end
	local var35 = not var30
	if var35 then
		var35 = false
		if var7_result1_upvr ~= ProfileSharePolicyEnum_upvr.Disabled then
			var35 = arg1.enableFetch
		end
	end
	useEffectOnce_upvr(useGetOrGenerateLinkUrl_upvr(), var35)
	return {
		hasLoaded = var30;
		policy = var7_result1_upvr;
		onActivated = React_upvr.useCallback(function() -- Line 45
			--[[ Upvalues[10]:
				[1]: var7_result1_upvr (readonly)
				[2]: ProfileSharePolicyEnum_upvr (copied, readonly)
				[3]: var9_result1_upvr (readonly)
				[4]: useAnalytics_upvr_result1_upvr (readonly)
				[5]: EventNames_upvr (copied, readonly)
				[6]: arg1 (readonly)
				[7]: default_upvr (copied, readonly)
				[8]: useDispatch_upvr_result1_upvr_2 (readonly)
				[9]: SetCurrentToastMessage_upvr (copied, readonly)
				[10]: TextKeys_upvr (copied, readonly)
			]]
			if var7_result1_upvr == ProfileSharePolicyEnum_upvr.Disabled or var9_result1_upvr == nil then
			else
				local tostring_result1 = tostring(DateTime.now().UnixTimestampMillis)
				useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ProfileShareLinkActivated, {
					context = arg1.context;
					shareType = var7_result1_upvr;
					stamp = tostring_result1;
				})
				default_upvr:shareUrl({
					context = arg1.context;
					url = `{var9_result1_upvr}&source=ProfileShare&stamp={tostring_result1}`;
				})
				if var7_result1_upvr == ProfileSharePolicyEnum_upvr.Copy then
					useDispatch_upvr_result1_upvr_2(SetCurrentToastMessage_upvr({
						toastMessage = TextKeys_upvr.LinkCopied;
					}))
				end
			end
		end, {var7_result1_upvr, var9_result1_upvr, arg1.context, useAnalytics_upvr_result1_upvr, useDispatch_upvr_result1_upvr_2});
	}
end