-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:21
-- Luau version 6, Types version 3
-- Time taken: 0.005616 seconds

local GamePlayButton = script:FindFirstAncestor("GamePlayButton")
local Parent = GamePlayButton.Parent
local RoactUtils = require(Parent.RoactUtils)
local RoactServiceTags = require(Parent.RoactServiceTags)
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactAnalytics_upvr = RoactServiceTags.RoactAnalytics
local AppUpdateService_upvr = RoactServiceTags.AppUpdateService
local AppEventIngestService_upvr = require(Parent.RoactServiceTags).AppEventIngestService
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local useGameInfosSelector_upvr = require(Parent.GameInfosRodux).useGameInfosSelector
local useGameProductInfoSelector_upvr = require(Parent.GameProductInfoRodux).useGameProductInfoSelector
local useRouteName_upvr = require(Parent.Navigation).useRouteName
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = require(Parent.SquadsCore).SquadExternalContractProvider.SquadExternalContractContext
local GetFFlagLuaAppEnableVirtualEventPlaceId_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableVirtualEventPlaceId
local usePlayButtonLaunchGame_upvr = require(GamePlayButton.PlayButtonLaunchChecks.usePlayButtonLaunchGame)
local usePlayButtonLaunchAfterSeventeenPlusUpsell_upvr = require(GamePlayButton.PlayButtonLaunchChecks.usePlayButtonLaunchAfterSeventeenPlusUpsell)
local useAgeVerificationOverlayCallback_upvr = require(GamePlayButton.PlayButtonLaunchChecks.useAgeVerificationOverlayCallback)
local RoactNetworking_upvr = RoactServiceTags.RoactNetworking
local joinGamePlayButton_upvr = require(Parent.DiscoveryAnalytics).Points.joinGamePlayButton
local PlayButtonReferralSource_upvr = require(GamePlayButton.PlayButtonReferralSource)
local GamePlayButtonShareLinkAnalytics_upvr = require(GamePlayButton.GamePlayButtonShareLinkAnalytics)
local PlayButtonStates_upvr = require(GamePlayButton.PlayButtonStates)
local game_GetEngineFeature_result1_upvr_2 = game:GetEngineFeature("AutoUpgradeEngineFeatureOnly")
local CheckForUpdate_upvr = require(Parent.RobloxAppUpdate).Thunks.CheckForUpdate
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CanPerformBinaryUpdateEnabled")
local OpenCentralOverlayForPurchaseGame_upvr = require(GamePlayButton.OpenCentralOverlayForPurchaseGame)
local ApiPostPreparePurchase_upvr = require(GamePlayButton.ApiPostPreparePurchase)
local unlockPlayIntent_upvr = require(Parent.DiscoveryAnalytics).Events.unlockPlayIntent
local CreateExperienceInvite_upvr = require(Parent.Squads).Thunks.CreateExperienceInvite
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("IncludeWaitingForPartyInCondition", false)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 46
	--[[ Upvalues[29]:
		[1]: useRoactService_upvr (readonly)
		[2]: RoactAnalytics_upvr (readonly)
		[3]: AppUpdateService_upvr (readonly)
		[4]: AppEventIngestService_upvr (readonly)
		[5]: useDispatch_upvr (readonly)
		[6]: useSelector_upvr (readonly)
		[7]: useGameInfosSelector_upvr (readonly)
		[8]: useGameProductInfoSelector_upvr (readonly)
		[9]: useRouteName_upvr (readonly)
		[10]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[11]: React_upvr (readonly)
		[12]: SquadExternalContractContext_upvr (readonly)
		[13]: GetFFlagLuaAppEnableVirtualEventPlaceId_upvr (readonly)
		[14]: usePlayButtonLaunchGame_upvr (readonly)
		[15]: usePlayButtonLaunchAfterSeventeenPlusUpsell_upvr (readonly)
		[16]: useAgeVerificationOverlayCallback_upvr (readonly)
		[17]: RoactNetworking_upvr (readonly)
		[18]: joinGamePlayButton_upvr (readonly)
		[19]: PlayButtonReferralSource_upvr (readonly)
		[20]: GamePlayButtonShareLinkAnalytics_upvr (readonly)
		[21]: PlayButtonStates_upvr (readonly)
		[22]: game_GetEngineFeature_result1_upvr_2 (readonly)
		[23]: CheckForUpdate_upvr (readonly)
		[24]: game_GetEngineFeature_result1_upvr (readonly)
		[25]: OpenCentralOverlayForPurchaseGame_upvr (readonly)
		[26]: ApiPostPreparePurchase_upvr (readonly)
		[27]: unlockPlayIntent_upvr (readonly)
		[28]: CreateExperienceInvite_upvr (readonly)
		[29]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6_result1_upvr_2 = useRoactService_upvr(RoactAnalytics_upvr)
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(AppUpdateService_upvr)
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_2) -- Line 60
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_2.GameDetails[arg1]
	end)
	local useGameInfosSelector_upvr_result1 = useGameInfosSelector_upvr(arg1)
	local useGameProductInfoSelector_upvr_result1_upvr = useGameProductInfoSelector_upvr(arg1)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 65
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_3.PlayabilityStatus[arg1]
	end)
	local useRouteName_upvr_result1_upvr = useRouteName_upvr()
	local var44_upvr
	if GetFFlagLuaAppEnableSquadPage_upvr() then
		var44_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	else
		var44_upvr = nil
		local var45_upvw
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var45_upvw = useSelector_upvr_result1.rootPlaceId
		return var45_upvw
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var45_upvw = useGameInfosSelector_upvr_result1.placeId
		return var45_upvw
	end
	if not useSelector_upvr_result1 or not INLINED() or not useGameInfosSelector_upvr_result1 or not INLINED_2() then
		var45_upvw = nil
	end
	if GetFFlagLuaAppEnableVirtualEventPlaceId_upvr() and arg7 ~= '0' then
		local _ = arg7 or var45_upvw
	else
	end
	if not useSelector_upvr_result1 or not useSelector_upvr_result1.name or not useGameInfosSelector_upvr_result1 or not useGameInfosSelector_upvr_result1.name then
		local var47_upvr
	end
	local usePlayButtonLaunchGame_upvr_result1 = usePlayButtonLaunchGame_upvr(arg1, var45_upvw, var45_upvw, arg2, arg3, arg5, arg6)
	local var20_result1_upvr = usePlayButtonLaunchAfterSeventeenPlusUpsell_upvr(useSelector_upvr_result1_upvr, arg1, usePlayButtonLaunchGame_upvr_result1)
	local useAgeVerificationOverlayCallback_upvr_result1_upvr = useAgeVerificationOverlayCallback_upvr(arg1, usePlayButtonLaunchGame_upvr_result1, var20_result1_upvr)
	local var10_result1_upvr = useDispatch_upvr()
	local var6_result1_upvr_3 = useRoactService_upvr(RoactNetworking_upvr)
	local var6_result1_upvr = useRoactService_upvr(AppEventIngestService_upvr)
	local module = {}
	if GetFFlagLuaAppEnableVirtualEventPlaceId_upvr() then
	else
	end
	if GetFFlagLuaAppEnableSquadPage_upvr() then
	else
	end
	module[1] = var6_result1_upvr_2
	module[2] = useRoactService_upvr_result1_upvr
	module[3] = game_GetEngineFeature_result1_upvr
	module[4] = arg1
	module[5] = nil
	module[6] = var45_upvw
	module[7] = var47_upvr
	module[8] = arg2
	module[9] = arg3
	module[10] = useAgeVerificationOverlayCallback_upvr_result1_upvr
	module[11] = var20_result1_upvr
	module[12] = useGameProductInfoSelector_upvr_result1_upvr
	module[13] = useRouteName_upvr_result1_upvr
	module[14] = nil
	return React_upvr.useCallback(function(arg1_4, arg2_2) -- Line 104
		--[[ Upvalues[31]:
			[1]: joinGamePlayButton_upvr (copied, readonly)
			[2]: var6_result1_upvr_2 (readonly)
			[3]: arg2 (readonly)
			[4]: var45_upvw (readonly)
			[5]: arg3 (readonly)
			[6]: PlayButtonReferralSource_upvr (copied, readonly)
			[7]: GamePlayButtonShareLinkAnalytics_upvr (copied, readonly)
			[8]: GetFFlagLuaAppEnableVirtualEventPlaceId_upvr (copied, readonly)
			[9]: var45_upvw (read and write)
			[10]: arg1 (readonly)
			[11]: PlayButtonStates_upvr (copied, readonly)
			[12]: useAgeVerificationOverlayCallback_upvr_result1_upvr (readonly)
			[13]: var20_result1_upvr (readonly)
			[14]: game_GetEngineFeature_result1_upvr_2 (copied, readonly)
			[15]: var10_result1_upvr (readonly)
			[16]: CheckForUpdate_upvr (copied, readonly)
			[17]: useRoactService_upvr_result1_upvr (readonly)
			[18]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[19]: useGameProductInfoSelector_upvr_result1_upvr (readonly)
			[20]: OpenCentralOverlayForPurchaseGame_upvr (copied, readonly)
			[21]: var47_upvr (readonly)
			[22]: useRouteName_upvr_result1_upvr (readonly)
			[23]: ApiPostPreparePurchase_upvr (copied, readonly)
			[24]: var6_result1_upvr_3 (readonly)
			[25]: unlockPlayIntent_upvr (copied, readonly)
			[26]: var6_result1_upvr (readonly)
			[27]: useSelector_upvr_result1_upvr (readonly)
			[28]: GetFFlagLuaAppEnableSquadPage_upvr (copied, readonly)
			[29]: CreateExperienceInvite_upvr (copied, readonly)
			[30]: var44_upvr (readonly)
			[31]: game_DefineFastFlag_result1_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 65 start (CF ANALYSIS FAILED)
		local tbl = {
			isUniversalApp = true;
		}
		tbl.referralSource = arg2
		tbl.placeId = var45_upvw
		local var56
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var56 = arg1_4
			return var56
		end
		if not arg1_4 or not INLINED_3() then
			var56 = "Invalid"
		end
		tbl.buttonState = var56
		var56 = arg3
		tbl.ctx = var56
		joinGamePlayButton_upvr(var6_result1_upvr_2.InfluxDb, "playButtonClicked", tbl)
		-- KONSTANTERROR: [0] 1. Error Block 65 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 24. Error Block 77 start (CF ANALYSIS FAILED)
		local tbl_2 = {}
		var56 = GetFFlagLuaAppEnableVirtualEventPlaceId_upvr()
		if var56 then
		else
		end
		tbl_2.placeId = var45_upvw
		tbl_2.playButtonState = arg1_4
		tbl_2.universeId = arg1
		GamePlayButtonShareLinkAnalytics_upvr(var6_result1_upvr_2, tbl_2)
		-- KONSTANTERROR: [31] 24. Error Block 77 end (CF ANALYSIS FAILED)
	end, module)
end