-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:20
-- Luau version 6, Types version 3
-- Time taken: 0.010673 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local tbl_7_upvr = {
	stiffness = 400;
	damping = 40;
	mass = 1;
}
local React_upvr = require(Parent.React)
local Constants_upvr = require(ChatLineReporting.Common.Constants)
local AnalyticsReducer_upvr = require(ChatLineReporting.Common.AnalyticsReducer)
local GuiService_upvr = game:GetService("GuiService")
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local isSystemMessage_upvr = require(ChatLineReporting.Common.isSystemMessage)
local ReactOtter_upvr = require(Parent.ReactOtter)
local NotificationModalsManager_upvr = require(Parent.NotificationModalsManager)
local Images_upvr = require(Parent.UIBlox).App.ImageSet.Images
local ChatLineReportAnalytics_upvr = require(ChatLineReporting.Common.ChatLineReportAnalytics)
local buildReport_upvr = require(ChatLineReporting.Common.buildReport)
local Players_upvr = game:GetService("Players")
local Cryo_upvr = require(Parent.Cryo)
local ChatLineReportSelectionModal_upvr = require(ChatLineReporting.Components.ChatLineReportSelectionModal)
local DefaultReportDialog_upvr = require(Parent.GenericAbuseReporting).UXFlows.DefaultReportDialog
local ChatLineReportVerbatim_upvr = require(ChatLineReporting.Components.ChatLineReportVerbatim)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ChatLineReportUpdateCategoryEnum", false)
local ReportCategories_upvr = require(ChatLineReporting.Common.ReportCategories)
local ChatLineReportCompleteModal_upvr = require(ChatLineReporting.Components.ChatLineReportCompleteModal)
return function(arg1) -- Line 41, Named "ChatLineReportStepHandler"
	--[[ Upvalues[21]:
		[1]: React_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: AnalyticsReducer_upvr (readonly)
		[4]: GuiService_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: useTokens_upvr (readonly)
		[7]: isSystemMessage_upvr (readonly)
		[8]: ReactOtter_upvr (readonly)
		[9]: NotificationModalsManager_upvr (readonly)
		[10]: Images_upvr (readonly)
		[11]: tbl_7_upvr (readonly)
		[12]: ChatLineReportAnalytics_upvr (readonly)
		[13]: buildReport_upvr (readonly)
		[14]: Players_upvr (readonly)
		[15]: Cryo_upvr (readonly)
		[16]: ChatLineReportSelectionModal_upvr (readonly)
		[17]: DefaultReportDialog_upvr (readonly)
		[18]: ChatLineReportVerbatim_upvr (readonly)
		[19]: game_DefineFastFlag_result1_upvr (readonly)
		[20]: ReportCategories_upvr (readonly)
		[21]: ChatLineReportCompleteModal_upvr (readonly)
	]]
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState(Constants_upvr.ReportSteps.SELECT)
	local any_useState_result1_upvr, any_useState_result2_upvr_6 = React_upvr.useState(nil)
	local any_useReducer_result1_upvr, any_useReducer_result2_upvr = React_upvr.useReducer(AnalyticsReducer_upvr, Constants_upvr.AnalyticsInitialState)
	local any_useState_result1_3_upvr, any_useState_result2_upvr_5 = React_upvr.useState(not GuiService_upvr.MenuIsOpen)
	local any_useState_result1_4_upvr, any_useState_result2_upvr = React_upvr.useState(GuiService_upvr.MenuIsOpen)
	local any_useState_result1_upvr_3, any_useState_result2_upvr_4 = React_upvr.useState(false)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_3 = React_upvr.useState(nil)
	local any_useState_result1, any_useState_result2_upvr_7 = React_upvr.useState("")
	React_upvr.useEffect(function() -- Line 65
		--[[ Upvalues[7]:
			[1]: any_useReducer_result2_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: isSystemMessage_upvr (copied, readonly)
			[5]: GuiService_upvr (copied, readonly)
			[6]: any_useState_result2_upvr (readonly)
			[7]: any_useState_result2_upvr_5 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		any_useReducer_result2_upvr({
			type = Constants_upvr.AnalyticsActions.AccumulateForTimeSpent;
			accumulated_time_ms = workspace:GetServerTimeNow() * 1000;
		})
		any_useReducer_result2_upvr({
			type = Constants_upvr.AnalyticsActions.SetPlaceId;
			place_id = game.PlaceId;
		})
		local ViewportSize_2 = game.Workspace.CurrentCamera.ViewportSize
		local tbl_8 = {
			type = Constants_upvr.AnalyticsActions.SetViewportInformation;
			viewport_size_x = ViewportSize_2.X;
			viewport_size_y = ViewportSize_2.Y;
		}
		local var80 = false
		local var81
		if ViewportSize_2.X < ViewportSize_2.Y then
			if ViewportSize_2.X >= 800 then
				var80 = false
			else
				var80 = true
			end
		end
		tbl_8.is_portrait_mode = var80
		var81(tbl_8)
		var81 = 0
		for _, v in ipairs(arg1.messages) do
			if not isSystemMessage_upvr(v) then
				var81 += 1
				if v.textChannel.Name ~= Constants_upvr.ChannelTypes.General then
				end
			end
		end
		any_useReducer_result2_upvr({
			type = Constants_upvr.AnalyticsActions.SetChatHistoryInformation;
			selectable_chat_history_size = var81;
			total_chat_history_size = #arg1.messages;
			num_non_general_channel_chats = 0 + 1;
		})
		local any_Connect_result1_upvr_3 = GuiService_upvr.MenuOpened:Connect(function() -- Line 104
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: any_useState_result2_upvr_5 (copied, readonly)
			]]
			any_useState_result2_upvr(true)
			any_useState_result2_upvr_5(false)
		end)
		local any_Connect_result1_upvr_2 = GuiService_upvr.MenuClosed:Connect(function() -- Line 108
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: any_useState_result2_upvr_5 (copied, readonly)
			]]
			any_useState_result2_upvr(false)
			any_useState_result2_upvr_5(true)
		end)
		return function() -- Line 112
			--[[ Upvalues[2]:
				[1]: any_Connect_result1_upvr_3 (readonly)
				[2]: any_Connect_result1_upvr_2 (readonly)
			]]
			any_Connect_result1_upvr_3:Disconnect()
			any_Connect_result1_upvr_2:Disconnect()
		end
	end, {})
	local var8_result1_upvr = useLocalization_upvr({
		ChatToastTitleSuccess = {
			name = any_useState_result1;
			"Feature.ReportAbuse.Label.UserTextMuted"
		};
		ChatToastTitleError = {
			name = any_useState_result1;
			"Feature.ReportAbuse.Label.UserTextMutedError"
		};
		ChatToastDescriptionErrorDoesNotExist = {
			name = any_useState_result1;
			"Feature.ReportAbuse.Message.UserTextMutedErrorDoesNotExist"
		};
	})
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(Constants_upvr.ChatLineLocalizationKeys)
	local var9_result1_upvr = useTokens_upvr()
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(1, function() -- Line 118
		--[[ Upvalues[10]:
			[1]: any_useState_result1_3_upvr (readonly)
			[2]: any_useState_result1_upvr_3 (readonly)
			[3]: any_useState_result1_upvr_2 (readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: NotificationModalsManager_upvr (copied, readonly)
			[6]: Images_upvr (copied, readonly)
			[7]: var8_result1_upvr (readonly)
			[8]: useLocalization_upvr_result1_upvr (readonly)
			[9]: var9_result1_upvr (readonly)
			[10]: arg1 (readonly)
		]]
		if not any_useState_result1_3_upvr then
			if any_useState_result1_upvr_3 then
				if any_useState_result1_upvr_2 and any_useState_result1_upvr_2.key == Constants_upvr.SuccessfulMuteKey then
					NotificationModalsManager_upvr.SetUIBloxToast({
						iconImage = Images_upvr[Constants_upvr.ToastIconImageSuccess];
						toastTitle = var8_result1_upvr.ChatToastTitleSuccess;
						toastSubtitle = useLocalization_upvr_result1_upvr.ChatToastDescriptionSuccess;
						sequenceNumber = DateTime.now().UnixTimestamp;
						iconColorStyle = {
							Color = var9_result1_upvr.Color.System.Success.Color3;
							Transparency = 0;
						};
					})
				elseif any_useState_result1_upvr_2 then
					local tbl_14 = {
						iconImage = Images_upvr[Constants_upvr.ToastIconImageError];
					}
					local ChatToastTitleError = var8_result1_upvr.ChatToastTitleError
					tbl_14.toastTitle = ChatToastTitleError
					if any_useState_result1_upvr_2.key == Constants_upvr.ErrorSelfMuteKey then
						ChatToastTitleError = useLocalization_upvr_result1_upvr.ChatToastDescriptionErrorSelf
					else
						ChatToastTitleError = var8_result1_upvr.ChatToastDescriptionErrorDoesNotExist
					end
					tbl_14.toastSubtitle = ChatToastTitleError
					tbl_14.sequenceNumber = DateTime.now().UnixTimestamp
					tbl_14.iconColorStyle = {
						Color = var9_result1_upvr.Color.System.Warning.Color3;
						Transparency = 0;
					}
					NotificationModalsManager_upvr.SetUIBloxToast(tbl_14)
				end
			end
			arg1.unmount()
		end
	end)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 154
		--[[ Upvalues[1]:
			[1]: any_useState_result1_3_upvr (readonly)
		]]
		if any_useState_result1_3_upvr then
			return 0
		end
		return 1
	end, {any_useState_result1_3_upvr})
	React_upvr.useEffect(function() -- Line 158
		--[[ Upvalues[4]:
			[1]: any_useAnimatedBinding_result2_upvr (readonly)
			[2]: ReactOtter_upvr (copied, readonly)
			[3]: any_useMemo_result1_upvr (readonly)
			[4]: tbl_7_upvr (copied, readonly)
		]]
		any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(any_useMemo_result1_upvr, tbl_7_upvr))
	end, {any_useMemo_result1_upvr})
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 169
		--[[ Upvalues[3]:
			[1]: ChatLineReportAnalytics_upvr (copied, readonly)
			[2]: any_useReducer_result1_upvr (readonly)
			[3]: any_useState_result2_upvr_5 (readonly)
		]]
		ChatLineReportAnalytics_upvr(any_useReducer_result1_upvr, 2, false)
		any_useState_result2_upvr_5(false)
	end, {any_useReducer_result1_upvr})
	local module = {
		Active = any_useAnimatedBinding_result1:map(function(arg1_5) -- Line 238
			if arg1_5 ~= 0 then
			else
			end
			return true
		end);
		AutoButtonColor = false;
		BorderSizePixel = 0;
		BackgroundTransparency = any_useAnimatedBinding_result1:map(function(arg1_6) -- Line 243
			return arg1_6 + 0.3
		end);
		BackgroundColor3 = Color3.fromHex("#000000");
		Text = "";
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	}
	local Event = React_upvr.Event
	local var130
	if any_useState_result1_2 == Constants_upvr.ReportSteps.COMPLETE then
		Event = React_upvr.useCallback(function() -- Line 232
			--[[ Upvalues[3]:
				[1]: ChatLineReportAnalytics_upvr (copied, readonly)
				[2]: any_useReducer_result1_upvr (readonly)
				[3]: any_useState_result2_upvr_5 (readonly)
			]]
			ChatLineReportAnalytics_upvr(any_useReducer_result1_upvr, 1, false)
			any_useState_result2_upvr_5(false)
		end, {any_useReducer_result1_upvr})
	else
		Event = any_useCallback_result1
	end
	module[Event.Activated] = Event
	module.ZIndex = 10
	local module_2 = {}
	local tbl_9 = {}
	var130 = 1
	tbl_9.Size = UDim2.new(var130, 0, 1, 0)
	tbl_9.BackgroundTransparency = 1
	tbl_9.Position = any_useAnimatedBinding_result1:map(function(arg1_7) -- Line 259
		--[[ Upvalues[1]:
			[1]: any_useState_result1_4_upvr (readonly)
		]]
		if any_useState_result1_4_upvr then
			return UDim2.new(0, 0, -arg1_7, 0)
		end
		return UDim2.new(0, 0, arg1_7, 0)
	end)
	local tbl_5 = {}
	if any_useState_result1_2 == Constants_upvr.ReportSteps.SELECT then
		var130 = React_upvr.createElement
		var130 = var130(ChatLineReportSelectionModal_upvr, {
			onContinue = React_upvr.useCallback(function() -- Line 163
				--[[ Upvalues[3]:
					[1]: any_useState_result1_upvr (readonly)
					[2]: any_useState_result2_upvr_2 (readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				if any_useState_result1_upvr ~= nil then
					any_useState_result2_upvr_2(Constants_upvr.ReportSteps.SUBMIT)
				end
			end);
			onBack = any_useCallback_result1;
			messages = arg1.messages;
			selectedMessage = any_useState_result1_upvr;
			setSelectedMessage = any_useState_result2_upvr_6;
			analyticsDispatch = any_useReducer_result2_upvr;
		})
	elseif any_useState_result1_2 == Constants_upvr.ReportSteps.SUBMIT then
		var130 = React_upvr.createElement
		local tbl_11 = {
			analyticsContext = "ReportViaChatLine";
			topCustomComponent = React_upvr.createElement(ChatLineReportVerbatim_upvr, {
				selectedMessage = any_useState_result1_upvr;
			});
			onSubmitProps = {
				hasNextSteps = true;
				onProceedToNextStep = React_upvr.useCallback(function(arg1_2, arg2) -- Line 181
					--[[ Upvalues[9]:
						[1]: buildReport_upvr (copied, readonly)
						[2]: Players_upvr (copied, readonly)
						[3]: any_useState_result1_upvr (readonly)
						[4]: Cryo_upvr (copied, readonly)
						[5]: arg1 (readonly)
						[6]: isSystemMessage_upvr (copied, readonly)
						[7]: any_useReducer_result2_upvr (readonly)
						[8]: Constants_upvr (copied, readonly)
						[9]: any_useState_result2_upvr_2 (readonly)
					]]
					local tbl_4_upvr = {}
					Cryo_upvr.Dictionary.map(arg1.messages, function(arg1_3) -- Line 186
						--[[ Upvalues[2]:
							[1]: isSystemMessage_upvr (copied, readonly)
							[2]: tbl_4_upvr (readonly)
						]]
						if not isSystemMessage_upvr(arg1_3) then
							tbl_4_upvr[#tbl_4_upvr + 1] = {
								channel = arg1_3.textChannel;
								messageId = arg1_3.messageId;
							}
						end
					end)
					local tbl_13 = {
						type = Constants_upvr.AnalyticsActions.SetReasonSelection;
					}
					tbl_13.reason_selection = arg1_2
					any_useReducer_result2_upvr(tbl_13)
					local tbl_12 = {}
					local SetCommentAdded = Constants_upvr.AnalyticsActions.SetCommentAdded
					tbl_12.type = SetCommentAdded
					if 0 >= #arg2 then
						SetCommentAdded = false
					else
						SetCommentAdded = true
					end
					tbl_12.comment_added = SetCommentAdded
					any_useReducer_result2_upvr(tbl_12)
					Players_upvr:ReportChatAbuse(tbl_4_upvr, {{
						channel = any_useState_result1_upvr.textChannel;
						messageId = any_useState_result1_upvr.messageId;
					}}, buildReport_upvr(Players_upvr.LocalPlayer.UserId, any_useState_result1_upvr.userId, arg1_2, arg2))
					any_useState_result2_upvr_2(Constants_upvr.ReportSteps.COMPLETE)
					return true
				end, {arg1.messages, any_useState_result1_upvr});
			};
			localizationKeys = Constants_upvr.GenericAbuseReportingLocalizationKeys;
		}
		local tbl_10 = {
			hasPreviousSteps = true;
			onBackToPreviousStep = React_upvr.useCallback(function() -- Line 176
				--[[ Upvalues[3]:
					[1]: any_useState_result2_upvr_2 (readonly)
					[2]: Constants_upvr (copied, readonly)
					[3]: any_useState_result2_upvr_6 (readonly)
				]]
				any_useState_result2_upvr_2(Constants_upvr.ReportSteps.SELECT)
				any_useState_result2_upvr_6(nil)
			end);
		}
		tbl_11.onCloseProps = tbl_10
		if game_DefineFastFlag_result1_upvr then
			tbl_10 = ReportCategories_upvr
		else
			tbl_10 = Constants_upvr.ChatLineReportCategories
		end
		tbl_11.reportCategories = tbl_10
		function tbl_11.onBeforeSubmitAnalytics(arg1_8) -- Line 293
			return arg1_8
		end
		var130 = var130(DefaultReportDialog_upvr, tbl_11)
	elseif any_useState_result1_2 == Constants_upvr.ReportSteps.COMPLETE then
		var130 = React_upvr.createElement
		var130 = var130(ChatLineReportCompleteModal_upvr, {
			localizationKeys = Constants_upvr.GenericAbuseReportingLocalizationKeys;
			onDismiss = React_upvr.useCallback(function(arg1_4) -- Line 218
				--[[ Upvalues[6]:
					[1]: ChatLineReportAnalytics_upvr (copied, readonly)
					[2]: any_useReducer_result1_upvr (readonly)
					[3]: any_useState_result2_upvr_3 (readonly)
					[4]: any_useState_result2_upvr_7 (readonly)
					[5]: any_useState_result2_upvr_4 (readonly)
					[6]: any_useState_result2_upvr_5 (readonly)
				]]
				if arg1_4 then
					ChatLineReportAnalytics_upvr(any_useReducer_result1_upvr, 1, true)
					any_useState_result2_upvr_3(arg1_4)
					any_useState_result2_upvr_7(arg1_4.args.RBX_NAME)
					any_useState_result2_upvr_4(true)
					any_useState_result2_upvr_5(false)
				else
					ChatLineReportAnalytics_upvr(any_useReducer_result1_upvr, 1, false)
					any_useState_result2_upvr_5(false)
				end
			end, {any_useReducer_result1_upvr});
			selectedMessage = any_useState_result1_upvr;
		})
	else
		var130 = nil
	end
	tbl_5.ChatLineReportStep = var130
	module_2.Frame = React_upvr.createElement("Frame", tbl_9, tbl_5)
	return React_upvr.createElement("TextButton", module, module_2)
end