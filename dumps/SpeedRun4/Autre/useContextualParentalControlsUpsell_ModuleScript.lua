-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:17
-- Luau version 6, Types version 3
-- Time taken: 0.008929 seconds

local GamePlayButton = script:FindFirstAncestor("GamePlayButton")
local Parent = GamePlayButton.Parent
local tbl_upvr = {
	SelfUpdateSetting = "SelfUpdateSetting";
	ParentalConsent = "ParentalConsent";
	ContentAgeRestrictionVerification = "ContentAgeRestrictionVerification";
}
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local AppEventIngestService_upvr = require(Parent.RoactServiceTags).AppEventIngestService
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local GameInfosReducer_upvr = require(Parent.GameInfosRodux).GameInfosReducer
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local OpenAmpWizardContainer_upvr = require(Parent.AmpUpsell).OpenAmpWizardContainer
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local OpenUpsellModal_upvr = require(Parent.DiscoveryRouting).OpenUpsellModal
local OpenCloseOnlyInteractiveAlert_upvr = require(Parent.DiscoveryRouting).OpenCloseOnlyInteractiveAlert
local NavigateBack_upvr = require(Parent.NavigationRodux).Thunks.NavigateBack
local CloseCentralOverlay_upvr = require(Parent.CentralOverlay).Thunks.CloseCentralOverlay
local FetchGamePlayButtonData_upvr = require(GamePlayButton.FetchGamePlayButtonData)
local authButtonClick_upvr = require(Parent.AuthAnalytics).Events.authButtonClick
local unlockPlayIntent_upvr = require(Parent.DiscoveryAnalytics).Events.unlockPlayIntent
local PlayabilityStatusEnum_upvr = require(Parent.PlayabilityRodux).Enums.PlayabilityStatusEnum
local FFlagLuaAppParentUpsellPolicy_upvr = require(Parent.SharedFlags).FFlagLuaAppParentUpsellPolicy
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local FetchUserSettingsAndOptions_upvr = require(Parent.GameDetailRodux).FetchUserSettingsAndOptions
local flaggedMutedError_upvr = require(Parent.Loggers).flaggedMutedError
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UnknownUpsellErrorEventHundredthsPercent", 0)
local Dash_upvr = require(Parent.Dash)
return function(arg1, arg2) -- Line 43
	--[[ Upvalues[27]:
		[1]: useRoactService_upvr (readonly)
		[2]: RoactNetworking_upvr (readonly)
		[3]: AppEventIngestService_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: GameInfosReducer_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: OpenAmpWizardContainer_upvr (readonly)
		[10]: NavigateDown_upvr (readonly)
		[11]: AppPage_upvr (readonly)
		[12]: OpenUpsellModal_upvr (readonly)
		[13]: OpenCloseOnlyInteractiveAlert_upvr (readonly)
		[14]: NavigateBack_upvr (readonly)
		[15]: CloseCentralOverlay_upvr (readonly)
		[16]: FetchGamePlayButtonData_upvr (readonly)
		[17]: authButtonClick_upvr (readonly)
		[18]: unlockPlayIntent_upvr (readonly)
		[19]: PlayabilityStatusEnum_upvr (readonly)
		[20]: FFlagLuaAppParentUpsellPolicy_upvr (readonly)
		[21]: useAppPolicy_upvr (readonly)
		[22]: FetchUserSettingsAndOptions_upvr (readonly)
		[23]: flaggedMutedError_upvr (readonly)
		[24]: LoggingProtocol_upvr (readonly)
		[25]: game_DefineFastInt_result1_upvr (readonly)
		[26]: Dash_upvr (readonly)
		[27]: tbl_upvr (readonly)
	]]
	local var5_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(AppEventIngestService_upvr)
	local var8_result1_upvr = useDispatch_upvr()
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 51
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GameInfosReducer_upvr (copied, readonly)
		]]
		local var35 = arg1_2.AgeRecommendations[arg1]
		if var35 and var35.summary and not var35.summary.ageRecommendation then
			return -1
		end
		if var35 and var35.summary and var35.summary.ageRecommendation and var35.summary.ageRecommendation.minimumAge then
			return var35.summary.ageRecommendation.minimumAge
		end
		local var36 = arg1_2.Personalization[GameInfosReducer_upvr.key][arg1]
		if var36 and var36.minimumAge then
			return var36.minimumAge
		end
		return nil
	end)
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		unplayableTitleText = "Feature.ExperienceDetails.RestrictedUnplayableModal.Label.Title";
		unplayableBodyText = "Feature.ExperienceDetails.RestrictedUnplayableModal.Label.Body";
		unplayableButtonText = "Feature.ExperienceDetails.RestrictedUnplayableModal.Action.Ok";
		askYourParentTitleText = "Feature.ExperienceDetails.AskYourParentModal.Label.Title";
		askYourParentBodyText = "Feature.ExperienceDetails.AskYourParentModal.Label.Body";
		askYourParentActionButtonText = "Feature.ExperienceDetails.AskYourParentModal.Action.AskNow";
		askYourParentCancelButtonText = "Feature.ExperienceDetails.AskYourParentModal.Action.Cancel";
		consoleSelfUpdateSettingTitleText = "Feature.ExperienceDetails.UpdateMaturitySettingModal.Console.Label.Title";
		consoleSelfUpdateSettingBodyText = "Feature.ExperienceDetails.UpdateMaturitySettingModal.Console.Label.Body";
		consoleSelfUpdateSettingButtonText = "Feature.ExperienceDetails.UpdateMaturitySettingModal.Console.Action.Ok";
	})
	local any_useCallback_result1_upvr_8 = React_upvr.useCallback(function(arg1_3, arg2_2, arg3, arg4) -- Line 95
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: OpenAmpWizardContainer_upvr (copied, readonly)
		]]
		var8_result1_upvr(OpenAmpWizardContainer_upvr(arg1_3, arg2_2, arg3, arg4))
	end, {var8_result1_upvr})
	local any_useCallback_result1_upvr_10 = React_upvr.useCallback(function(arg1_4, arg2_3, arg3, arg4) -- Line 102
		--[[ Upvalues[3]:
			[1]: var8_result1_upvr (readonly)
			[2]: NavigateDown_upvr (copied, readonly)
			[3]: AppPage_upvr (copied, readonly)
		]]
		local tbl_7 = {
			name = AppPage_upvr.AccountSettingsUpsell;
		}
		local tbl_3 = {}
		tbl_3.featureName = arg1_4
		tbl_3.localizationStrings = arg2_3
		tbl_3.onCloseModal = arg3
		tbl_3.onCancelled = arg4
		tbl_7.extraProps = tbl_3
		var8_result1_upvr(NavigateDown_upvr(tbl_7, true))
	end, {var8_result1_upvr})
	local any_useCallback_result1_upvr_7 = React_upvr.useCallback(function(arg1_5, arg2_4, arg3, arg4, arg5, arg6, arg7) -- Line 117
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: OpenUpsellModal_upvr (copied, readonly)
		]]
		var8_result1_upvr(OpenUpsellModal_upvr(arg1_5, arg2_4, arg3, arg4, arg5, arg6, arg7))
	end, {var8_result1_upvr})
	local any_useCallback_result1_upvr_5 = React_upvr.useCallback(function(arg1_6, arg2_5, arg3, arg4, arg5) -- Line 141
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: OpenCloseOnlyInteractiveAlert_upvr (copied, readonly)
		]]
		var8_result1_upvr(OpenCloseOnlyInteractiveAlert_upvr(arg1_6, arg2_5, arg3, arg4, arg5))
	end, {var8_result1_upvr})
	local any_useCallback_result1_upvr_11 = React_upvr.useCallback(function() -- Line 145
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: NavigateBack_upvr (copied, readonly)
		]]
		var8_result1_upvr(NavigateBack_upvr(true))
	end, {var8_result1_upvr})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 149
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: CloseCentralOverlay_upvr (copied, readonly)
		]]
		var8_result1_upvr(CloseCentralOverlay_upvr())
	end, {var8_result1_upvr})
	local tbl_8 = {var8_result1_upvr, var5_result1_upvr}
	tbl_8[3] = arg1
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 153
		--[[ Upvalues[4]:
			[1]: var8_result1_upvr (readonly)
			[2]: FetchGamePlayButtonData_upvr (copied, readonly)
			[3]: var5_result1_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		var8_result1_upvr(FetchGamePlayButtonData_upvr.Fetch(var5_result1_upvr, arg1, true))
	end, tbl_8)
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 157
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvr_11 (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		any_useCallback_result1_upvr_11()
		any_useCallback_result1_upvr()
	end, {any_useCallback_result1_upvr_11, any_useCallback_result1_upvr})
	local any_useCallback_result1_upvr_9 = React_upvr.useCallback(function() -- Line 164
		--[[ Upvalues[3]:
			[1]: any_useCallback_result1_upvr_3 (readonly)
			[2]: authButtonClick_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr (readonly)
		]]
		any_useCallback_result1_upvr_3()
		authButtonClick_upvr("gameJoinContentMaturityLock", "cancelAskParent")
		any_useCallback_result1_upvr()
	end, {any_useCallback_result1_upvr_3, any_useCallback_result1_upvr})
	local any_useCallback_result1_upvr_6 = React_upvr.useCallback(function(arg1_7) -- Line 173
		--[[ Upvalues[4]:
			[1]: any_useCallback_result1_upvr_3 (readonly)
			[2]: authButtonClick_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr_8 (readonly)
			[4]: any_useCallback_result1_upvr_11 (readonly)
		]]
		any_useCallback_result1_upvr_3()
		authButtonClick_upvr("gameJoinContentMaturityLock", "askParent")
		local tbl_2 = {}
		tbl_2.contentAgeRestriction = arg1_7
		any_useCallback_result1_upvr_8("CanChangeSetting", any_useCallback_result1_upvr_11, tbl_2, "gameJoinContentMaturityLock")
	end, {any_useCallback_result1_upvr_8, any_useCallback_result1_upvr_11, any_useCallback_result1_upvr_3})
	local function var73(arg1_8) -- Line 184
		--[[ Upvalues[4]:
			[1]: unlockPlayIntent_upvr (copied, readonly)
			[2]: useRoactService_upvr_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: PlayabilityStatusEnum_upvr (copied, readonly)
		]]
		local tbl_6 = {}
		tbl_6.universeId = arg1
		tbl_6.upsellName = arg1_8
		tbl_6.playabilityStatus = PlayabilityStatusEnum_upvr.ContextualPlayabilityAgeRecommendationParentalControls
		unlockPlayIntent_upvr(useRoactService_upvr_result1_upvr, tbl_6)
	end
	local tbl_9 = {useRoactService_upvr_result1_upvr}
	tbl_9[2] = arg1
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(var73, tbl_9)
	var73 = nil
	local var77_upvw = var73
	if FFlagLuaAppParentUpsellPolicy_upvr then
		var77_upvw = useAppPolicy_upvr(function(arg1_9) -- Line 194
			return arg1_9.getShouldShowVpcPlayButtonUpsells()
		end)
	end
	local var25_result1_upvr = useAppPolicy_upvr(function(arg1_10) -- Line 199
		return arg1_10.getWebViewSupport()
	end)
	local module = {var5_result1_upvr}
	module[2] = arg1
	module[3] = arg2
	module[4] = useSelector_upvr_result1_upvr
	module[5] = var8_result1_upvr
	module[6] = any_useCallback_result1_upvr_10
	module[7] = any_useCallback_result1_upvr_8
	module[8] = any_useCallback_result1_upvr_5
	module[9] = any_useCallback_result1_upvr_7
	module[10] = any_useCallback_result1_upvr_6
	module[11] = any_useCallback_result1_upvr_2
	module[12] = any_useCallback_result1_upvr_9
	module[13] = any_useCallback_result1_upvr_3
	module[14] = any_useCallback_result1_upvr_4
	module[15] = useLocalization_upvr_result1_upvr.unplayableTitleText
	module[16] = useLocalization_upvr_result1_upvr.unplayableBodyText
	module[17] = useLocalization_upvr_result1_upvr.unplayableButtonText
	module[18] = useLocalization_upvr_result1_upvr.askYourParentTitleText
	module[19] = useLocalization_upvr_result1_upvr.askYourParentBodyText
	module[20] = useLocalization_upvr_result1_upvr.askYourParentActionButtonText
	module[21] = useLocalization_upvr_result1_upvr.askYourParentCancelButtonText
	module[22] = useLocalization_upvr_result1_upvr.consoleSelfUpdateSettingTitleText
	module[23] = useLocalization_upvr_result1_upvr.consoleSelfUpdateSettingBodyText
	module[24] = useLocalization_upvr_result1_upvr.consoleSelfUpdateSettingButtonText
	module[25] = var77_upvw
	module[26] = var25_result1_upvr
	return React_upvr.useCallback(function(arg1_11) -- Line 203
		--[[ Upvalues[24]:
			[1]: FFlagLuaAppParentUpsellPolicy_upvr (copied, readonly)
			[2]: var77_upvw (read and write)
			[3]: arg2 (readonly)
			[4]: any_useCallback_result1_upvr_4 (readonly)
			[5]: FetchUserSettingsAndOptions_upvr (copied, readonly)
			[6]: var5_result1_upvr (readonly)
			[7]: useSelector_upvr_result1_upvr (readonly)
			[8]: flaggedMutedError_upvr (copied, readonly)
			[9]: LoggingProtocol_upvr (copied, readonly)
			[10]: game_DefineFastInt_result1_upvr (copied, readonly)
			[11]: arg1 (readonly)
			[12]: Dash_upvr (copied, readonly)
			[13]: tbl_upvr (copied, readonly)
			[14]: var25_result1_upvr (readonly)
			[15]: any_useCallback_result1_upvr_5 (readonly)
			[16]: useLocalization_upvr_result1_upvr (readonly)
			[17]: any_useCallback_result1_upvr_3 (readonly)
			[18]: any_useCallback_result1_upvr_10 (readonly)
			[19]: any_useCallback_result1_upvr_2 (readonly)
			[20]: any_useCallback_result1_upvr_7 (readonly)
			[21]: any_useCallback_result1_upvr_6 (readonly)
			[22]: any_useCallback_result1_upvr_9 (readonly)
			[23]: any_useCallback_result1_upvr_8 (readonly)
			[24]: any_useCallback_result1_upvr (readonly)
		]]
		if FFlagLuaAppParentUpsellPolicy_upvr and not var77_upvw then
			arg2(arg1_11)
			any_useCallback_result1_upvr_4("GameLaunch")
		else
			FetchUserSettingsAndOptions_upvr(var5_result1_upvr):andThen(function(arg1_12) -- Line 212
				--[[ Upvalues[21]:
					[1]: useSelector_upvr_result1_upvr (copied, readonly)
					[2]: flaggedMutedError_upvr (copied, readonly)
					[3]: arg2 (copied, readonly)
					[4]: arg1_11 (readonly)
					[5]: any_useCallback_result1_upvr_4 (copied, readonly)
					[6]: LoggingProtocol_upvr (copied, readonly)
					[7]: game_DefineFastInt_result1_upvr (copied, readonly)
					[8]: arg1 (copied, readonly)
					[9]: Dash_upvr (copied, readonly)
					[10]: tbl_upvr (copied, readonly)
					[11]: var25_result1_upvr (copied, readonly)
					[12]: any_useCallback_result1_upvr_5 (copied, readonly)
					[13]: useLocalization_upvr_result1_upvr (copied, readonly)
					[14]: any_useCallback_result1_upvr_3 (copied, readonly)
					[15]: any_useCallback_result1_upvr_10 (copied, readonly)
					[16]: any_useCallback_result1_upvr_2 (copied, readonly)
					[17]: any_useCallback_result1_upvr_7 (copied, readonly)
					[18]: any_useCallback_result1_upvr_6 (copied, readonly)
					[19]: any_useCallback_result1_upvr_9 (copied, readonly)
					[20]: any_useCallback_result1_upvr_8 (copied, readonly)
					[21]: any_useCallback_result1_upvr (copied, readonly)
				]]
				local contentAgeRestriction = arg1_12.contentAgeRestriction
				if not contentAgeRestriction or not useSelector_upvr_result1_upvr then
					flaggedMutedError_upvr("ExperienceParentalControlsUpsellUnknownMinimumAge", `Unknown minimum age {useSelector_upvr_result1_upvr} or age restriction setting {contentAgeRestriction} for Contextual Parental Controls upsell on play button click`)
					arg2(arg1_11)
					any_useCallback_result1_upvr_4("GameLaunch")
				else
					assert(useSelector_upvr_result1_upvr, "Minimum age must be present to show correct upsell")
					local tbl_5 = {-- : First try: K:0: attempt to index nil with 't'

					if not tbl_5[useSelector_upvr_result1_upvr] then
						local tbl_4 = {
							eventName = "ExperienceParentalControlsUpsellUnexpectedMinimumAge";
						}
						tbl_4.backends = {LoggingProtocol_upvr.TelemetryBackends.Points}
						tbl_4.throttlingPercentage = game_DefineFastInt_result1_upvr
						tbl_4.lastUpdated = {24, 10, 23}
						tbl_4.description = "Unexpected minimum age for Contextual Parental Controls upsell on play button click"
						local tbl = {
							eventName = "ExperienceParentalControlsUpsellUnexpectedMinimumAge";
							minimumAge = useSelector_upvr_result1_upvr;
						}
						tbl.universeId = arg1
						LoggingProtocol_upvr.default:logRobloxTelemetryEvent(tbl_4, {LoggingProtocol_upvr.default.StandardizedFields.addOsInfo}, tbl)
						arg2(arg1_11)
						any_useCallback_result1_upvr_4("GameLaunch")
						return
					end
					local var91_upvr = tbl_5[useSelector_upvr_result1_upvr]
					local any_find_result1_upvr = Dash_upvr.find(contentAgeRestriction.options, function(arg1_13) -- Line 265
						--[[ Upvalues[1]:
							[1]: var91_upvr (readonly)
						]]
						if not arg1_13 or not arg1_13.option or arg1_13.option.optionValue ~= var91_upvr then
						end
						return false
					end)
					if any_find_result1_upvr then
						local requirement = any_find_result1_upvr.requirement
						if requirement == tbl_upvr.SelfUpdateSetting then
							if not var25_result1_upvr then
								any_useCallback_result1_upvr_5(useLocalization_upvr_result1_upvr.consoleSelfUpdateSettingTitleText, useLocalization_upvr_result1_upvr.consoleSelfUpdateSettingBodyText, any_useCallback_result1_upvr_3, useLocalization_upvr_result1_upvr.consoleSelfUpdateSettingButtonText, true)
							else
								any_useCallback_result1_upvr_10("gameJoinContentMaturityLock", {
									title = "Feature.ExperienceDetails.UpdateMaturitySettingModal.Label.Title";
									message = "Feature.ExperienceDetails.UpdateMaturitySettingModal.Label.Body";
									buttonCancel = "Feature.ExperienceDetails.UpdateMaturitySettingModal.Action.Cancel";
									buttonSettings = "Feature.ExperienceDetails.UpdateMaturitySettingModal.Action.GoToSettings";
								}, any_useCallback_result1_upvr_2, any_useCallback_result1_upvr_2)
							end
						elseif requirement == tbl_upvr.ParentalConsent then
							any_useCallback_result1_upvr_7(useLocalization_upvr_result1_upvr.askYourParentTitleText, useLocalization_upvr_result1_upvr.askYourParentBodyText, useLocalization_upvr_result1_upvr.askYourParentActionButtonText, useLocalization_upvr_result1_upvr.askYourParentCancelButtonText, function() -- Line 296
								--[[ Upvalues[2]:
									[1]: any_useCallback_result1_upvr_6 (copied, readonly)
									[2]: any_find_result1_upvr (readonly)
								]]
								any_useCallback_result1_upvr_6(any_find_result1_upvr.option.optionValue)
							end, any_useCallback_result1_upvr_9, any_useCallback_result1_upvr_9)
						elseif requirement == tbl_upvr.ContentAgeRestrictionVerification then
							any_useCallback_result1_upvr_8("ShouldNotPromptSeventeenPlusSettingVerifications", any_useCallback_result1_upvr, nil, nil)
						else
							flaggedMutedError_upvr("ExperienceParentalControlsUnknownUpsellRequirement", `Unknown requirement {requirement} for ContentAgeRestriction option {any_find_result1_upvr} on play button click`)
							arg2(arg1_11)
						end
						any_useCallback_result1_upvr_4(requirement or "GameLaunch")
						return
					end
					any_useCallback_result1_upvr_5(useLocalization_upvr_result1_upvr.unplayableTitleText, useLocalization_upvr_result1_upvr.unplayableBodyText, any_useCallback_result1_upvr_3, useLocalization_upvr_result1_upvr.unplayableButtonText, true)
					any_useCallback_result1_upvr_4("RestrictedUnplayableOptionNotFound")
				end
			end, function() -- Line 334
				--[[ Upvalues[3]:
					[1]: arg2 (copied, readonly)
					[2]: arg1_11 (readonly)
					[3]: any_useCallback_result1_upvr_4 (copied, readonly)
				]]
				arg2(arg1_11)
				any_useCallback_result1_upvr_4("GameLaunch")
			end)
		end
	end, module)
end