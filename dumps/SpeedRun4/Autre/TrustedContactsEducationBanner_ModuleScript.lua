-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:37
-- Luau version 6, Types version 3
-- Time taken: 0.001323 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local AddFriends = FriendsLanding.AddFriends
local useFireAnalyticsEvent_upvr = require(AddFriends.Analytics.useFireAnalyticsEvent)
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useShowTrustedContactsEducationBanner_upvr = require(script.Parent.useShowTrustedContactsEducationBanner)
local React_upvr = require(Parent.React)
local EventNames_upvr = require(AddFriends.Analytics.EventNames)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local AddFriendsGenericBanner_upvr = require(AddFriends.Components.AddFriendsGenericBanner)
return function(arg1) -- Line 24, Named "TrustedContactsEducationBanner"
	--[[ Upvalues[8]:
		[1]: useFireAnalyticsEvent_upvr (readonly)
		[2]: useNavigation_upvr (readonly)
		[3]: useShowTrustedContactsEducationBanner_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: EventNames_upvr (readonly)
		[6]: AppPage_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: AddFriendsGenericBanner_upvr (readonly)
	]]
	local useFireAnalyticsEvent_upvr_result1_upvr = useFireAnalyticsEvent_upvr()
	local var5_result1_upvr = useNavigation_upvr()
	local useShowTrustedContactsEducationBanner_upvr_result1, useShowTrustedContactsEducationBanner_upvr_result2_upvr, var6_result3_upvr = useShowTrustedContactsEducationBanner_upvr()
	local useLocalization_upvr_result1 = useLocalization_upvr({
		title = "Feature.Friends.TCEducation.Title";
		bodyText = "Feature.Friends.TCEducation.Banner.Text";
		learnMoreLink = "Feature.Friends.LinkText.LearnMore";
	})
	if useShowTrustedContactsEducationBanner_upvr_result1 then
		return React_upvr.createElement(AddFriendsGenericBanner_upvr, {
			onActivated = React_upvr.useCallback(function() -- Line 29
				--[[ Upvalues[5]:
					[1]: useFireAnalyticsEvent_upvr_result1_upvr (readonly)
					[2]: EventNames_upvr (copied, readonly)
					[3]: var5_result1_upvr (readonly)
					[4]: AppPage_upvr (copied, readonly)
					[5]: useShowTrustedContactsEducationBanner_upvr_result2_upvr (readonly)
				]]
				useFireAnalyticsEvent_upvr_result1_upvr(EventNames_upvr.TrustedContactsEducationalBannerClick)
				var5_result1_upvr.push(AppPage_upvr.TrustedContactsEducationModal)
				useShowTrustedContactsEducationBanner_upvr_result2_upvr()
			end, {var5_result1_upvr, useShowTrustedContactsEducationBanner_upvr_result2_upvr, useFireAnalyticsEvent_upvr_result1_upvr});
			rightCornerButtonActivated = React_upvr.useCallback(function() -- Line 36
				--[[ Upvalues[3]:
					[1]: useFireAnalyticsEvent_upvr_result1_upvr (readonly)
					[2]: EventNames_upvr (copied, readonly)
					[3]: useShowTrustedContactsEducationBanner_upvr_result2_upvr (readonly)
				]]
				useFireAnalyticsEvent_upvr_result1_upvr(EventNames_upvr.TrustedContactsEducationalBannerClose)
				useShowTrustedContactsEducationBanner_upvr_result2_upvr()
			end, {useShowTrustedContactsEducationBanner_upvr_result2_upvr, useFireAnalyticsEvent_upvr_result1_upvr});
			onBannerMounted = React_upvr.useCallback(function() -- Line 42
				--[[ Upvalues[3]:
					[1]: useFireAnalyticsEvent_upvr_result1_upvr (readonly)
					[2]: EventNames_upvr (copied, readonly)
					[3]: var6_result3_upvr (readonly)
				]]
				useFireAnalyticsEvent_upvr_result1_upvr(EventNames_upvr.TrustedContactsEducationalBannerImpression)
				var6_result3_upvr()
			end, {var6_result3_upvr, useFireAnalyticsEvent_upvr_result1_upvr});
			bannerTitle = useLocalization_upvr_result1.title;
			bannerText = `{useLocalization_upvr_result1.bodyText}<br/><u>{useLocalization_upvr_result1.learnMoreLink}</u>`;
			rightCornerButtonIcon = "icons/navigation/close";
			maxWidth = arg1.maxWidth;
			layoutOrder = arg1.layoutOrder;
			headerEmphasis = true;
		})
	end
	return nil
end