-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:34
-- Luau version 6, Types version 3
-- Time taken: 0.022974 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local ChatLandingModalVariant_upvr = AppChatNetworking_upvr.Constants.ChatLandingModalVariant
local FFlagAppChatEnableTC_upvr = require(Parent.SharedFlags).FFlagAppChatEnableTC
local tbl_18_upvr = {
	fully_eligible_ftux = true;
	party_only_ftux = true;
	phone_verify = true;
	[ChatLandingModalVariant_upvr.AgeAssuranceUpsell] = FFlagAppChatEnableTC_upvr;
}
local tbl_16_upvr = {
	fully_eligible_ftux = "ChatLandingUnfilteredThreadsFtux";
	phone_verify = "ChatLandingPvUpsell";
}
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local useContext_upvr = React_upvr.useContext
local LuaAppNavigationContext_upvr = require(AppChat.LuaAppNavigationContext)
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useState_upvr = React_upvr.useState
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local ModalConfiguration_upvr = require(AppChat.Models.ModalConfiguration)
local getDeepValue2_upvr = require(AppChat.Utils.getDeepValue2)
local FFlagAppChatModalTelemetry_upvr = require(Parent.SharedFlags).FFlagAppChatModalTelemetry
local useTelemetry_upvr = require(AppChat.Telemetry.useTelemetry)
local ChatLandingTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatLandingTelemetryLayer)
local useEffectOnMount_upvr = require(Parent.RoactUtils).Hooks.useEffectOnMount
local useEffect_upvr = React_upvr.useEffect
local ChatLandingModalTelemetry_upvr = require(script.Parent.ChatLandingModalTelemetry)
local useChatIsVisible_upvr = require(AppChat.Hooks.useChatIsVisible)
local useRef_upvr = React_upvr.useRef
local FFlagAppChatModalImpressionImprovements_upvr = require(AppChat.Flags.FFlagAppChatModalImpressionImprovements)
local StatusCodes_upvr = require(Parent.Http).StatusCodes
local useCallback_upvr = React_upvr.useCallback
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local UnfilteredThreadsAMPFeatureName_upvr = require(AppChat.Components.UnfilteredThreadsAMPFeatureName)
local NavigateBack_upvr = require(Parent.NavigationRodux).Thunks.NavigateBack
local AccessResponseEnum_upvr = require(Parent.AmpUpsell).AmpEnums.AccessResponseEnum
local refreshAllUnfilteredThreadsDetails_upvr = require(AppChat.Conversations.Thunks.refreshAllUnfilteredThreadsDetails)
local HttpService_upvr = game:GetService("HttpService")
local FStringCanAccessTrustedContactsAmpFeature_upvr = require(Parent.SharedFlags).FStringCanAccessTrustedContactsAmpFeature
local FStringCanAccessTrustedContactsAmpNameSpace_upvr = require(Parent.SharedFlags).FStringCanAccessTrustedContactsAmpNameSpace
local ModalTelemetry_upvr = require(AppChat.Components.ModalTelemetry)
local FFlagDebugAppChatFae_upvr = require(AppChat.Flags.FFlagDebugAppChatFae)
local OpenTcLearnMoreLink_upvr = require(AppChat.Conversations.Thunks.OpenTcLearnMoreLink)
local Cryo_upvr = require(Parent.Cryo)
local useIsGuiInChatVisible_upvr = require(AppChat.Hooks.useIsGuiInChatVisible)
local useRecordModalSeenWithDelay_upvr = require(AppChat.Hooks.useRecordModalSeenWithDelay)
local FIntAppChatModalSeenImpressionDelayMs_upvr = require(AppChat.Flags.FIntAppChatModalSeenImpressionDelayMs)
local ChatLandingModal_upvr = require(script.Parent.ChatLandingModal)
local Enum_upvr = require(Parent.UIBlox).App.Button.Enum
return React_upvr.memo(function(arg1) -- Line 71, Named "ChatLandingModalContainer"
	--[[ Upvalues[45]:
		[1]: useDispatch_upvr (readonly)
		[2]: useAnalytics_upvr (readonly)
		[3]: useContext_upvr (readonly)
		[4]: LuaAppNavigationContext_upvr (readonly)
		[5]: useNavigation_upvr (readonly)
		[6]: useState_upvr (readonly)
		[7]: useIsInExperience_upvr (readonly)
		[8]: useSelector_upvr (readonly)
		[9]: FFlagAppChatEnableTC_upvr (readonly)
		[10]: ModalConfiguration_upvr (readonly)
		[11]: getDeepValue2_upvr (readonly)
		[12]: tbl_16_upvr (readonly)
		[13]: tbl_18_upvr (readonly)
		[14]: FFlagAppChatModalTelemetry_upvr (readonly)
		[15]: useTelemetry_upvr (readonly)
		[16]: ChatLandingTelemetryLayer_upvr (readonly)
		[17]: useEffectOnMount_upvr (readonly)
		[18]: useEffect_upvr (readonly)
		[19]: ChatLandingModalVariant_upvr (readonly)
		[20]: ChatLandingModalTelemetry_upvr (readonly)
		[21]: useChatIsVisible_upvr (readonly)
		[22]: useRef_upvr (readonly)
		[23]: FFlagAppChatModalImpressionImprovements_upvr (readonly)
		[24]: AppChatNetworking_upvr (readonly)
		[25]: StatusCodes_upvr (readonly)
		[26]: useCallback_upvr (readonly)
		[27]: NavigateDown_upvr (readonly)
		[28]: AppPage_upvr (readonly)
		[29]: UnfilteredThreadsAMPFeatureName_upvr (readonly)
		[30]: NavigateBack_upvr (readonly)
		[31]: AccessResponseEnum_upvr (readonly)
		[32]: refreshAllUnfilteredThreadsDetails_upvr (readonly)
		[33]: HttpService_upvr (readonly)
		[34]: FStringCanAccessTrustedContactsAmpFeature_upvr (readonly)
		[35]: FStringCanAccessTrustedContactsAmpNameSpace_upvr (readonly)
		[36]: ModalTelemetry_upvr (readonly)
		[37]: FFlagDebugAppChatFae_upvr (readonly)
		[38]: OpenTcLearnMoreLink_upvr (readonly)
		[39]: Cryo_upvr (readonly)
		[40]: React_upvr (readonly)
		[41]: useIsGuiInChatVisible_upvr (readonly)
		[42]: useRecordModalSeenWithDelay_upvr (readonly)
		[43]: FIntAppChatModalSeenImpressionDelayMs_upvr (readonly)
		[44]: ChatLandingModal_upvr (readonly)
		[45]: Enum_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var9_result1_upvr_2 = useDispatch_upvr()
	local useAnalytics_upvr_result1_upvr_2 = useAnalytics_upvr()
	local useContext_upvr_result1_upvr_2 = useContext_upvr(LuaAppNavigationContext_upvr)
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local var14_result1_upvr, var14_result2_upvr_2 = useState_upvr({})
	local var15_result1_upvr_2 = useIsInExperience_upvr()
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_9) -- Line 80
		--[[ Upvalues[3]:
			[1]: FFlagAppChatEnableTC_upvr (copied, readonly)
			[2]: ModalConfiguration_upvr (copied, readonly)
			[3]: getDeepValue2_upvr (copied, readonly)
		]]
		local var142
		if FFlagAppChatEnableTC_upvr then
			var142 = ModalConfiguration_upvr.default
		else
			var142 = {}
		end
		return getDeepValue2_upvr(arg1_9, "ChatAppReducer.Modals.chatLandingModal") or var142
	end)
	local modal_variant_upvr_2 = useSelector_upvr_result1.modal_variant
	local getDeepValue2_upvr_result1_2_upvr = getDeepValue2_upvr(useSelector_upvr_result1, "modal_layout.id")
	local getDeepValue2_upvr_result1_upvr_4 = getDeepValue2_upvr(useSelector_upvr_result1, "modal_layout.seen_record_action")
	local getDeepValue2_upvr_result1_upvr_3 = getDeepValue2_upvr(useSelector_upvr_result1, "modal_layout.dismiss_record_action")
	local getDeepValue2_upvr_result1 = getDeepValue2_upvr(useSelector_upvr_result1, "modal_layout.buttons")
	local var149_upvr
	if getDeepValue2_upvr_result1 then
		local _1_2 = getDeepValue2_upvr_result1[1]
	end
	var149_upvr = tbl_16_upvr
	local var151_upvr = var149_upvr[modal_variant_upvr_2]
	var149_upvr = tbl_18_upvr[modal_variant_upvr_2]
	if var149_upvr then
		var149_upvr = not var14_result1_upvr[modal_variant_upvr_2]
	end
	local var152_upvw
	if FFlagAppChatEnableTC_upvr or FFlagAppChatModalTelemetry_upvr then
		var152_upvw = useTelemetry_upvr(ChatLandingTelemetryLayer_upvr.Context)
	end
	useEffectOnMount_upvr(function() -- Line 98
		--[[ Upvalues[3]:
			[1]: useAnalytics_upvr_result1_upvr_2 (readonly)
			[2]: var151_upvr (readonly)
			[3]: var149_upvr (readonly)
		]]
		if useAnalytics_upvr_result1_upvr_2 then
			if var151_upvr and var149_upvr then
				useAnalytics_upvr_result1_upvr_2.fireAnalyticsEvent(`{var151_upvr}Rendered`)
			end
		end
	end)
	if FFlagAppChatEnableTC_upvr or FFlagAppChatModalTelemetry_upvr then
		useEffect_upvr(function() -- Line 104
			--[[ Upvalues[7]:
				[1]: FFlagAppChatEnableTC_upvr (copied, readonly)
				[2]: var149_upvr (readonly)
				[3]: modal_variant_upvr_2 (readonly)
				[4]: ChatLandingModalVariant_upvr (copied, readonly)
				[5]: var152_upvw (read and write)
				[6]: ChatLandingModalTelemetry_upvr (copied, readonly)
				[7]: FFlagAppChatModalTelemetry_upvr (copied, readonly)
			]]
			if FFlagAppChatEnableTC_upvr then
				if var149_upvr and modal_variant_upvr_2 == ChatLandingModalVariant_upvr.AgeAssuranceUpsell then
					var152_upvw.emit(ChatLandingModalTelemetry_upvr.Events.FaeModalShown, {})
				end
			end
			if FFlagAppChatModalTelemetry_upvr and var149_upvr then
				var152_upvw.emit(ChatLandingModalTelemetry_upvr.Events.ModalRendered, {
					modalVariant = modal_variant_upvr_2;
				})
			end
		end, {modal_variant_upvr_2, var149_upvr})
	end
	local useRef_upvr_result1_2_upvr = useRef_upvr(false)
	if not useRef_upvr_result1_2_upvr.current then
		if useChatIsVisible_upvr() then
			local var158_upvr = var149_upvr
		end
	end
	if not FFlagAppChatModalImpressionImprovements_upvr then
		useEffect_upvr(function() -- Line 125
			--[[ Upvalues[7]:
				[1]: var158_upvr (readonly)
				[2]: var9_result1_upvr_2 (readonly)
				[3]: AppChatNetworking_upvr (copied, readonly)
				[4]: getDeepValue2_upvr_result1_upvr_4 (readonly)
				[5]: getDeepValue2_upvr_result1_2_upvr (readonly)
				[6]: StatusCodes_upvr (copied, readonly)
				[7]: useRef_upvr_result1_2_upvr (readonly)
			]]
			if not var158_upvr then
			else
				var9_result1_upvr_2(AppChatNetworking_upvr.rodux.RecordModalSequenceResponse.API(getDeepValue2_upvr_result1_upvr_4, "chat_landing_modal", getDeepValue2_upvr_result1_2_upvr)):andThen(function(arg1_10) -- Line 137
					--[[ Upvalues[2]:
						[1]: StatusCodes_upvr (copied, readonly)
						[2]: useRef_upvr_result1_2_upvr (copied, readonly)
					]]
					if arg1_10 and arg1_10.responseCode == StatusCodes_upvr.OK then
						useRef_upvr_result1_2_upvr.current = true
					end
				end):catch(function(arg1_11) -- Line 142
					warn("Error in ChatLandingModalContainer -> RecordModalSequenceResponse seen: "..tostring(arg1_11))
				end)
			end
		end, {var9_result1_upvr_2, useRef_upvr_result1_2_upvr, getDeepValue2_upvr_result1_upvr_4, getDeepValue2_upvr_result1_2_upvr, var158_upvr})
	end
	if FFlagAppChatEnableTC_upvr then
		local function _() -- Line 186
			--[[ Upvalues[16]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: var152_upvw (read and write)
				[3]: ChatLandingModalTelemetry_upvr (copied, readonly)
				[4]: var9_result1_upvr_2 (readonly)
				[5]: NavigateDown_upvr (copied, readonly)
				[6]: AppPage_upvr (copied, readonly)
				[7]: FStringCanAccessTrustedContactsAmpFeature_upvr (copied, readonly)
				[8]: FStringCanAccessTrustedContactsAmpNameSpace_upvr (copied, readonly)
				[9]: NavigateBack_upvr (copied, readonly)
				[10]: AccessResponseEnum_upvr (copied, readonly)
				[11]: FFlagAppChatModalTelemetry_upvr (copied, readonly)
				[12]: modal_variant_upvr_2 (readonly)
				[13]: ModalTelemetry_upvr (copied, readonly)
				[14]: refreshAllUnfilteredThreadsDetails_upvr (copied, readonly)
				[15]: var15_result1_upvr_2 (readonly)
				[16]: FFlagDebugAppChatFae_upvr (copied, readonly)
			]]
			local any_GenerateGUID_result1 = HttpService_upvr:GenerateGUID(false)
			var152_upvw.emit(ChatLandingModalTelemetry_upvr.Events.TelemetryFaeButtonClick, {
				state = any_GenerateGUID_result1;
				btn = ChatLandingModalTelemetry_upvr.Constants.ConfirmFaeBtn;
			})
			var9_result1_upvr_2(NavigateDown_upvr({
				name = AppPage_upvr.AmpWizardContainer;
				extraProps = {
					featureName = FStringCanAccessTrustedContactsAmpFeature_upvr;
					entryPointEventCtx = ChatLandingModalTelemetry_upvr.Constants.EventStreamCtx;
					metadata = {
						sessionId = any_GenerateGUID_result1;
					};
					nameSpace = FStringCanAccessTrustedContactsAmpNameSpace_upvr;
					completionCallback = function(arg1_13, arg2) -- Line 201, Named "completionCallback"
						--[[ Upvalues[11]:
							[1]: var9_result1_upvr_2 (copied, readonly)
							[2]: NavigateBack_upvr (copied, readonly)
							[3]: AccessResponseEnum_upvr (copied, readonly)
							[4]: FFlagAppChatModalTelemetry_upvr (copied, readonly)
							[5]: var152_upvw (copied, read and write)
							[6]: ChatLandingModalTelemetry_upvr (copied, readonly)
							[7]: modal_variant_upvr_2 (copied, readonly)
							[8]: ModalTelemetry_upvr (copied, readonly)
							[9]: refreshAllUnfilteredThreadsDetails_upvr (copied, readonly)
							[10]: var15_result1_upvr_2 (copied, readonly)
							[11]: FFlagDebugAppChatFae_upvr (copied, readonly)
						]]
						var9_result1_upvr_2(NavigateBack_upvr(true))
						if arg1_13 == AccessResponseEnum_upvr.Granted then
							if FFlagAppChatModalTelemetry_upvr then
								var152_upvw.emit(ChatLandingModalTelemetry_upvr.Events.ModalActionResult, {
									modalVariant = modal_variant_upvr_2;
									action = ModalTelemetry_upvr.Enums.ModalActions.PrimaryCta;
									actionResult = ModalTelemetry_upvr.Enums.ModalActionResults.Success;
								})
							end
							var9_result1_upvr_2(refreshAllUnfilteredThreadsDetails_upvr(nil, var15_result1_upvr_2))
						elseif FFlagAppChatModalTelemetry_upvr then
							var152_upvw.emit(ChatLandingModalTelemetry_upvr.Events.ModalActionResult, {
								modalVariant = modal_variant_upvr_2;
								action = ModalTelemetry_upvr.Enums.ModalActions.PrimaryCta;
								actionResult = ModalTelemetry_upvr.Enums.ModalActionResults.Failure;
							})
						end
						if FFlagDebugAppChatFae_upvr then
							var9_result1_upvr_2({
								type = "DEBUG_DismissChatLandingModal";
							})
						end
					end;
				};
			}))
		end
		local _ = {var9_result1_upvr_2, var15_result1_upvr_2, var152_upvw, modal_variant_upvr_2}
	else
	end
	local var191_upvr = ({
		[ChatLandingModalVariant_upvr.AgeAssuranceUpsell] = useCallback_upvr(function() -- Line 252
			--[[ Upvalues[2]:
				[1]: var9_result1_upvr_2 (readonly)
				[2]: OpenTcLearnMoreLink_upvr (copied, readonly)
			]]
			var9_result1_upvr_2(OpenTcLearnMoreLink_upvr())
		end, {var9_result1_upvr_2});
	})[modal_variant_upvr_2]
	if FFlagAppChatModalTelemetry_upvr then
		local function var192(...) -- Line 310
			--[[ Upvalues[5]:
				[1]: var152_upvw (read and write)
				[2]: ChatLandingModalTelemetry_upvr (copied, readonly)
				[3]: modal_variant_upvr_2 (readonly)
				[4]: ModalTelemetry_upvr (copied, readonly)
				[5]: var191_upvr (readonly)
			]]
			var152_upvw.emit(ChatLandingModalTelemetry_upvr.Events.ModalAction, {
				modalVariant = modal_variant_upvr_2;
				action = ModalTelemetry_upvr.Enums.ModalActions.InlineCta;
			})
			var191_upvr(...)
		end
		local useCallback_upvr_result1_upvw = useCallback_upvr(var192, {var191_upvr, var152_upvw, modal_variant_upvr_2})
	end
	var192 = FFlagAppChatEnableTC_upvr
	local var196_upvr
	if var196_upvr then
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var196_upvr = useSelector_upvr_result1.modal_layout.body.additional_content
			return var196_upvr
		end
		if not useSelector_upvr_result1 or not useSelector_upvr_result1.modal_layout or not useSelector_upvr_result1.modal_layout.body or not INLINED_2() then
			var196_upvr = {}
		end
		local function var197() -- Line 327
			--[[ Upvalues[6]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: var196_upvr (readonly)
				[3]: AppChatNetworking_upvr (copied, readonly)
				[4]: FFlagAppChatModalTelemetry_upvr (copied, readonly)
				[5]: useCallback_upvr_result1_upvw (read and write)
				[6]: var191_upvr (readonly)
			]]
			return Cryo_upvr.List.map(var196_upvr, function(arg1_15) -- Line 328
				--[[ Upvalues[4]:
					[1]: AppChatNetworking_upvr (copied, readonly)
					[2]: FFlagAppChatModalTelemetry_upvr (copied, readonly)
					[3]: useCallback_upvr_result1_upvw (copied, read and write)
					[4]: var191_upvr (copied, readonly)
				]]
				local module = {
					type = arg1_15.type;
					text = arg1_15.text;
				}
				local type = arg1_15.type
				if type == AppChatNetworking_upvr.Constants.ModalContentType.Link then
					if FFlagAppChatModalTelemetry_upvr then
						type = useCallback_upvr_result1_upvw
					else
						type = var191_upvr
					end
					module.onActivated = type
				end
				return module
			end)
		end
	end
	local tbl_20 = {
		phone_verify = useCallback_upvr(function() -- Line 159
			--[[ Upvalues[10]:
				[1]: useAnalytics_upvr_result1_upvr_2 (readonly)
				[2]: var151_upvr (readonly)
				[3]: var9_result1_upvr_2 (readonly)
				[4]: NavigateDown_upvr (copied, readonly)
				[5]: AppPage_upvr (copied, readonly)
				[6]: UnfilteredThreadsAMPFeatureName_upvr (copied, readonly)
				[7]: NavigateBack_upvr (copied, readonly)
				[8]: AccessResponseEnum_upvr (copied, readonly)
				[9]: refreshAllUnfilteredThreadsDetails_upvr (copied, readonly)
				[10]: var15_result1_upvr_2 (readonly)
			]]
			if useAnalytics_upvr_result1_upvr_2 then
				if var151_upvr then
					useAnalytics_upvr_result1_upvr_2.fireAnalyticsEvent(`{var151_upvr}ContinueClicked`)
				end
			end
			local tbl_25 = {
				name = AppPage_upvr.AmpWizardContainer;
			}
			local tbl_17 = {
				featureName = UnfilteredThreadsAMPFeatureName_upvr;
			}
			local function completionCallback(arg1_12, arg2) -- Line 167
				--[[ Upvalues[7]:
					[1]: var9_result1_upvr_2 (copied, readonly)
					[2]: NavigateBack_upvr (copied, readonly)
					[3]: AccessResponseEnum_upvr (copied, readonly)
					[4]: useAnalytics_upvr_result1_upvr_2 (copied, readonly)
					[5]: var151_upvr (copied, readonly)
					[6]: refreshAllUnfilteredThreadsDetails_upvr (copied, readonly)
					[7]: var15_result1_upvr_2 (copied, readonly)
				]]
				var9_result1_upvr_2(NavigateBack_upvr(true))
				if arg1_12 == AccessResponseEnum_upvr.Granted then
					if useAnalytics_upvr_result1_upvr_2 and var151_upvr then
						useAnalytics_upvr_result1_upvr_2.fireAnalyticsEvent(`{var151_upvr}Succeeded`)
					end
					var9_result1_upvr_2(refreshAllUnfilteredThreadsDetails_upvr(nil, var15_result1_upvr_2))
				elseif useAnalytics_upvr_result1_upvr_2 and var151_upvr then
					useAnalytics_upvr_result1_upvr_2.fireAnalyticsEvent(`{var151_upvr}Failed`)
				end
			end
			tbl_17.completionCallback = completionCallback
			tbl_25.extraProps = tbl_17
			var9_result1_upvr_2(NavigateDown_upvr(tbl_25))
		end, {var9_result1_upvr_2, useAnalytics_upvr_result1_upvr_2, var151_upvr});
		fully_eligible_ftux = useCallback_upvr(function() -- Line 238
			--[[ Upvalues[4]:
				[1]: useAnalytics_upvr_result1_upvr_2 (readonly)
				[2]: var151_upvr (readonly)
				[3]: useNavigation_upvr_result1_upvr (readonly)
				[4]: useContext_upvr_result1_upvr_2 (readonly)
			]]
			local var179
			if var179 then
				var179 = var151_upvr
				if var179 then
					var179 = useAnalytics_upvr_result1_upvr_2.fireAnalyticsEvent
					var179(`{var151_upvr}LearnMoreClicked`)
				end
			end
			if useNavigation_upvr_result1_upvr then
				var179 = useNavigation_upvr_result1_upvr.navigate
			else
				var179 = nil
			end
			useContext_upvr_result1_upvr_2.navigateToUnfilteredThreadsLearnMore(var179)
		end, {useContext_upvr_result1_upvr_2, useAnalytics_upvr_result1_upvr_2, useNavigation_upvr_result1_upvr, var151_upvr});
	}
	var197 = ChatLandingModalVariant_upvr
	local var177 = var197
	if FFlagAppChatEnableTC_upvr then
		function var177() -- Line 236
		end
	else
		var177 = nil
	end
	tbl_20[var177.AgeAssuranceUpsell] = var177
	local var204_upvr = tbl_20[modal_variant_upvr_2]
	if FFlagAppChatModalTelemetry_upvr then
		local function _(...) -- Line 355
			--[[ Upvalues[5]:
				[1]: var152_upvw (read and write)
				[2]: ChatLandingModalTelemetry_upvr (copied, readonly)
				[3]: modal_variant_upvr_2 (readonly)
				[4]: ModalTelemetry_upvr (copied, readonly)
				[5]: var204_upvr (readonly)
			]]
			var152_upvw.emit(ChatLandingModalTelemetry_upvr.Events.ModalAction, {
				modalVariant = modal_variant_upvr_2;
				action = ModalTelemetry_upvr.Enums.ModalActions.PrimaryCta;
			})
			var204_upvr(...)
		end
		local _ = {var204_upvr, var152_upvw, modal_variant_upvr_2}
	end
	local useRef_upvr_result1 = useRef_upvr(nil)
	local var209
	if FFlagAppChatModalImpressionImprovements_upvr then
		local tbl_10 = {}
		var209 = var149_upvr
		tbl_10[1] = useRef_upvr_result1.current
		tbl_10[2] = var209
		useRecordModalSeenWithDelay_upvr({
			modalSequence = "chat_landing_modal";
			modalId = getDeepValue2_upvr_result1_2_upvr;
			actionToRecord = getDeepValue2_upvr_result1_upvr_4;
			delayMs = FIntAppChatModalSeenImpressionDelayMs_upvr;
			canRecordAction = useIsGuiInChatVisible_upvr(useRef_upvr_result1, tbl_10) and var149_upvr;
		})
	end
	if FFlagDebugAppChatFae_upvr then
		local function _() -- Line 378
			--[[ Upvalues[1]:
				[1]: var9_result1_upvr_2 (readonly)
			]]
			var9_result1_upvr_2({
				type = "DEBUG_ShowAppChatFaeUpsell";
			})
		end
		local _ = {var9_result1_upvr_2}
	else
	end
	if var149_upvr then
		local module_4 = {}
		var209 = getDeepValue2_upvr(useSelector_upvr_result1, "modal_layout.label.text")
		module_4.titleLabelText = var209
		var209 = getDeepValue2_upvr(useSelector_upvr_result1, "modal_layout.header.text")
		module_4.titleText = var209
		var209 = getDeepValue2_upvr(useSelector_upvr_result1, "modal_layout.body.text")
		module_4.bodyText = var209
		module_4.additionalContent = React_upvr.useMemo(var197, {var196_upvr, var191_upvr, useCallback_upvr_result1_upvw})
		var209 = _1_2
		if var209 then
			var209 = _1_2.text
		end
		module_4.actionText = var209
		if modal_variant_upvr_2 == "fully_eligible_ftux" then
		else
		end
		module_4.buttonType = Enum_upvr.ButtonType.PrimarySystem
		if FFlagAppChatModalTelemetry_upvr then
		else
		end
		module_4.onActivated = var204_upvr
		module_4.onDismissed = useCallback_upvr(function() -- Line 256
			--[[ Upvalues[18]:
				[1]: useAnalytics_upvr_result1_upvr_2 (readonly)
				[2]: var151_upvr (readonly)
				[3]: FFlagAppChatEnableTC_upvr (copied, readonly)
				[4]: modal_variant_upvr_2 (readonly)
				[5]: ChatLandingModalVariant_upvr (copied, readonly)
				[6]: var152_upvw (read and write)
				[7]: ChatLandingModalTelemetry_upvr (copied, readonly)
				[8]: HttpService_upvr (copied, readonly)
				[9]: FFlagAppChatModalTelemetry_upvr (copied, readonly)
				[10]: ModalTelemetry_upvr (copied, readonly)
				[11]: var9_result1_upvr_2 (readonly)
				[12]: AppChatNetworking_upvr (copied, readonly)
				[13]: getDeepValue2_upvr_result1_upvr_3 (readonly)
				[14]: getDeepValue2_upvr_result1_2_upvr (readonly)
				[15]: FFlagDebugAppChatFae_upvr (copied, readonly)
				[16]: var14_result2_upvr_2 (readonly)
				[17]: Cryo_upvr (copied, readonly)
				[18]: var14_result1_upvr (readonly)
			]]
			if useAnalytics_upvr_result1_upvr_2 then
				if var151_upvr then
					useAnalytics_upvr_result1_upvr_2.fireAnalyticsEvent(`{var151_upvr}Dismissed`)
				end
			end
			if FFlagAppChatEnableTC_upvr and modal_variant_upvr_2 == ChatLandingModalVariant_upvr.AgeAssuranceUpsell then
				var152_upvw.emit(ChatLandingModalTelemetry_upvr.Events.TelemetryFaeButtonClick, {
					state = HttpService_upvr:GenerateGUID(false);
					btn = ChatLandingModalTelemetry_upvr.Constants.CancelFaeBtn;
				})
			end
			if FFlagAppChatModalTelemetry_upvr then
				var152_upvw.emit(ChatLandingModalTelemetry_upvr.Events.ModalAction, {
					modalVariant = modal_variant_upvr_2;
					action = ModalTelemetry_upvr.Enums.ModalActions.Dismiss;
				})
			end
			var9_result1_upvr_2(AppChatNetworking_upvr.rodux.RecordModalSequenceResponse.API(getDeepValue2_upvr_result1_upvr_3, "chat_landing_modal", getDeepValue2_upvr_result1_2_upvr)):catch(function(arg1_14) -- Line 278
				warn("Error in ChatLandingModalContainer -> RecordModalSequenceResponse dismissed: "..tostring(arg1_14))
			end)
			if FFlagDebugAppChatFae_upvr and modal_variant_upvr_2 == ChatLandingModalVariant_upvr.AgeAssuranceUpsell then
				var9_result1_upvr_2({
					type = "DEBUG_DismissChatLandingModal";
				})
			else
				var14_result2_upvr_2(Cryo_upvr.Dictionary.join(var14_result1_upvr, {
					[modal_variant_upvr_2] = true;
				}))
			end
		end, {var14_result1_upvr, var14_result2_upvr_2, var9_result1_upvr_2, useAnalytics_upvr_result1_upvr_2, var151_upvr, getDeepValue2_upvr_result1_upvr_3, modal_variant_upvr_2, getDeepValue2_upvr_result1_2_upvr, var152_upvw})
		if not not _1_2 then
		end
		module_4.hideActionButton = not var204_upvr
		module_4.ref = useRef_upvr_result1
		return React_upvr.createElement(ChatLandingModal_upvr, module_4)
	end
	if modal_variant_upvr_2 ~= "none" and modal_variant_upvr_2 ~= nil and not tbl_18_upvr[modal_variant_upvr_2] then
		warn("Unsupported ChatLandingModal variant: "..modal_variant_upvr_2)
	end
	if FFlagDebugAppChatFae_upvr then
		return React_upvr.createElement("TextButton", {
			Text = "DEBUG Show FAE Upsell";
			Size = UDim2.new(0, 200, 0, 50);
			[React_upvr.Event.Activated] = function() -- Line 383
			end;
		})
	end
	return nil
end)