-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:59
-- Luau version 6, Types version 3
-- Time taken: 0.009770 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Logger = require(script.Parent.Logger)
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	message = nil;
	userOwnsMessage = false;
	inputBoxRef = React_upvr.createRef();
	unitTestDeviceType = nil;
	unitTestScreenSize = nil;
}
if tbl_upvr.unitTestDeviceType ~= nil then
	Logger:error("Default unit test device type must ALWAYS BE NIL!")
	error("Default unit test device type was not nil.")
end
if tbl_upvr.unitTestScreenSize ~= nil then
	Logger:error("Default unit test screen size must ALWAYS BE NIL!")
	error("Default unit test screen size was not nil.")
end
local Cryo_upvr = require(Parent.Cryo)
local useReplyingToMessageDispatch_upvr = require(AppChat.Components.ChatConversation.MessageInteraction.ReplyingContext.useReplyingToMessageDispatch)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local Signal_upvr = require(Parent.AppCommonLib).Signal
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useDeviceType_upvr = require(Parent.RobloxAppHooks).useDeviceType
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local PeekViewState_upvr = require(Parent.PeekView).PeekViewState
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local DeviceType_upvr = require(Parent.RobloxAppEnums).DeviceType
local default_upvr = require(Parent.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default
local Images_upvr = UIBlox.App.ImageSet.Images
local ContextualMenu_upvr = UIBlox.App.Menu.ContextualMenu
local MenuDirection_upvr = UIBlox.App.Menu.MenuDirection
local PeekView_upvr = require(Parent.PeekView).PeekView
function MessageContextMenu(arg1) -- Line 79
	--[[ Upvalues[19]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useReplyingToMessageDispatch_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Signal_upvr (readonly)
		[7]: useLayerCollector_upvr (readonly)
		[8]: useNavigation_upvr (readonly)
		[9]: useDeviceType_upvr (readonly)
		[10]: useAnalytics_upvr (readonly)
		[11]: useLocalization_upvr (readonly)
		[12]: PeekViewState_upvr (readonly)
		[13]: EventNames_upvr (readonly)
		[14]: DeviceType_upvr (readonly)
		[15]: default_upvr (readonly)
		[16]: Images_upvr (readonly)
		[17]: ContextualMenu_upvr (readonly)
		[18]: MenuDirection_upvr (readonly)
		[19]: PeekView_upvr (readonly)
	]]
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local useReplyingToMessageDispatch_upvr_result1_upvr = useReplyingToMessageDispatch_upvr()
	local any_useRef_result1_upvr = React_upvr.useRef(Signal_upvr.new())
	local var27
	if not var27 then
		var27 = useLayerCollector_upvr().absoluteSize
	end
	local var12_result1_upvr = useNavigation_upvr()
	local unitTestDeviceType_upvr = any_union_result1_upvr.unitTestDeviceType
	if not unitTestDeviceType_upvr then
		unitTestDeviceType_upvr = useDeviceType_upvr()
	end
	local var15_result1_upvr = useLocalization_upvr({
		replyText = "Feature.Chat.Action.Reply";
		copyText = "Feature.Chat.Action.Copy";
		editText = "Feature.Chat.Action.Edit";
		deleteText = "Feature.Chat.Action.Delete";
		reportText = "Feature.Chat.Action.Report";
	})
	local var14_result1_upvr = useAnalytics_upvr()
	local any_useCallback_result1_upvr_7 = React_upvr.useCallback(function(arg1_2) -- Line 103
		--[[ Upvalues[2]:
			[1]: var14_result1_upvr (readonly)
			[2]: any_union_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var34
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 36 start (CF ANALYSIS FAILED)
		if any_union_result1_upvr.message then
			var34 = any_union_result1_upvr.message.conversationId
		else
			var34 = nil
		end
		;({}).conversationId = var34
		if any_union_result1_upvr.message then
			var34 = any_union_result1_upvr.message.senderTargetId
			-- KONSTANTWARNING: GOTO [31] #24
		end
		-- KONSTANTERROR: [2] 3. Error Block 36 end (CF ANALYSIS FAILED)
	end, {any_union_result1_upvr.message})
	local any_useRef_result1_upvr_2 = React_upvr.useRef(false)
	local any_useCallback_result1_upvr_5 = React_upvr.useCallback(function() -- Line 123
		--[[ Upvalues[1]:
			[1]: any_union_result1_upvr (readonly)
		]]
		if any_union_result1_upvr.inputBoxRef and any_union_result1_upvr.inputBoxRef.current then
			any_union_result1_upvr.inputBoxRef.current:CaptureFocus()
		end
	end, {any_union_result1_upvr.inputBoxRef})
	local any_useCallback_result1_upvr_8 = React_upvr.useCallback(function() -- Line 130
		--[[ Upvalues[1]:
			[1]: var12_result1_upvr (readonly)
		]]
		var12_result1_upvr.goBack()
	end, {var12_result1_upvr.goBack})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 135
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		any_useRef_result1_upvr.current:fire()
	end, {any_useRef_result1_upvr.current})
	React_upvr.useEffect(function() -- Line 147
		--[[ Upvalues[4]:
			[1]: any_useCallback_result1_upvr_7 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr (readonly)
			[4]: any_useRef_result1_upvr_2 (readonly)
		]]
		any_useCallback_result1_upvr_7(EventNames_upvr.ChatMessageMenuOpened)
		if any_union_result1_upvr.inputBoxRef and any_union_result1_upvr.inputBoxRef.current then
			any_useRef_result1_upvr_2.current = any_union_result1_upvr.inputBoxRef.current:IsFocused()
		end
	end, {})
	local any_useCallback_result1_upvr_6 = React_upvr.useCallback(function() -- Line 156
		--[[ Upvalues[4]:
			[1]: unitTestDeviceType_upvr (readonly)
			[2]: DeviceType_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr_3 (readonly)
			[4]: any_useCallback_result1_upvr_8 (readonly)
		]]
		if unitTestDeviceType_upvr == DeviceType_upvr.Phone then
			any_useCallback_result1_upvr_3()
		else
			any_useCallback_result1_upvr_8()
		end
	end, {unitTestDeviceType_upvr, any_useCallback_result1_upvr_3, any_useCallback_result1_upvr_8})
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 164
		--[[ Upvalues[3]:
			[1]: any_useCallback_result1_upvr_6 (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: any_useCallback_result1_upvr_5 (readonly)
		]]
		any_useCallback_result1_upvr_6()
		if any_useRef_result1_upvr_2.current then
			any_useCallback_result1_upvr_5()
		end
	end, {any_useCallback_result1_upvr_6, any_useRef_result1_upvr_2.current, any_useCallback_result1_upvr_5})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 172
		--[[ Upvalues[6]:
			[1]: any_useCallback_result1_upvr_7 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr_6 (readonly)
			[4]: useReplyingToMessageDispatch_upvr_result1_upvr (readonly)
			[5]: any_union_result1_upvr (readonly)
			[6]: any_useCallback_result1_upvr_5 (readonly)
		]]
		any_useCallback_result1_upvr_7(EventNames_upvr.ChatMessageMenuReplyBtnActivated)
		any_useCallback_result1_upvr_6()
		useReplyingToMessageDispatch_upvr_result1_upvr(any_union_result1_upvr.message)
		any_useCallback_result1_upvr_5()
	end, {any_useCallback_result1_upvr_7, any_useCallback_result1_upvr_6, useReplyingToMessageDispatch_upvr_result1_upvr, any_union_result1_upvr.message, any_useCallback_result1_upvr_5})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 191
		--[[ Upvalues[5]:
			[1]: any_useCallback_result1_upvr_7 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr_6 (readonly)
			[4]: default_upvr (copied, readonly)
			[5]: any_union_result1_upvr (readonly)
		]]
		any_useCallback_result1_upvr_7(EventNames_upvr.ChatMessageMenuCopyBtnActivated)
		any_useCallback_result1_upvr_6()
		default_upvr:shareText({
			text = any_union_result1_upvr.message.content;
			context = "AppChat-ChatConversation-MessageContextMenu";
		})
	end, {any_useCallback_result1_upvr_7, any_useCallback_result1_upvr_6, any_union_result1_upvr.message.content})
	local any_useCallback_result1_upvr_10 = React_upvr.useCallback(function() -- Line 206
	end)
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function() -- Line 210
	end)
	local any_useCallback_result1_upvr_9 = React_upvr.useCallback(function() -- Line 214
	end)
	local Color_upvr = useStyle_upvr().Tokens.Global.Color
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 219
		--[[ Upvalues[9]:
			[1]: Images_upvr (copied, readonly)
			[2]: var15_result1_upvr (readonly)
			[3]: any_useCallback_result1_upvr_2 (readonly)
			[4]: any_useCallback_result1_upvr (readonly)
			[5]: any_union_result1_upvr (readonly)
			[6]: any_useCallback_result1_upvr_10 (readonly)
			[7]: Color_upvr (readonly)
			[8]: any_useCallback_result1_upvr_4 (readonly)
			[9]: any_useCallback_result1_upvr_9 (readonly)
		]]
		local module = {{
			icon = Images_upvr["icons/placeholder/placeholderOff"];
			text = var15_result1_upvr.replyText;
			onActivated = any_useCallback_result1_upvr_2;
		}, {
			icon = Images_upvr["icons/actions/edit/copy"];
			text = var15_result1_upvr.copyText;
			onActivated = any_useCallback_result1_upvr;
		}}
		if any_union_result1_upvr.userOwnsMessage then
			table.insert(module, {
				icon = Images_upvr["icons/actions/edit/edit"];
				text = var15_result1_upvr.editText;
				onActivated = any_useCallback_result1_upvr_10;
			})
			table.insert(module, {
				icon = Images_upvr["icons/actions/edit/delete"];
				iconColorOverride = Color_upvr.Red.Color3;
				text = var15_result1_upvr.deleteText;
				textColorOverride = Color_upvr.Red.Color3;
				onActivated = any_useCallback_result1_upvr_4;
			})
			return module
		end
		table.insert(module, {
			icon = Images_upvr["icons/placeholder/placeholderOff"];
			iconColorOverride = Color_upvr.Red.Color3;
			text = var15_result1_upvr.reportText;
			textColorOverride = Color_upvr.Red.Color3;
			onActivated = any_useCallback_result1_upvr_9;
		})
		return module
	end, {var15_result1_upvr.replyText, var15_result1_upvr.copyText, var15_result1_upvr.editText, var15_result1_upvr.deleteText, var15_result1_upvr.reportText, any_useCallback_result1_upvr_2, any_useCallback_result1_upvr, any_useCallback_result1_upvr_10, any_useCallback_result1_upvr_4, any_useCallback_result1_upvr_9, any_union_result1_upvr.userOwnsMessage})
	local var79 = #any_useMemo_result1 * 56
	local var80
	local var81
	local var82
	local var83
	local var84
	if unitTestDeviceType_upvr == DeviceType_upvr.Desktop or unitTestDeviceType_upvr == DeviceType_upvr.Tablet then
		var80 = 20
		var81 = var27
		var82 = Vector2.new(0.5, 0.5)
		var83 = UDim.new(0.5, 0)
		var84 = UDim.new(0.5, 0)
	else
		var80 = 0
		var81 = Vector2.new(0, 0)
		var82 = Vector2.new(0.5, 1)
		var83 = UDim.new(0, var79)
		var84 = UDim.new(1, 0)
	end
	local any_createElement_result1 = React_upvr.createElement(ContextualMenu_upvr, {
		screenSize = var81;
		menuDirection = MenuDirection_upvr.Up;
		openPositionY = var83;
		anchorPointOverride = var82;
		horizontalAlignment = Enum.HorizontalAlignment.Center;
		contextMenuWidthOverride = var84;
		borderCornerRadius = var80;
		buttonProps = any_useMemo_result1;
		isElementBackgroundVisible = true;
		isElementDividerVisible = true;
		open = true;
		onDismiss = any_useCallback_result1;
	})
	if unitTestDeviceType_upvr == DeviceType_upvr.Desktop or unitTestDeviceType_upvr == DeviceType_upvr.Tablet then
		return any_createElement_result1
	end
	return React_upvr.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		[React_upvr.Event.Activated] = any_useCallback_result1;
	}, {
		PeekView = React_upvr.createElement(PeekView_upvr, {
			briefViewContentHeight = UDim.new(0, var79);
			fullViewContentHeight = UDim.new(1, -var79);
			mountAsFullView = false;
			mountAnimation = true;
			showDraggerInClosedState = false;
			closeSignal = any_useRef_result1_upvr.current;
			viewStateChanged = React_upvr.useCallback(function(arg1_3, arg2) -- Line 141
				--[[ Upvalues[2]:
					[1]: PeekViewState_upvr (copied, readonly)
					[2]: any_useCallback_result1_upvr_8 (readonly)
				]]
				if arg1_3 == PeekViewState_upvr.Closed then
					any_useCallback_result1_upvr_8()
				end
			end, {any_useCallback_result1_upvr_8});
		}, {any_createElement_result1});
	})
end
return React_upvr.memo(MessageContextMenu)