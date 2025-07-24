-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:19
-- Luau version 6, Types version 3
-- Time taken: 0.007500 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local RadioGroup_upvr = Foundation.RadioGroup
local isSystemMessage_upvr = require(ChatLineReporting.Common.isSystemMessage)
local ChatLineReportSelectableLine_upvr = require(ChatLineReporting.Components.ChatLineReportSelectableLine)
local function createChildren_upvr(arg1, arg2, arg3, arg4) -- Line 36, Named "createChildren"
	--[[ Upvalues[4]:
		[1]: isSystemMessage_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: RadioGroup_upvr (readonly)
		[4]: ChatLineReportSelectableLine_upvr (readonly)
	]]
	for i, v in pairs(arg1) do
		if not isSystemMessage_upvr(v) then
			({})[i] = -1 + 1
			local tbl_6 = {
				value = i;
			}
			local tbl_7 = {
				message = v;
			}
			tbl_7.localizedText = arg3
			tbl_7.scrollViewSizeX = arg4
			tbl_6.label = React_upvr.createElement(ChatLineReportSelectableLine_upvr, tbl_7)
			table.insert({}, React_upvr.createElement(RadioGroup_upvr.Item, tbl_6))
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	return {}, {}
end
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(ChatLineReporting.Common.Constants)
local Cryo_upvr = require(Parent.Cryo)
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableExplanationTextChatLineReport", false)
local ChatLineReportModalWindow_upvr = require(ChatLineReporting.Components.ChatLineReportModalWindow)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local ChatLineReportInfo_upvr = require(ChatLineReporting.Components.ChatLineReportInfo)
local Empty_upvr = Foundation.Empty
local ScrollView_upvr = Foundation.ScrollView
local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
return function(arg1) -- Line 63, Named "ChatLineReportSelectionModal"
	--[[ Upvalues[15]:
		[1]: React_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: createChildren_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: useLayerCollector_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
		[8]: ChatLineReportModalWindow_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
		[10]: ChatLineReportInfo_upvr (readonly)
		[11]: Empty_upvr (readonly)
		[12]: ScrollView_upvr (readonly)
		[13]: ScrollBarVisibility_upvr (readonly)
		[14]: RadioGroup_upvr (readonly)
		[15]: PartialPageModal_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1_3_upvr, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
	local any_useState_result1_2, any_useState_result2_upvr_3 = React_upvr.useState(0)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	local useLocalization_upvr_result1 = useLocalization_upvr(Constants_upvr.ChatLineLocalizationKeys)
	local createChildren_upvr_result1, createChildren_result2_upvr = createChildren_upvr(arg1.messages, arg1.setSelectedMessage, useLocalization_upvr_result1, any_useState_result1)
	local any_isEmpty_result1 = Cryo_upvr.isEmpty(createChildren_upvr_result1)
	local useLayerCollector_upvr_result1 = useLayerCollector_upvr()
	local absoluteSize = useLayerCollector_upvr_result1.absoluteSize
	React_upvr.useEffect(function() -- Line 78
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_3 (readonly)
			[2]: any_useState_result2_upvr_3 (readonly)
		]]
		if any_useRef_result1_upvr_3.current then
			any_useRef_result1_upvr_3.current:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 80
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr_3 (copied, readonly)
					[2]: any_useRef_result1_upvr_3 (copied, readonly)
				]]
				any_useState_result2_upvr_3(any_useRef_result1_upvr_3.current.AbsoluteSize.Y)
			end)
		end
	end, {any_useRef_result1_upvr_3.current, absoluteSize})
	React_upvr.useEffect(function() -- Line 86
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if any_useRef_result1_upvr_2.current then
			any_useRef_result1_upvr_2.current:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 88
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: any_useRef_result1_upvr_2 (copied, readonly)
				]]
				any_useState_result2_upvr(any_useRef_result1_upvr_2.current.AbsoluteSize.X)
			end)
		end
	end, {any_useRef_result1_upvr_2.current, absoluteSize})
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 95
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: Constants_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr_2.current then
			local class_ScrollingFrame = any_useRef_result1_upvr_2.current:FindFirstChildWhichIsA("ScrollingFrame", true)
			if class_ScrollingFrame then
				any_useRef_result1_upvr.current = class_ScrollingFrame
				any_useRef_result1_upvr.current.CanvasPosition = Vector2.new(0, Constants_upvr.SelectionModalCanvasPositionTopPadding)
			end
		end
	end, {any_useRef_result1_upvr_2.current})
	if game_DefineFastFlag_result1_upvr then
		local module_4 = {
			screenSize = Vector2.new(absoluteSize.X, absoluteSize.Y - useLayerCollector_upvr_result1.insets.top);
			position = UDim2.new(0.5, 0, 0, useLayerCollector_upvr_result1.insets.top + Constants_upvr.SelectionModalPositionOffset);
			anchorPoint = Vector2.new(0.5, 0);
			title = useLocalization_upvr_result1.ChatSelectionModalTitle;
			onCloseClicked = arg1.onBack;
			onInfoClicked = React_upvr.useCallback(function() -- Line 106
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr_2 (readonly)
					[2]: any_useState_result1_3_upvr (readonly)
				]]
				any_useState_result2_upvr_2(not any_useState_result1_3_upvr)
			end, {any_useState_result1_3_upvr, any_useState_result2_upvr_2});
		}
		local tbl_12 = {}
		local tbl_10 = {}
		local tbl = {
			buttonType = ButtonType_upvr.Secondary;
		}
		local tbl_2 = {
			onActivated = arg1.onContinue;
			text = useLocalization_upvr_result1.ChatSelectionModalButton;
		}
		local var60 = any_isEmpty_result1
		if not var60 then
			if arg1.selectedMessage ~= nil then
				var60 = false
			else
				var60 = true
			end
		end
		tbl_2.isDisabled = var60
		tbl.props = tbl_2
		tbl_10[1] = tbl
		tbl_12.buttons = tbl_10
		module_4.buttonStackProps = tbl_12
		local module_3 = {
			infoView = React_upvr.createElement(ChatLineReportInfo_upvr, {
				visible = any_useState_result1_3_upvr;
			});
		}
		if any_isEmpty_result1 then
			local _ = React_upvr.createElement(Empty_upvr, {})
		else
			local tbl_5 = {
				UIPadding = React_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 12);
					PaddingBottom = UDim.new(0, 12);
				});
			}
			local tbl_11 = {}
			local function onValueChanged(arg1_2) -- Line 160
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: Constants_upvr (copied, readonly)
					[3]: createChildren_result2_upvr (readonly)
				]]
				arg1.setSelectedMessage(arg1.messages[arg1_2])
				arg1.analyticsDispatch({
					type = Constants_upvr.AnalyticsActions.SetChatLineSelected;
					selected_chat_line_index = createChildren_result2_upvr[arg1_2];
				})
			end
			tbl_11.onValueChanged = onValueChanged
			tbl_11.ref = any_useRef_result1_upvr_3
			tbl_5.RadioGroup = React_upvr.createElement(RadioGroup_upvr.Root, tbl_11, createChildren_upvr_result1)
		end
		module_3.messageView = React_upvr.createElement(ScrollView_upvr, {
			Size = UDim2.new(1, 0, 0, math.min(absoluteSize.Y - useLayerCollector_upvr_result1.insets.top - Constants_upvr.SelectionModalScreenSizeOffset, any_useState_result1_2 + Constants_upvr.SelectionModalRadioGroupOffset));
			scroll = {
				AutomaticCanvasSize = Enum.AutomaticSize.Y;
				CanvasSize = UDim2.new(1, 0, 0, 0);
				scrollBarVisibility = ScrollBarVisibility_upvr.Always;
				ScrollingDirection = Enum.ScrollingDirection.Y;
			};
			ref = any_useRef_result1_upvr_2;
			LayoutOrder = 1;
		}, tbl_5)
		return React_upvr.createElement(ChatLineReportModalWindow_upvr, module_4, module_3)
	end
	local module_2 = {
		screenSize = Vector2.new(absoluteSize.X, absoluteSize.Y - useLayerCollector_upvr_result1.insets.top);
		position = UDim2.new(0.5, 0, 0, useLayerCollector_upvr_result1.insets.top + Constants_upvr.SelectionModalPositionOffset);
		anchorPoint = Vector2.new(0.5, 0);
		title = useLocalization_upvr_result1.ChatSelectionModalTitle;
		onCloseClicked = arg1.onBack;
	}
	local tbl_9 = {}
	local tbl_4 = {}
	local tbl_3 = {
		buttonType = ButtonType_upvr.Secondary;
	}
	local tbl_8 = {
		onActivated = arg1.onContinue;
		text = useLocalization_upvr_result1.ChatSelectionModalButton;
	}
	local var75 = any_isEmpty_result1
	if not var75 then
		if arg1.selectedMessage ~= nil then
			var75 = false
		else
			var75 = true
		end
	end
	tbl_8.isDisabled = var75
	tbl_3.props = tbl_8
	tbl_4[1] = tbl_3
	tbl_9.buttons = tbl_4
	module_2.buttonStackProps = tbl_9
	local module = {}
	if any_isEmpty_result1 then
	else
	end
	module.messageView = React_upvr.createElement(ScrollView_upvr, {
		Size = UDim2.new(1, 0, 0, math.min(absoluteSize.Y - useLayerCollector_upvr_result1.insets.top - Constants_upvr.SelectionModalScreenSizeOffset, any_useState_result1_2 + Constants_upvr.SelectionModalRadioGroupOffset));
		scroll = {
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
			CanvasSize = UDim2.new(1, 0, 0, 0);
			scrollBarVisibility = ScrollBarVisibility_upvr.Always;
			ScrollingDirection = Enum.ScrollingDirection.Y;
		};
		tag = "padding-top-medium padding-bottom-medium";
		ref = any_useRef_result1_upvr_2;
	}, {
		RadioGroup = React_upvr.createElement(RadioGroup_upvr.Root, {
			onValueChanged = function(arg1_3) -- Line 212, Named "onValueChanged"
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: Constants_upvr (copied, readonly)
					[3]: createChildren_result2_upvr (readonly)
				]]
				arg1.setSelectedMessage(arg1.messages[arg1_3])
				arg1.analyticsDispatch({
					type = Constants_upvr.AnalyticsActions.SetChatLineSelected;
					selected_chat_line_index = createChildren_result2_upvr[arg1_3];
				})
			end;
			ref = any_useRef_result1_upvr_3;
		}, createChildren_upvr_result1);
	})
	return React_upvr.createElement(PartialPageModal_upvr, module_2, module)
end