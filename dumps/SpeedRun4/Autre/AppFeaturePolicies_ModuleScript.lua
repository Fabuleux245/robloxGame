-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:20
-- Luau version 6, Types version 3
-- Time taken: 0.025399 seconds

local Parent = script.Parent.Parent
local Cryo_upvr = require(Parent.Cryo)
local SharedFlags = require(Parent.SharedFlags)
game:DefineFastFlag("BehaviorCollectionControlEnabled", false)
game:DefineFastFlag("LuaAppPromotionalEmailsCheckboxEnabledInAppPolicy", false)
local IsVRAppBuild_upvr = require(Parent.AppCommonLib).IsVRAppBuild
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("LuaAppEnableRecommendedCarouselForDesktop", false)
local game_DefineFastFlag_result1_upvr_5 = game:DefineFastFlag("UseGUACforDUARPolicy", false)
local isSubjectToDesktopPolicies_upvr = SharedFlags.isSubjectToDesktopPolicies
local FFlagAppNavResponsivePlacement_upvr = SharedFlags.FFlagAppNavResponsivePlacement
local Placements_upvr = require(Parent.AppSystemBar).Enum.Placements
local FFlagAppIaScrollAwayGuac_upvr = SharedFlags.FFlagAppIaScrollAwayGuac
local GetFFlagEnableTopBarVRPolicyOverride_upvr = SharedFlags.GetFFlagEnableTopBarVRPolicyOverride
local isRunningInStudio_upvr = require(Parent.AppCommonLib).isRunningInStudio
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("DisableWebViewSupportInStudio", false)
local GetFFlagLuafiedReportEntryPoints_upvr = SharedFlags.GetFFlagLuafiedReportEntryPoints
local GetFFlagEnableAbuseReport10ft_upvr = SharedFlags.GetFFlagEnableAbuseReport10ft
local GetFFlagUseVoiceExitBetaLanguage_upvr = SharedFlags.GetFFlagUseVoiceExitBetaLanguage
local GetFFlagSeamlessVoiceConsentToastPolicy_upvr = SharedFlags.GetFFlagSeamlessVoiceConsentToastPolicy
local GetFFlagDisableCDLQrCodeForMaquettes_upvr = SharedFlags.GetFFlagDisableCDLQrCodeForMaquettes
local any_values_result1_upvr = Cryo_upvr.Dictionary.values(require(Parent.Style).Constants.ThemeName)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugUseLegacyCrossPlayApi", false)
local game_DefineFastFlag_result1_upvr_4 = game:DefineFastFlag("DebugCrossPlaySystemUi", false)
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("DebugOverrideCrossPlayUri", "")
local CrossPlayCapabilities_upvr = require(script.Parent.Enum.CrossPlayCapabilities)
local game_DefineFastString_result1_upvr_3 = game:DefineFastString("DebugOverrideCrossPlaySettingsKey", "")
local game_DefineFastString_result1_upvr = game:DefineFastString("DebugOverrideCrossPlayQueryParam", "")
local FFlagRealNamesInDisplayNameExperimentEnabled_upvr = SharedFlags.FFlagRealNamesInDisplayNameExperimentEnabled
local GetFFlagUseEnablePremiumUserFeaturesAppPolicy_upvr = SharedFlags.GetFFlagUseEnablePremiumUserFeaturesAppPolicy
local GetFFlagUseExternalBrowserForAgeGuidelines10ft_upvr = SharedFlags.GetFFlagUseExternalBrowserForAgeGuidelines10ft
local GetFFlagContactsToastPolicyEnabled_upvr = SharedFlags.GetFFlagContactsToastPolicyEnabled
local GetFFlagEnableGateNotificationPreferencesTab_upvr = SharedFlags.GetFFlagEnableGateNotificationPreferencesTab
local UserInputService_upvr = game:GetService("UserInputService")
local FFlagLuaAppHomeVngAppUpsell_upvr = SharedFlags.FFlagLuaAppHomeVngAppUpsell
local FFlagMoveCiEncouragedGatingToGuac_upvr = SharedFlags.FFlagMoveCiEncouragedGatingToGuac
local FFlagMoveAdditionalCiUpsellGatingToGuac_upvr = SharedFlags.FFlagMoveAdditionalCiUpsellGatingToGuac
local FFlagFriendRequestNicknames_upvr = SharedFlags.FFlagFriendRequestNicknames
local FFlagLuaAppParentUpsellPolicy_upvr = SharedFlags.FFlagLuaAppParentUpsellPolicy
local FFlagRenamePaymentsToSpendingTab_upvr = SharedFlags.FFlagRenamePaymentsToSpendingTab
local FFlagRenamePrivacyToPrivacyContentRestrictionsTab_upvr = SharedFlags.FFlagRenamePrivacyToPrivacyContentRestrictionsTab
local GetFFlagNotificationsComplianceShouldRestrictStream_upvr = SharedFlags.GetFFlagNotificationsComplianceShouldRestrictStream
local FFlagRenameParentEmailForVerificationUpsell_upvr = SharedFlags.FFlagRenameParentEmailForVerificationUpsell
local GetFFlagEnableMultiPageSignup_upvr = SharedFlags.GetFFlagEnableMultiPageSignup
local GetFIntExclusiveFallbackExclusiveUnderageCutoffForMultiPageSignup_upvr = SharedFlags.GetFIntExclusiveFallbackExclusiveUnderageCutoffForMultiPageSignup
local FFlagUseMobileRobuxUpsellFlowForPCGDK_upvr = SharedFlags.FFlagUseMobileRobuxUpsellFlowForPCGDK
local FFlagEnableMicrosoftStorePaymentsPlatform_upvr = SharedFlags.FFlagEnableMicrosoftStorePaymentsPlatform
local FFlagPartyVoiceEnableMicPermissionsBanner_upvr = SharedFlags.FFlagPartyVoiceEnableMicPermissionsBanner
local FFlagRenameFriendsToConnections_upvr = SharedFlags.FFlagRenameFriendsToConnections
local FFlagAddFriendsTCEducationSetup_upvr = SharedFlags.FFlagAddFriendsTCEducationSetup
local FFlagLuaAppShowNoticeOnEdp_upvr = SharedFlags.FFlagLuaAppShowNoticeOnEdp
local FFlagAddFriendsOSAEducationSubtitle_upvr = SharedFlags.FFlagAddFriendsOSAEducationSubtitle
local FFlagMigrateSocialGraphSync_upvr = SharedFlags.FFlagMigrateSocialGraphSync
local FFlagShowMultipleUserCredentialsError_upvr = SharedFlags.FFlagShowMultipleUserCredentialsError
local FFlagEnableAmpFAEUpsellSupport_upvr = SharedFlags.FFlagEnableAmpFAEUpsellSupport
local FFlagAddLinkedAuthEndpoints_upvr = SharedFlags.FFlagAddLinkedAuthEndpoints
return function(arg1) -- Line 72, Named "AppFeaturePolicies"
	--[[ Upvalues[51]:
		[1]: IsVRAppBuild_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[3]: game_DefineFastFlag_result1_upvr_5 (readonly)
		[4]: isSubjectToDesktopPolicies_upvr (readonly)
		[5]: FFlagAppNavResponsivePlacement_upvr (readonly)
		[6]: Placements_upvr (readonly)
		[7]: FFlagAppIaScrollAwayGuac_upvr (readonly)
		[8]: GetFFlagEnableTopBarVRPolicyOverride_upvr (readonly)
		[9]: isRunningInStudio_upvr (readonly)
		[10]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[11]: GetFFlagLuafiedReportEntryPoints_upvr (readonly)
		[12]: GetFFlagEnableAbuseReport10ft_upvr (readonly)
		[13]: GetFFlagUseVoiceExitBetaLanguage_upvr (readonly)
		[14]: GetFFlagSeamlessVoiceConsentToastPolicy_upvr (readonly)
		[15]: GetFFlagDisableCDLQrCodeForMaquettes_upvr (readonly)
		[16]: Cryo_upvr (readonly)
		[17]: any_values_result1_upvr (readonly)
		[18]: game_DefineFastFlag_result1_upvr (readonly)
		[19]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[20]: game_DefineFastString_result1_upvr_2 (readonly)
		[21]: CrossPlayCapabilities_upvr (readonly)
		[22]: game_DefineFastString_result1_upvr_3 (readonly)
		[23]: game_DefineFastString_result1_upvr (readonly)
		[24]: FFlagRealNamesInDisplayNameExperimentEnabled_upvr (readonly)
		[25]: GetFFlagUseEnablePremiumUserFeaturesAppPolicy_upvr (readonly)
		[26]: GetFFlagUseExternalBrowserForAgeGuidelines10ft_upvr (readonly)
		[27]: GetFFlagContactsToastPolicyEnabled_upvr (readonly)
		[28]: GetFFlagEnableGateNotificationPreferencesTab_upvr (readonly)
		[29]: UserInputService_upvr (readonly)
		[30]: FFlagLuaAppHomeVngAppUpsell_upvr (readonly)
		[31]: FFlagMoveCiEncouragedGatingToGuac_upvr (readonly)
		[32]: FFlagMoveAdditionalCiUpsellGatingToGuac_upvr (readonly)
		[33]: FFlagFriendRequestNicknames_upvr (readonly)
		[34]: FFlagLuaAppParentUpsellPolicy_upvr (readonly)
		[35]: FFlagRenamePaymentsToSpendingTab_upvr (readonly)
		[36]: FFlagRenamePrivacyToPrivacyContentRestrictionsTab_upvr (readonly)
		[37]: GetFFlagNotificationsComplianceShouldRestrictStream_upvr (readonly)
		[38]: FFlagRenameParentEmailForVerificationUpsell_upvr (readonly)
		[39]: GetFFlagEnableMultiPageSignup_upvr (readonly)
		[40]: GetFIntExclusiveFallbackExclusiveUnderageCutoffForMultiPageSignup_upvr (readonly)
		[41]: FFlagUseMobileRobuxUpsellFlowForPCGDK_upvr (readonly)
		[42]: FFlagEnableMicrosoftStorePaymentsPlatform_upvr (readonly)
		[43]: FFlagPartyVoiceEnableMicPermissionsBanner_upvr (readonly)
		[44]: FFlagRenameFriendsToConnections_upvr (readonly)
		[45]: FFlagAddFriendsTCEducationSetup_upvr (readonly)
		[46]: FFlagLuaAppShowNoticeOnEdp_upvr (readonly)
		[47]: FFlagAddFriendsOSAEducationSubtitle_upvr (readonly)
		[48]: FFlagMigrateSocialGraphSync_upvr (readonly)
		[49]: FFlagShowMultipleUserCredentialsError_upvr (readonly)
		[50]: FFlagEnableAmpFAEUpsellSupport_upvr (readonly)
		[51]: FFlagAddLinkedAuthEndpoints_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local function _(arg1_2, arg2) -- Line 73, Named "getVRDefaultPolicy"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: IsVRAppBuild_upvr (copied, readonly)
		]]
		if arg1[arg1_2] ~= nil then
			return arg1[arg1_2]
		end
		if IsVRAppBuild_upvr() then
			return arg2
		end
		return not arg2
	end
	local module = {
		getFriendFinder = function() -- Line 84, Named "getFriendFinder"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.FriendFinder or false
		end;
		getGameDetailsMorePage = function() -- Line 87, Named "getGameDetailsMorePage"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameDetailsMorePage or false
		end;
		getGameDetailsSubtitle = function() -- Line 90, Named "getGameDetailsSubtitle"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameDetailsSubtitle or false
		end;
		getShowGlobalCounters = function() -- Line 93, Named "getShowGlobalCounters"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameDetailsShowGlobalCounters or false
		end;
		getGameDetailsPlayWithFriends = function() -- Line 96, Named "getGameDetailsPlayWithFriends"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameDetailsPlayWithFriends or false
		end;
		getGameInfoList = function() -- Line 99, Named "getGameInfoList"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameInfoList or false
		end;
		getGamePlaysAndRatings = function() -- Line 102, Named "getGamePlaysAndRatings"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GamePlaysAndRatings or false
		end;
		getNotifications = function() -- Line 105, Named "getNotifications"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.Notifications or false
		end;
		getRecommendedGames = function() -- Line 108, Named "getRecommendedGames"
			--[[ Upvalues[4]:
				[1]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
				[2]: arg1 (readonly)
				[3]: game_DefineFastFlag_result1_upvr_5 (copied, readonly)
				[4]: isSubjectToDesktopPolicies_upvr (copied, readonly)
			]]
			if game_DefineFastFlag_result1_upvr_3 then
				return arg1.RecommendedGames or false
			end
			if not game_DefineFastFlag_result1_upvr_5 and isSubjectToDesktopPolicies_upvr() then
				return false
			end
			return arg1.RecommendedGames or false
		end;
		getSearchBar = function() -- Line 120, Named "getSearchBar"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.SearchBar or false
		end;
		getMorePageContent = function() -- Line 123, Named "getMorePageContent"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.MorePageContent
		end;
		getAboutPageType = function() -- Line 126, Named "getAboutPageType"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.AboutPageType or "CJVAbout"
		end;
		getSettingsPageType = function() -- Line 129, Named "getSettingsPageType"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.SettingsPageType or "Settings"
		end;
		getSocialLinks = function() -- Line 132, Named "getSocialLinks"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.SocialLinks or false
		end;
		getSocialGroupLinks = function() -- Line 135, Named "getSocialGroupLinks"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.SocialGroupLinks or false
		end;
		getCommunityLinksEnabled = function() -- Line 138, Named "getCommunityLinksEnabled"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.CommunityLinksEnabled or false
		end;
		getGameInfoShowBadges = function() -- Line 141, Named "getGameInfoShowBadges"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameInfoShowBadges or false
		end;
		getGameInfoShowCreated = function() -- Line 144, Named "getGameInfoShowCreated"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameInfoShowCreated or false
		end;
		getGameInfoShowGamepasses = function() -- Line 147, Named "getGameInfoShowGamepasses"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameInfoShowGamepasses or false
		end;
		getGameInfoShowGenre = function() -- Line 150, Named "getGameInfoShowGenre"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameInfoShowGenre or false
		end;
		getGameInfoShowSubgenre = function() -- Line 153, Named "getGameInfoShowSubgenre"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameInfoShowSubgenre or false
		end;
		getGameInfoShowMaxPlayers = function() -- Line 156, Named "getGameInfoShowMaxPlayers"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameInfoShowMaxPlayers or false
		end;
		getGameInfoShowServers = function() -- Line 159, Named "getGameInfoShowServers"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameInfoShowServers or false
		end;
		getGameInfoShowUpdated = function() -- Line 162, Named "getGameInfoShowUpdated"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.GameInfoShowUpdated or false
		end;
		getGameInfoShowAgeRecommendation = function() -- Line 165, Named "getGameInfoShowAgeRecommendation"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.GameInfoShowAgeRecommendation == nil then
				return true
			end
			return arg1.GameInfoShowAgeRecommendation
		end;
		getGameInfoShowVoiceAndChatFeatures = function() -- Line 171, Named "getGameInfoShowVoiceAndChatFeatures"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.GameInfoShowVoiceAndChatFeatures == nil then
				return true
			end
			return arg1.GameInfoShowVoiceAndChatFeatures
		end;
		getSiteMessageBanner = function() -- Line 177, Named "getSiteMessageBanner"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.SiteMessageBanner or false
		end;
	}
	local function getSearchAutoComplete() -- Line 180, Named "getAlertRateLimit"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.AlertRateLimit or 300
	end
	module.getAlertRateLimit = getSearchAutoComplete
	function getSearchAutoComplete() -- Line 184
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.SearchAutoComplete or false
	end
	local getShowStudioCTA = getSearchAutoComplete
	module.getSearchAutoComplete = getShowStudioCTA
	if FFlagAppNavResponsivePlacement_upvr then
		getShowStudioCTA = nil
	else
		getShowStudioCTA = function() -- Line 189
			--[[ Upvalues[5]:
				[1]: IsVRAppBuild_upvr (copied, readonly)
				[2]: Placements_upvr (copied, readonly)
				[3]: game_DefineFastFlag_result1_upvr_5 (copied, readonly)
				[4]: isSubjectToDesktopPolicies_upvr (copied, readonly)
				[5]: arg1 (readonly)
			]]
			if IsVRAppBuild_upvr() then
				return Placements_upvr.VR
			end
			if not game_DefineFastFlag_result1_upvr_5 and isSubjectToDesktopPolicies_upvr() then
				return Placements_upvr.Left
			end
			if Placements_upvr[arg1.SystemBarPlacement] ~= nil then
				return arg1.SystemBarPlacement
			end
			return Placements_upvr.Bottom
		end
	end
	module.getSystemBarPlacement = getShowStudioCTA
	function getShowStudioCTA() -- Line 203
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShowStudioCTA or false
	end
	local var58 = getShowStudioCTA
	module.getShowStudioCTA = var58
	if FFlagAppIaScrollAwayGuac_upvr then
		function var58() -- Line 207
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.AppIaScrollAwayEnabled or false
		end
	else
		var58 = nil
	end
	module.getAppIaScrollAwayEnabled = var58
	function module.getUseOmniRecommendation() -- Line 211
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.UseOmniRecommendation == nil then
			return true
		end
		return arg1.UseOmniRecommendation
	end
	function module.getUseWidthBasedFormFactorRule() -- Line 219
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.UseWidthBasedFormFactorRule or false
	end
	function module.getShowYouTubeAgeAlert() -- Line 222
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.ShowYouTubeAgeAlert == nil then
			return true
		end
		return arg1.ShowYouTubeAgeAlert
	end
	function module.getShowVideoThumbnails() -- Line 228
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShowVideoThumbnails or false
	end
	function module.getHomeIcon() -- Line 231
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.HomeIcon or "LuaApp/icons/ic-roblox-close"
	end
	function module.getGameInfoListShowRNVDeveloper() -- Line 234
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.GameInfoListShowRNVDeveloper or false
	end
	function module.getGameInfoListDeveloper() -- Line 237
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.GameInfoListDeveloper or false
	end
	function module.getShowDisplayName() -- Line 240
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.ShowDisplayName == nil then
			return true
		end
		return arg1.ShowDisplayName
	end
	function module.getShowAlias() -- Line 246
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.ShowUserAlias == nil then
			return true
		end
		return arg1.ShowUserAlias
	end
	function module.getCatalogReportingDisabled() -- Line 252
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.CatalogReportingDisabled or false
	end
	function module.getGameReportingDisabled() -- Line 255
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.GameReportingDisabled or false
	end
	function module.getGamesPageCreationCenterTitle() -- Line 258
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.GamesPageCreationCenterTitle or false
	end
	function module.shouldUseExternalBrowserForDisclaimerLinks() -- Line 261
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.UseExternalBrowserForDisclaimerLinks or false
	end
	function module.shouldUseExternalBrowserForMorePageItem() -- Line 264
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.UseExternalBrowserForMoreLinks or false
	end
	function module.getCatalogShow3dView() -- Line 267
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.CatalogShow3dView or false
	end
	function module.getItemDetailsFullView() -- Line 270
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ItemDetailsFullView or false
	end
	function module.getCatalogCommunityCreations() -- Line 273
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.CatalogCommunityCreations or false
	end
	function module.getCatalogPremiumCategory() -- Line 276
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.CatalogPremiumCategory or false
	end
	function module.getShowCatalogPremiumContent() -- Line 279
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.CatalogPremiumContent or false
	end
	function module.getRobloxCreatedItemsCreatedByLuobu() -- Line 282
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.RobloxCreatedItemsCreatedByLuobu == nil then
			return true
		end
		return arg1.RobloxCreatedItemsCreatedByLuobu
	end
	function module.getHomePageFriendSection() -- Line 288
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.HomePageFriendSection or false
	end
	function module.getHomePageProfileLink() -- Line 291
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.HomePageProfileLink or false
	end
	function module.getPurchasePromptIncludingWarning() -- Line 294
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.PurchasePromptIncludingWarning == nil then
			return true
		end
		return arg1.PurchasePromptIncludingWarning
	end
	function module.getCheckUserAgreementsUpdatedOnLogin() -- Line 300
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.CheckUserAgreementsUpdatedOnLogin == nil then
			return true
		end
		return arg1.CheckUserAgreementsUpdatedOnLogin
	end
	function module.getAddUserAgreementIdsToSignupRequest() -- Line 306
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.AddUserAgreementIdsToSignupRequest or false
	end
	function module.RequireExplicitVoiceConsent() -- Line 309
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.RequireExplicitVoiceConsent or false
	end
	function module.getRequireExplicitAvatarVideoConsent() -- Line 312
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.RequireExplicitAvatarVideoConsent or false
	end
	function module.getShowVoiceUpsellV2() -- Line 315
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShowVoiceUpsellV2 or false
	end
	function module.getShouldShowGroupsTile() -- Line 318
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShouldShowGroupsTile or false
	end
	function module.useLuobuAuthentication() -- Line 321
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.UseLuobuAuthentication or false
	end
	function module.useMSDKWebAuthentication() -- Line 324
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.UseMSDKWebAuthentication or false
	end
	function module.getQrFriendingEnabled() -- Line 327
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.QrFriendingEnabled or false
	end
	function module.getShouldShowCameraPermissionInAgreementsPrompt() -- Line 330
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShouldShowCameraPermissionInAgreementsPrompt or false
	end
	function module.getExperienceInviteShareLinkEnabled() -- Line 333
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ExperienceInviteShareLinkEnabled or false
	end
	function module.getCsatSurveyRestrictTextInput() -- Line 336
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.CsatSurveyRestrictTextInput or false
	end
	function module.useGridPageLayout() -- Line 339
		--[[ Upvalues[3]:
			[1]: IsVRAppBuild_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: isSubjectToDesktopPolicies_upvr (copied, readonly)
		]]
		if IsVRAppBuild_upvr() then
			if arg1.UseGridPageLayout ~= nil then
				return arg1.UseGridPageLayout
			end
			if IsVRAppBuild_upvr() then
				return true
			end
			return false
		end
		if arg1.UseGridPageLayout == nil then
			return isSubjectToDesktopPolicies_upvr()
		end
		return arg1.UseGridPageLayout
	end
	function module.usePhoneSearchDiscoverEntry() -- Line 350
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: isSubjectToDesktopPolicies_upvr (copied, readonly)
		]]
		if arg1.UsePhoneSearchDiscoverEntry == nil then
			return not isSubjectToDesktopPolicies_upvr()
		end
		return arg1.UsePhoneSearchDiscoverEntry
	end
	function module.getShouldSystemBarUsuallyBePresent() -- Line 357
		--[[ Upvalues[3]:
			[1]: GetFFlagEnableTopBarVRPolicyOverride_upvr (copied, readonly)
			[2]: IsVRAppBuild_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if GetFFlagEnableTopBarVRPolicyOverride_upvr() and IsVRAppBuild_upvr() then
			if arg1.ShouldSystemBarUsuallyBePresentForVR ~= nil then
				return arg1.ShouldSystemBarUsuallyBePresentForVR
			end
			if IsVRAppBuild_upvr() then
				return true
			end
			return false
		end
		return arg1.ShouldSystemBarUsuallyBePresent or false
	end
	function module.getContactImporterEnabled() -- Line 366
		--[[ Upvalues[2]:
			[1]: isSubjectToDesktopPolicies_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if isSubjectToDesktopPolicies_upvr() then
			return false
		end
		return arg1.ContactImporterEnabled or false
	end
	function module.getShouldShowSettingsPermissionsAdditionalInstructions() -- Line 374
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.shouldShowSettingsPermissionsAdditionalInstructions or false
	end
	function module.getUseVRFTUXPanel() -- Line 378
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: IsVRAppBuild_upvr (copied, readonly)
		]]
		if arg1.UseVRFTUXPanel ~= nil then
			return arg1.UseVRFTUXPanel
		end
		if IsVRAppBuild_upvr() then
			return true
		end
		return false
	end
	function module.getWebViewSupport() -- Line 381
		--[[ Upvalues[4]:
			[1]: isRunningInStudio_upvr (copied, readonly)
			[2]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
			[3]: arg1 (readonly)
			[4]: IsVRAppBuild_upvr (copied, readonly)
		]]
		if isRunningInStudio_upvr() then
			if game_DefineFastFlag_result1_upvr_2 then
				return false
			end
			return true
		end
		if arg1.EnableWebViewSupport ~= nil then
			return arg1.EnableWebViewSupport
		end
		if IsVRAppBuild_upvr() then
			return false
		end
		return true
	end
	function module.getUseLuafiedReportFlow() -- Line 392
		--[[ Upvalues[4]:
			[1]: IsVRAppBuild_upvr (copied, readonly)
			[2]: GetFFlagLuafiedReportEntryPoints_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: GetFFlagEnableAbuseReport10ft_upvr (copied, readonly)
		]]
		if IsVRAppBuild_upvr() and GetFFlagLuafiedReportEntryPoints_upvr() then
			if arg1.UseLuafiedReportFlow ~= nil then
				return arg1.UseLuafiedReportFlow
			end
			if IsVRAppBuild_upvr() then
				return true
			end
			return false
		end
		if GetFFlagEnableAbuseReport10ft_upvr() then
			return arg1.UseLuafiedReportFlow or false
		end
		return nil
	end
	function module.getThrottleFramerate() -- Line 401
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: IsVRAppBuild_upvr (copied, readonly)
		]]
		if arg1.ThrottleFramerate ~= nil then
			return arg1.ThrottleFramerate
		end
		if IsVRAppBuild_upvr() then
			return false
		end
		return true
	end
	function module.getUseRoundedCorners() -- Line 404
		--[[ Upvalues[2]:
			[1]: IsVRAppBuild_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if IsVRAppBuild_upvr() then
			if arg1.UseRoundedCorners ~= nil then
				return arg1.UseRoundedCorners
			end
			if IsVRAppBuild_upvr() then
				return true
			end
			return false
		end
		return false
	end
	function module.getGameInfoShowChatFeatures() -- Line 411
		--[[ Upvalues[2]:
			[1]: GetFFlagUseVoiceExitBetaLanguage_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if GetFFlagUseVoiceExitBetaLanguage_upvr() then
			return arg1.GameInfoShowChatFeatures or false
		end
		return false
	end
	function module.getDisplayCheckboxInVoiceConsent() -- Line 417
		--[[ Upvalues[2]:
			[1]: GetFFlagSeamlessVoiceConsentToastPolicy_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if GetFFlagSeamlessVoiceConsentToastPolicy_upvr() then
			return arg1.DisplayCheckboxInVoiceConsent or false
		end
		return false
	end
	function module.getAllowCameraMovements() -- Line 423
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: IsVRAppBuild_upvr (copied, readonly)
		]]
		if arg1.AllowCameraMovements ~= nil then
			return arg1.AllowCameraMovements
		end
		if IsVRAppBuild_upvr() then
			return false
		end
		return true
	end
	function module.getShouldSkipAvatarLandingPage() -- Line 426
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: IsVRAppBuild_upvr (copied, readonly)
		]]
		if arg1.ShouldSkipAvatarLandingPage ~= nil then
			return arg1.ShouldSkipAvatarLandingPage
		end
		if IsVRAppBuild_upvr() then
			return true
		end
		return false
	end
	function module.getShowPassesOnExperienceDetails() -- Line 429
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShowPassesOnExperienceDetails or false
	end
	function module.getDisableCDLQrCodeForMaquettes() -- Line 432
		--[[ Upvalues[2]:
			[1]: GetFFlagDisableCDLQrCodeForMaquettes_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if GetFFlagDisableCDLQrCodeForMaquettes_upvr() then
			return arg1.DisableCDLQrCodeForMaquettes
		end
		return false
	end
	function module.getDisableIAPEntryPoint() -- Line 439
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.DisableIAPEntryPoint or false
	end
	function module.getEnforceAgeRestrictedLogin() -- Line 442
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.EnforceAgeRestrictedLogin or false
	end
	function module.getUrlAuthRoutes() -- Line 445
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local Routes = arg1.Routes
		if not Routes then
			Routes = {}
		end
		if Routes then
			local auth = Routes.auth
			if not auth then
				auth = {}
			end
			return auth
		end
		return {}
	end
	function module.getShowDisconnectButton() -- Line 454
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShowDisconnectButton or false
	end
	function module.getUseSingleSignOn() -- Line 457
		--[[ Upvalues[2]:
			[1]: isRunningInStudio_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if isRunningInStudio_upvr() then
			return false
		end
		return arg1.UseSingleSignOn or false
	end
	function module.getGridCarouselSeeAllTilesEnabled() -- Line 464
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.UseGridCarouselSeeAllTiles or false
	end
	function module.getSearchWithoutNavigatingEnabled() -- Line 467
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.SingleSearchPageNoNavigation or false
	end
	function module.getGameListCategoryScrollListEnabled() -- Line 470
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.GetGamesListCategoryTabs or false
	end
	function module.getForceTheme() -- Line 473
		--[[ Upvalues[3]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: any_values_result1_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if arg1.ForceTheme and Cryo_upvr.List.find(Cryo_upvr.List.map(any_values_result1_upvr, function(arg1_3) -- Line 474
			return arg1_3:lower()
		end), arg1.ForceTheme:lower()) then
			return arg1.ForceTheme
		end
		return nil
	end
	function module.enableExperienceDetailsPanel() -- Line 483
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.EnableExperienceDetailsPanel or false
	end
	function module.getDisableRegularLogin() -- Line 486
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var62
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var62 = not arg1.EnableRegularLoginWithoutWebViewSupport
			return var62
		end
		if arg1.EnableWebViewSupport or not INLINED() then
			var62 = false
		end
		return var62
	end
	function module.getAllowPlatformAccountSwitching() -- Line 489
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.AllowPlatformAccountSwitching or false
	end
	function module.useLegacyCrossPlayApi() -- Line 492
		--[[ Upvalues[2]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var64 = game_DefineFastFlag_result1_upvr
		if not var64 then
			var64 = arg1.useLegacyCrossPlayApi
			if not var64 then
				var64 = false
			end
		end
		return var64
	end
	function module.useCrossPlaySystemUi() -- Line 495
		--[[ Upvalues[2]:
			[1]: game_DefineFastFlag_result1_upvr_4 (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var65 = game_DefineFastFlag_result1_upvr_4
		if not var65 then
			var65 = arg1.useCrossPlaySystemUi
			if not var65 then
				var65 = false
			end
		end
		return var65
	end
	function module.getCrossPlayUri() -- Line 498
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr_2 (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if game_DefineFastString_result1_upvr_2 ~= "" then
			return game_DefineFastString_result1_upvr_2
		end
		return arg1.crossPlayUri or ""
	end
	function module.getCrossPlayCapabilities() -- Line 505
		--[[ Upvalues[3]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: CrossPlayCapabilities_upvr (copied, readonly)
		]]
		local crossPlayCapabilities = arg1.crossPlayCapabilities
		if not crossPlayCapabilities then
			crossPlayCapabilities = {}
		end
		return Cryo_upvr.List.foldLeft(crossPlayCapabilities, function(arg1_4, arg2) -- Line 506
			--[[ Upvalues[2]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: CrossPlayCapabilities_upvr (copied, readonly)
			]]
			if Cryo_upvr.List.find(arg1_4, arg2) then
				return arg1_4
			end
			return Cryo_upvr.List.join(arg1_4, {CrossPlayCapabilities_upvr[arg2]})
		end, {})
	end
	function module.getCrossPlaySettingsKey() -- Line 516
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr_3 (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if game_DefineFastString_result1_upvr_3 ~= "" then
			return game_DefineFastString_result1_upvr_3
		end
		return arg1.crossPlaySettingsKey or ""
	end
	function module.getCrossPlayQueryParam() -- Line 523
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if game_DefineFastString_result1_upvr ~= "" then
			return game_DefineFastString_result1_upvr
		end
		return arg1.crossPlayQueryParam or ""
	end
	function module.getPromotionalEmailsCheckboxEnabled() -- Line 530
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if game:GetFastFlag("LuaAppPromotionalEmailsCheckboxEnabledInAppPolicy") then
			return arg1.PromotionalEmailsCheckboxEnabled or false
		end
		return false
	end
	function module.getPromotionalEmailsOptInByDefault() -- Line 537
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if game:GetFastFlag("LuaAppPromotionalEmailsCheckboxEnabledInAppPolicy") then
			return arg1.PromotionalEmailsOptInByDefault or false
		end
		return false
	end
	function module.getSupportsOverscan() -- Line 544
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.SupportsOverscan or false
	end
	function module.getPlatformDisplayName() -- Line 547
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.platformDisplayName or ""
	end
	function module.getPlatformAccountName() -- Line 550
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.platformAccountName or nil
	end
	function module.getSupportsProfileSwitching() -- Line 553
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.supportsProfileSwitching or false
	end
	function module.getMountAllOmniFeedItems() -- Line 556
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.mountAllOmniFeedItems or false
	end
	function module.getFriendCodeQrCodeScannerEnabled() -- Line 559
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.FriendCodeQrCodeScannerEnabled or false
	end
	function module.getInviteFriendsDisabled() -- Line 562
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.InviteFriendsDisabled or false
	end
	function module.getRealNamesInDisplayNamesEnabled() -- Line 565
		--[[ Upvalues[2]:
			[1]: FFlagRealNamesInDisplayNameExperimentEnabled_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagRealNamesInDisplayNameExperimentEnabled_upvr then
			return arg1.RealNamesInDisplayNamesEnabled or false
		end
		return nil
	end
	function module.getProfileShareLinkEnabled() -- Line 572
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ProfileShareLinkEnabled
	end
	function module.getProfileCopyLinkEnabled() -- Line 575
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ProfileCopyLinkEnabled
	end
	function module.getEnablePremiumUserFeatures() -- Line 578
		--[[ Upvalues[2]:
			[1]: GetFFlagUseEnablePremiumUserFeaturesAppPolicy_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if GetFFlagUseEnablePremiumUserFeaturesAppPolicy_upvr() then
			return arg1.EnablePremiumUserFeatures or false
		end
		return nil
	end
	function module.getEnableDualLogin() -- Line 584
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.enableDualLogin or false
	end
	function module.getUseExternalBrowserForAgeGuidelines() -- Line 588
		--[[ Upvalues[2]:
			[1]: GetFFlagUseExternalBrowserForAgeGuidelines10ft_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if GetFFlagUseExternalBrowserForAgeGuidelines10ft_upvr() then
			return arg1.UseExternalBrowserForAgeGuidelines or false
		end
		return nil
	end
	function module.getEnableHomePageAgeBlock() -- Line 595
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.EnableHomePageAgeBlock or false
	end
	function module.getEnableUAppAccessBlock() -- Line 598
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.EnableUAppAccessBlock or false
	end
	function module.getUAppBlockPageTextMapKey() -- Line 601
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.UAppBlockPageTextMapKey or nil
	end
	function module.getUAppBlockPageShouldDisableLogOut() -- Line 604
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.UAppBlockPageShouldDisableLogOut or nil
	end
	function module.getContactsToastEnabled() -- Line 607
		--[[ Upvalues[2]:
			[1]: GetFFlagContactsToastPolicyEnabled_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if GetFFlagContactsToastPolicyEnabled_upvr() then
			return arg1.ContactsToastEnabled or false
		end
		return nil
	end
	function module.getEnableProfileQrCode() -- Line 614
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.EnableProfileQrCode or false
	end
	function module.getShowVNGLoginWithExistingAccountQuickLoginButton() -- Line 617
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShowVNGLoginWithExistingAccountQuickLoginButton or false
	end
	function module.getShowVNGAge12Badge() -- Line 620
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShowVNGAge12Badge or false
	end
	function module.getUseVNGUserAgreementPopup() -- Line 623
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.UseVNGUserAgreementPopup or false
	end
	function module.getRedirectBuyRobuxToVNG() -- Line 626
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.RedirectBuyRobuxToVNG or false
	end
	function module.getShowVNGTosForRobuxUpsell() -- Line 629
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShowVNGTosForRobuxUpsell or false
	end
	function module.getBlockVNGU12SignUpOnClientSide() -- Line 632
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.BlockVNGU12SignUpOnClientSide or false
	end
	function module.getVerifiedSignupCountry() -- Line 635
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.verifiedSignupCountry or false
	end
	function module.getParentalConsentAgreementId() -- Line 639
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.parentalConsentAgreementId or ""
	end
	function module.getIsStrictComplianceEnabled() -- Line 643
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.isStrictComplianceEnabled or false
	end
	function module.getUseKoreaKISAUserAgreementPopup() -- Line 647
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.useKoreaKISAUserAgreementPopup or false
	end
	function module.getEnableNotificationPreferencesPage() -- Line 651
		--[[ Upvalues[2]:
			[1]: GetFFlagEnableGateNotificationPreferencesTab_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if GetFFlagEnableGateNotificationPreferencesTab_upvr() then
			return arg1.EnableNotificationPreferencesPage or false
		end
		return nil
	end
	function module.getVNGFormRequired() -- Line 658
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.VNGFormRequired or false
	end
	function module.getUpsellVoiceForPhoneVerification() -- Line 661
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.UpsellVoiceForPhoneVerification or false
	end
	function module.getIsLinkedVRModeAvailable() -- Line 664
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (copied, readonly)
		]]
		local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
		local var70 = true
		if any_GetPlatform_result1 ~= Enum.Platform.Windows then
			if any_GetPlatform_result1 ~= Enum.Platform.UWP then
				var70 = false
			else
				var70 = true
			end
		end
		return var70
	end
	function module.getShouldShowPhoneUpsell() -- Line 668
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShouldShowPhoneUpsell or false
	end
	function module.getTermsOfUseLink() -- Line 671
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.TermsOfUseLink or ""
	end
	function module.getPrivacyPolicyLink() -- Line 674
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.PrivacyPolicyLink or ""
	end
	function module.getVngAppUpsell() -- Line 677
		--[[ Upvalues[2]:
			[1]: FFlagLuaAppHomeVngAppUpsell_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagLuaAppHomeVngAppUpsell_upvr then
			return arg1.VngAppUpsell or false
		end
		return false
	end
	function module.getShouldHideContactImporterUpsell() -- Line 684
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShouldHideContactImporterUpsell or false
	end
	if FFlagMoveCiEncouragedGatingToGuac_upvr then
		-- KONSTANTWARNING: GOTO [627] #486
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [624] 483. Error Block 19 start (CF ANALYSIS FAILED)
	function module.getShouldHideAdditionalCiUpsell() -- Line 689
		--[[ Upvalues[2]:
			[1]: FFlagMoveAdditionalCiUpsellGatingToGuac_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagMoveAdditionalCiUpsellGatingToGuac_upvr then
			return arg1.shouldHideAdditionalCiUpsell or false
		end
		return false
	end
	local function getFriendRequestNicknamesEnabled() -- Line 697, Named "getContactImporterEncouraged"
		--[[ Upvalues[2]:
			[1]: FFlagMoveCiEncouragedGatingToGuac_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagMoveCiEncouragedGatingToGuac_upvr then
			return arg1.contactImporterEncouraged or false
		end
		return false
	end
	module.getContactImporterEncouraged = getFriendRequestNicknamesEnabled
	function getFriendRequestNicknamesEnabled() -- Line 704
		--[[ Upvalues[2]:
			[1]: FFlagFriendRequestNicknames_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagFriendRequestNicknames_upvr then
			return arg1.FriendRequestNicknamesEnabled or false
		end
		return false
	end
	local var73 = getFriendRequestNicknamesEnabled
	module.getFriendRequestNicknamesEnabled = var73
	if FFlagLuaAppParentUpsellPolicy_upvr then
		function var73() -- Line 712
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.shouldShowVpcPlayButtonUpsells or false
		end
	else
		var73 = nil
	end
	module.getShouldShowVpcPlayButtonUpsells = var73
	function module.getRenamePaymentsToSpendingTab() -- Line 716
		--[[ Upvalues[2]:
			[1]: FFlagRenamePaymentsToSpendingTab_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagRenamePaymentsToSpendingTab_upvr then
			return arg1.renamePaymentsToSpendingTab or false
		end
		return false
	end
	function module.getRenamePrivacyToPrivacyContentRestrictionsTab() -- Line 723
		--[[ Upvalues[2]:
			[1]: FFlagRenamePrivacyToPrivacyContentRestrictionsTab_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagRenamePrivacyToPrivacyContentRestrictionsTab_upvr then
			return arg1.renamePrivacyToPrivacyContentRestrictionsTab or false
		end
		return false
	end
	function module.getNotificationsCanReceiveStream() -- Line 732
		--[[ Upvalues[2]:
			[1]: GetFFlagNotificationsComplianceShouldRestrictStream_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if GetFFlagNotificationsComplianceShouldRestrictStream_upvr() then
			return arg1.notificationsCanAccessStream or false
		end
		return nil
	end
	function module.getNotificationsCanReceivePush() -- Line 739
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.notificationsCanAccessPush or false
	end
	function module.getPushNotificationsUpsell() -- Line 742
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShouldShowPushNotificationsUpsell or false
	end
	function module.getNotificationsCanReceiveExperience() -- Line 745
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.notificationsCanAccessExperience == nil then
			return true
		end
		return arg1.notificationsCanAccessExperience
	end
	function module.getDisableResellingCollectiblesForCompliance() -- Line 751
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.DisableResellingCollectiblesForCompliance or false
	end
	function module.getShowIllegalContentReportingUI() -- Line 754
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.ShowIllegalContentReportingUI or false
	end
	function module.getEligibleForContentPostFeed() -- Line 757
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.EligibleForContentPostFeed or false
	end
	function module.getEligibleForExternalContentSharing() -- Line 760
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.EligibleForExternalContentSharing or false
	end
	function module.getEnableContinuousLoad() -- Line 763
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.EnableContinuousLoad or false
	end
	function module.getEnableAggregateLikesFavoritesCount() -- Line 766
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.EnableAggregateLikesFavoritesCount or false
	end
	function module.getShowUpdatedCameraPath() -- Line 769
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.showUpdatedCameraPath or false
	end
	function module.getRenameParentEmailForVerificationUpsell() -- Line 772
		--[[ Upvalues[2]:
			[1]: FFlagRenameParentEmailForVerificationUpsell_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagRenameParentEmailForVerificationUpsell_upvr() then
			return arg1.renameParentEmailForVerificationUpsell or false
		end
		return false
	end
	function module.getKeystrokeCollectionEnabled() -- Line 779
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if game:GetFastFlag("BehaviorCollectionControlEnabled") then
			return arg1.EnableKeystrokeCollection or false
		end
		return false
	end
	function module.getCanUsePlatformChat() -- Line 787
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.CanUsePlatformChat or false
	end
	function module.getCanSeeChatTab() -- Line 791
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.CanSeeChatTab or false
	end
	function module.getShowDisclaimerLinkForUnderageSignupsOnAllSignupPages() -- Line 795
		--[[ Upvalues[2]:
			[1]: GetFFlagEnableMultiPageSignup_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if not GetFFlagEnableMultiPageSignup_upvr() then
			return true
		end
		if arg1.ShowTermsAndPrivacyPolicyLinksForAllPagesU13Signup == nil then
			return true
		end
		return arg1.ShowTermsAndPrivacyPolicyLinksForAllPagesU13Signup
	end
	function module.getAgeCutoffForShowDisclaimerLinkForUnderageSignupsOnAllSignupPages() -- Line 804
		--[[ Upvalues[3]:
			[1]: GetFIntExclusiveFallbackExclusiveUnderageCutoffForMultiPageSignup_upvr (copied, readonly)
			[2]: GetFFlagEnableMultiPageSignup_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local var42_result1 = GetFIntExclusiveFallbackExclusiveUnderageCutoffForMultiPageSignup_upvr()
		if not GetFFlagEnableMultiPageSignup_upvr() then
			return var42_result1
		end
		if arg1.AgeCutoffForShowDisclaimerLinkForUnderageSignupsOnAllSignupPages == nil then
			return var42_result1
		end
		return arg1.AgeCutoffForShowDisclaimerLinkForUnderageSignupsOnAllSignupPages
	end
	function module.getRobuxUpsellFlowMobile() -- Line 814
		--[[ Upvalues[2]:
			[1]: FFlagUseMobileRobuxUpsellFlowForPCGDK_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagUseMobileRobuxUpsellFlowForPCGDK_upvr then
			return arg1.useMobileRobuxUpsellFlow or false
		end
		return false
	end
	function module.getUsePaymentPlatformMicrosoftStore() -- Line 821
		--[[ Upvalues[2]:
			[1]: FFlagEnableMicrosoftStorePaymentsPlatform_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagEnableMicrosoftStorePaymentsPlatform_upvr then
			return arg1.usePaymentPlatformMicrosoftStore or false
		end
		return false
	end
	function module.getMicSettingsDirectionsLocaleKey() -- Line 828
		--[[ Upvalues[2]:
			[1]: FFlagPartyVoiceEnableMicPermissionsBanner_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagPartyVoiceEnableMicPermissionsBanner_upvr then
			return arg1.micSettingsDirectionsLocaleKey or nil
		end
		return nil
	end
	function module.getMicSettingsDeeplinkDirectionsLocaleKey() -- Line 834
		--[[ Upvalues[2]:
			[1]: FFlagPartyVoiceEnableMicPermissionsBanner_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagPartyVoiceEnableMicPermissionsBanner_upvr then
			return arg1.micSettingsDeeplinkDirectionsLocaleKey or nil
		end
		return nil
	end
	function module.getRequiresAppRestartOnMicAccessChange() -- Line 840
		--[[ Upvalues[2]:
			[1]: FFlagPartyVoiceEnableMicPermissionsBanner_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagPartyVoiceEnableMicPermissionsBanner_upvr then
			return arg1.requiresAppRestartOnMicAccessChange or false
		end
		return false
	end
	function module.getRenameFriendsToConnections() -- Line 846
		--[[ Upvalues[2]:
			[1]: FFlagRenameFriendsToConnections_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagRenameFriendsToConnections_upvr then
			return arg1.renameFriendsToConnections or false
		end
		return false
	end
	function module.getCanAccessTrustedContacts() -- Line 852
		--[[ Upvalues[2]:
			[1]: FFlagAddFriendsTCEducationSetup_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagAddFriendsTCEducationSetup_upvr then
			return arg1.canAccessTrustedContacts or false
		end
		return nil
	end
	function module.getExperienceDetailsNoticeType() -- Line 858
		--[[ Upvalues[2]:
			[1]: FFlagLuaAppShowNoticeOnEdp_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagLuaAppShowNoticeOnEdp_upvr then
			return arg1.experienceDetailsNoticeType or nil
		end
		return nil
	end
	function module.getRequiresOSAFriendingEducation() -- Line 864
		--[[ Upvalues[2]:
			[1]: FFlagAddFriendsOSAEducationSubtitle_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagAddFriendsOSAEducationSubtitle_upvr then
			return arg1.requiresOSAFriendingEducation or false
		end
		return nil
	end
	function module.getSocialGraphSyncEnabled() -- Line 870
		--[[ Upvalues[2]:
			[1]: FFlagMigrateSocialGraphSync_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagMigrateSocialGraphSync_upvr then
			return arg1.SocialGraphSyncEnabled or false
		end
		return false
	end
	function module.getAccountDisambiguationDisabled() -- Line 876
		--[[ Upvalues[2]:
			[1]: FFlagShowMultipleUserCredentialsError_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagShowMultipleUserCredentialsError_upvr then
			return arg1.AccountDisambiguationDisabled or false
		end
		return false
	end
	function module.getHasWebViewSupportForFAE() -- Line 882
		--[[ Upvalues[2]:
			[1]: FFlagEnableAmpFAEUpsellSupport_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagEnableAmpFAEUpsellSupport_upvr then
			return arg1.hasWebViewSupportForFAE or false
		end
		return false
	end
	function module.getLinkedAuthEndpointsEnabled() -- Line 888
		--[[ Upvalues[2]:
			[1]: FFlagAddLinkedAuthEndpoints_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagAddLinkedAuthEndpoints_upvr then
			return arg1.LinkedAuthEndpointsEnabled or false
		end
		return false
	end
	function module.getLinkingPlatform() -- Line 894
		--[[ Upvalues[2]:
			[1]: FFlagAddLinkedAuthEndpoints_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagAddLinkedAuthEndpoints_upvr then
			return arg1.LinkingPlatform or nil
		end
		return nil
	end
	do
		return module
	end
	-- KONSTANTERROR: [624] 483. Error Block 19 end (CF ANALYSIS FAILED)
end