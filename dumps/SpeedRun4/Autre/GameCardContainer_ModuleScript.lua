-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:52
-- Luau version 6, Types version 3
-- Time taken: 0.010438 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local Logger = require(Parent.Loggers).Logger
local ReportAnEvent_upvr = require(script.Parent.ReportAnEvent)
local RoactServices = require(Parent.RoactServices).RoactServices
local GameIconReducer_upvr = require(Parent.GameIconRodux).GameIcons.GameIconReducer
local HttpRequest_upvr = require(Parent.HttpRequest)
local tbl_2 = {}
local any_new_result1_upvr = Logger.new(Logger, "GameCardContainer")
local function requestFunction(arg1, arg2, arg3) -- Line 58
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: HttpRequest_upvr (readonly)
	]]
	any_new_result1_upvr:info("Fetching: {}", string.format("[ requestMethod = %q, url = %q ]", arg2, arg1))
	return HttpRequest_upvr.requestFunctions.HttpRbxApi(arg1, arg2, arg3)
end
tbl_2.requestFunction = requestFunction
if require(Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	requestFunction = game:DefineFastInt("GameCardContainerHttpRetryCount", 4)
else
	requestFunction = nil
end
tbl_2.maxRetryCount = requestFunction
local tbl_7_upvr = {
	networkImpl = HttpRequest_upvr.config(tbl_2);
	eventStream = require(Parent.Analytics).AnalyticsReporters.EventStream.new(game:GetService("RbxAnalyticsService"));
	eventIngest = require(Parent.Analytics).AnalyticsReporters.EventIngest.new(game:GetService("EventIngestService"));
	placeId = nil;
	universeId = nil;
	conversationId = nil;
	luaChatPlayTogetherEnabled = nil;
	onDetailsOpened = function() -- Line 100, Named "onDetailsOpened"
	end;
}
local SetGamePlaySession_upvr = require(Parent.RobloxAppSessionization).SetGamePlaySession
local SessionType_upvr = require(Parent.RobloxAppSessionization).SessionType
local GameParams_upvr = require(Parent.ExperienceService).GameParams
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatShutdownBeforeLaunch", false)
local ExperienceService_upvr = require(Parent.ExperienceService).ExperienceService
function tbl_7_upvr.onPlayButtonActivated(arg1) -- Line 102
	--[[ Upvalues[7]:
		[1]: SetGamePlaySession_upvr (readonly)
		[2]: SessionType_upvr (readonly)
		[3]: ReportAnEvent_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: GameParams_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: ExperienceService_upvr (readonly)
	]]
	local placeId = arg1.placeId
	SetGamePlaySession_upvr(arg1.sessionService, SessionType_upvr.StructuralIdentifier.GamePlayFromChat, true)
	ReportAnEvent_upvr(arg1, "clickBtnFromLinkCardInChat", "touch")
	if placeId then
		if game_DefineFastFlag_result1_upvr then
			game:Shutdown()
		end
		ExperienceService_upvr:LaunchExperience(GameParams_upvr.fromParams({
			userId = arg1.senderUserId;
			placeId = placeId;
		}), "PlayGameFromLinkCard", function(arg1_2) -- Line 111
			--[[ Upvalues[3]:
				[1]: arg1 (read and write)
				[2]: Cryo_upvr (copied, readonly)
				[3]: ReportAnEvent_upvr (copied, readonly)
			]]
			local tbl_6 = {}
			tbl_6.joinAttemptId = arg1_2
			arg1 = Cryo_upvr.Dictionary.join(arg1, tbl_6)
			ReportAnEvent_upvr(arg1, "gamePlayIntent", "PlayGameFromLinkCard")
		end)
	end
end
function tbl_7_upvr.openDetails(arg1) -- Line 129
	--[[ Upvalues[1]:
		[1]: ReportAnEvent_upvr (readonly)
	]]
	local universeId_2 = arg1.universeId
	ReportAnEvent_upvr(arg1, "clickLinkCardInChat", "touch")
	arg1.onDetailsOpened()
	arg1.openGameDetailsPage(universeId_2, "LuaChatAssetCard")
	local analytics = arg1.analytics
	if analytics then
		analytics = arg1.analytics.reportOpenGameDetailFromChat
	end
	if analytics then
		analytics(arg1.placeId, arg1.conversationId, universeId_2, "GameDetailFromLinkCard")
	end
end
local function _(arg1, arg2) -- Line 146, Named "getGameIcon"
	--[[ Upvalues[1]:
		[1]: GameIconReducer_upvr (readonly)
	]]
	local var24 = arg1[GameIconReducer_upvr.key][arg2]
	if var24 then
		return var24.url
	end
	return ""
end
local function _(arg1, arg2) -- Line 155, Named "getGameDetails"
	local var25 = arg1.GameDetails[arg2]
	if not var25 then
		var25 = {}
	end
	return var25
end
local function _(arg1, arg2) -- Line 159, Named "getGamePlayabilityStatus"
	local var26 = arg1.PlayabilityStatus[arg2]
	if not var26 then
		var26 = {}
	end
	return var26
end
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useCallback_upvr = React_upvr.useCallback
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local getFFlagSupportGameCardForInExpPlatChat_upvr = require(AppChat.Flags.getFFlagSupportGameCardForInExpPlatChat)
local useIsExternalNavigationAvailable_upvr = require(AppChat.Hooks.useIsExternalNavigationAvailable)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local ApiFetchGameIcons_upvr = require(Parent.GameIconRodux).GameIcons.ApiFetchGameIcons
local ApiFetchGameDetails_upvr = require(Parent.GameDetailRodux).GameDetails.ApiFetchGameDetails
local ApiFetchPlayabilityStatus_upvr = require(Parent.PlayabilityRodux).PlayabilityStatus.ApiFetchPlayabilityStatus
local useEffect_upvr = React_upvr.useEffect
local getFFlagAppChatGameCardEffectDeps_upvr = require(AppChat.Flags.getFFlagAppChatGameCardEffectDeps)
local GameCard_upvr = require(script.Parent.GameCard)
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local getFFlagAppChatHidePlayButtonsInExp_upvr = require(AppChat.Flags.getFFlagAppChatHidePlayButtonsInExp)
local withLocalization_upvr = require(Parent.Localization).withLocalization
function GameCardContainer(arg1) -- Line 163
	--[[ Upvalues[20]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: dependencyArray_upvr (readonly)
		[6]: getFFlagSupportGameCardForInExpPlatChat_upvr (readonly)
		[7]: GameIconReducer_upvr (readonly)
		[8]: useIsExternalNavigationAvailable_upvr (readonly)
		[9]: EnumScreens_upvr (readonly)
		[10]: useDispatch_upvr (readonly)
		[11]: ApiFetchGameIcons_upvr (readonly)
		[12]: ApiFetchGameDetails_upvr (readonly)
		[13]: ApiFetchPlayabilityStatus_upvr (readonly)
		[14]: useEffect_upvr (readonly)
		[15]: getFFlagAppChatGameCardEffectDeps_upvr (readonly)
		[16]: React_upvr (readonly)
		[17]: GameCard_upvr (readonly)
		[18]: useIsInExperience_upvr (readonly)
		[19]: getFFlagAppChatHidePlayButtonsInExp_upvr (readonly)
		[20]: withLocalization_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_7_upvr, arg1)
	local var44_upvr
	if not any_join_result1_upvr.universeId then
		assert("universeId does not exist", "universeId does not exist")
	end
	local var27_result1_upvr = useSelector_upvr(useCallback_upvr(function(arg1_3) -- Line 169
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		local var46 = arg1_3.GameDetails[any_join_result1_upvr.universeId]
		if not var46 then
			var46 = {}
		end
		return var46
	end, dependencyArray_upvr(any_join_result1_upvr.universeId)))
	local useCallback_upvr_result1_upvr = useCallback_upvr(function(arg1_4) -- Line 173
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		local var49 = arg1_4.PlayabilityStatus[any_join_result1_upvr.universeId]
		if not var49 then
			var49 = {}
		end
		return var49
	end, dependencyArray_upvr(any_join_result1_upvr.universeId))
	local var27_result1_upvr_2 = useSelector_upvr(useCallback_upvr_result1_upvr)
	if getFFlagSupportGameCardForInExpPlatChat_upvr() then
		useCallback_upvr_result1_upvr = `rbxthumb://type=GameIcon&id={any_join_result1_upvr.universeId}&w={150}&h={150}`
	else
		useCallback_upvr_result1_upvr = useSelector_upvr
		useCallback_upvr_result1_upvr = useCallback_upvr_result1_upvr(useCallback_upvr(function(arg1_5) -- Line 179
			--[[ Upvalues[2]:
				[1]: any_join_result1_upvr (readonly)
				[2]: GameIconReducer_upvr (copied, readonly)
			]]
			local var53 = arg1_5[GameIconReducer_upvr.key][any_join_result1_upvr.universeId]
			if var53 then
				return var53.url
			end
			return ""
		end, dependencyArray_upvr(any_join_result1_upvr.universeId)))
	end
	local tbl_5 = {EnumScreens_upvr.GameDetail}
	tbl_5 = any_join_result1_upvr.placeId
	local var55_upvr = tbl_5
	if not var55_upvr then
		var55_upvr = var27_result1_upvr.rootPlaceId
	end
	local name_upvr = var27_result1_upvr.name
	local var57_upvr = var27_result1_upvr.description or ""
	local var58_upvr = var27_result1_upvr.price or 0
	local var33_result1_upvr = useDispatch_upvr()
	local function var59_upvr(arg1_6, arg2) -- Line 193
		--[[ Upvalues[5]:
			[1]: getFFlagSupportGameCardForInExpPlatChat_upvr (copied, readonly)
			[2]: var33_result1_upvr (readonly)
			[3]: ApiFetchGameIcons_upvr (copied, readonly)
			[4]: ApiFetchGameDetails_upvr (copied, readonly)
			[5]: ApiFetchPlayabilityStatus_upvr (copied, readonly)
		]]
		if not getFFlagSupportGameCardForInExpPlatChat_upvr() then
			local tbl_4 = {}
			tbl_4[1] = arg2
			var33_result1_upvr(ApiFetchGameIcons_upvr(arg1_6, tbl_4))
		end
		local tbl = {}
		tbl[1] = arg2
		var33_result1_upvr(ApiFetchGameDetails_upvr.Fetch(arg1_6, tbl))
		local tbl_3 = {}
		tbl_3[1] = arg2
		var33_result1_upvr(ApiFetchPlayabilityStatus_upvr.Fetch(arg1_6, tbl_3))
	end
	local function _() -- Line 201, Named "hasAllInformation"
		--[[ Upvalues[5]:
			[1]: var55_upvr (readonly)
			[2]: name_upvr (readonly)
			[3]: var57_upvr (readonly)
			[4]: var27_result1_upvr_2 (readonly)
			[5]: var58_upvr (readonly)
		]]
		if var55_upvr and name_upvr and var57_upvr and var27_result1_upvr_2 and var27_result1_upvr_2.isPlayable ~= nil and var58_upvr then
			return true
		end
		return false
	end
	if getFFlagAppChatGameCardEffectDeps_upvr() then
		var44_upvr = {}
		var44_upvr[1] = any_join_result1_upvr.universeId
		var44_upvr[2] = any_join_result1_upvr.networkImpl
	else
		var44_upvr = {}
	end
	useEffect_upvr(function() -- Line 214
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: var59_upvr (readonly)
		]]
		local universeId = any_join_result1_upvr.universeId
		if not universeId then
		else
			var59_upvr(any_join_result1_upvr.networkImpl, universeId)
		end
	end, var44_upvr)
	local function renderCard_upvr(arg1_7, arg2) -- Line 224, Named "renderCard"
		--[[ Upvalues[8]:
			[1]: React_upvr (copied, readonly)
			[2]: GameCard_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: var55_upvr (readonly)
			[5]: name_upvr (readonly)
			[6]: var57_upvr (readonly)
			[7]: var27_result1_upvr_2 (readonly)
			[8]: var58_upvr (readonly)
		]]
		if not arg1_7.universeId then
			return React_upvr.createElement(GameCard_upvr, arg2)
		end
		local module_2 = {}
		if var55_upvr and name_upvr and var57_upvr then
			if var27_result1_upvr_2 and var27_result1_upvr_2.isPlayable ~= nil and var58_upvr then
				-- KONSTANTWARNING: GOTO [40] #34
			end
		end
		module_2.isLoading = not false
		return React_upvr.createElement(GameCard_upvr, Cryo_upvr.Dictionary.join(arg1_7, arg2, module_2))
	end
	if getFFlagAppChatHidePlayButtonsInExp_upvr() then
		if useIsInExperience_upvr() then
			var44_upvr = false
		else
			var44_upvr = true
		end
	else
		var44_upvr = true
	end
	local var31_result1_upvr = useIsExternalNavigationAvailable_upvr(tbl_5)
	return withLocalization_upvr({
		purchaseGameText = "Feature.GameDetails.Heading.PurchaseGame";
		viewDetailsText = "Feature.Chat.Action.ViewAssetDetails";
		playText = "Common.VisitGame.Label.Play";
		noDescriptionText = "Feature.Chat.Label.NoDescriptionYet";
	})(function(arg1_8) -- Line 247
		--[[ Upvalues[14]:
			[1]: renderCard_upvr (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: any_join_result1_upvr (readonly)
			[4]: var27_result1_upvr (readonly)
			[5]: var27_result1_upvr_2 (readonly)
			[6]: useCallback_upvr_result1_upvr (readonly)
			[7]: var55_upvr (readonly)
			[8]: name_upvr (readonly)
			[9]: var57_upvr (readonly)
			[10]: var58_upvr (readonly)
			[11]: var59_upvr (readonly)
			[12]: var44_upvr (readonly)
			[13]: var31_result1_upvr (readonly)
			[14]: EnumScreens_upvr (copied, readonly)
		]]
		return renderCard_upvr(Cryo_upvr.Dictionary.join(any_join_result1_upvr, {
			details = var27_result1_upvr;
			playabilityStatus = var27_result1_upvr_2;
			gameIcon = useCallback_upvr_result1_upvr;
			placeId = var55_upvr;
			gameName = name_upvr;
			gameDescription = var57_upvr;
			gamePrice = var58_upvr;
			fetchGameData = var59_upvr;
			isPlayButtonEnabled = var44_upvr;
			viewDetailsEnabled = var31_result1_upvr[EnumScreens_upvr.GameDetail];
		}), arg1_8)
	end)
end
return RoactServices.connect({
	game = RoactServices.AppGame;
	sessionService = require(Parent.RoactServiceTags).AppSessionService;
	analytics = require(Parent.RoactServiceTags).RoactAnalyticsCommonGameEvents;
})(React_upvr.memo(GameCardContainer))