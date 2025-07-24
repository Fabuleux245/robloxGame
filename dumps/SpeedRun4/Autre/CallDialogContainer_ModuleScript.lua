-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:06
-- Luau version 6, Types version 3
-- Time taken: 0.006602 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local CallProtocol_upvr = require(CorePackages.Workspace.Packages.CallProtocol)
local ContactList = CoreGui_upvr:WaitForChild("RobloxGui").Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local tbl_6_upvr = {
	callProtocol = CallProtocol_upvr.CallProtocol.default;
}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local React_upvr = require(CorePackages.Packages.React)
local useSelector_upvr = dependencies.Hooks.useSelector
local ErrorType_upvr = require(ContactList.Enums.ErrorType)
local OpenOrUpdateDialog_upvr = require(ContactList.Actions.OpenOrUpdateDialog)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local Roact_upvr = require(CorePackages.Packages.Roact)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local CloseDialog_upvr = require(ContactList.Actions.CloseDialog)
return function(arg1) -- Line 41, Named "CallDialogContainer"
	--[[ Upvalues[17]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: useAnalytics_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: useSelector_upvr (readonly)
		[8]: CallProtocol_upvr (readonly)
		[9]: ErrorType_upvr (readonly)
		[10]: OpenOrUpdateDialog_upvr (readonly)
		[11]: RobloxTranslator_upvr (readonly)
		[12]: EventNamesEnum_upvr (readonly)
		[13]: Roact_upvr (readonly)
		[14]: CoreGui_upvr (readonly)
		[15]: InteractiveAlert_upvr (readonly)
		[16]: ButtonType_upvr (readonly)
		[17]: CloseDialog_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_6_upvr, arg1)
	local Theme = useStyle_upvr().Theme
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(Vector2.new(0, 0))
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	React_upvr.useEffect(function() -- Line 76
		--[[ Upvalues[8]:
			[1]: any_join_result1_upvr (readonly)
			[2]: CallProtocol_upvr (copied, readonly)
			[3]: ErrorType_upvr (copied, readonly)
			[4]: useDispatch_upvr_result1_upvr (readonly)
			[5]: OpenOrUpdateDialog_upvr (copied, readonly)
			[6]: RobloxTranslator_upvr (copied, readonly)
			[7]: useAnalytics_upvr_result1_upvr (readonly)
			[8]: EventNamesEnum_upvr (copied, readonly)
		]]
		local any_listenToHandleCallMessage_result1_upvr = any_join_result1_upvr.callProtocol:listenToHandleCallMessage(function(arg1_10) -- Line 77
			--[[ Upvalues[7]:
				[1]: CallProtocol_upvr (copied, readonly)
				[2]: ErrorType_upvr (copied, readonly)
				[3]: useDispatch_upvr_result1_upvr (copied, readonly)
				[4]: OpenOrUpdateDialog_upvr (copied, readonly)
				[5]: RobloxTranslator_upvr (copied, readonly)
				[6]: useAnalytics_upvr_result1_upvr (copied, readonly)
				[7]: EventNamesEnum_upvr (copied, readonly)
			]]
			if arg1_10.messageType == CallProtocol_upvr.Enums.MessageType.CallError.rawValue() then
				if arg1_10.errorType == ErrorType_upvr.CallerIsInAnotherCall then
					useDispatch_upvr_result1_upvr(OpenOrUpdateDialog_upvr(RobloxTranslator_upvr:FormatByKey("Feature.Call.Error.Title.CouldntMakeCall"), RobloxTranslator_upvr:FormatByKey("Feature.Call.Error.Description.AlreadyInCall")))
				elseif arg1_10.errorType == ErrorType_upvr.CalleeIsInAnotherCall then
					useDispatch_upvr_result1_upvr(OpenOrUpdateDialog_upvr(RobloxTranslator_upvr:FormatByKey("Feature.Call.Error.Title.FriendBusy"), RobloxTranslator_upvr:FormatByKey("Feature.Call.Error.Description.FriendBusy", {
						calleeCombinedName = arg1_10.callInfo.calleeCombinedName;
					})))
				elseif arg1_10.errorType == ErrorType_upvr.UniverseIsNotVoiceEnabled or arg1_10.errorType == ErrorType_upvr.PlaceIsNotVoiceEnabled then
					useDispatch_upvr_result1_upvr(OpenOrUpdateDialog_upvr(RobloxTranslator_upvr:FormatByKey("Feature.Call.Error.Title.ExperienceError"), RobloxTranslator_upvr:FormatByKey("Feature.Call.Description.ExperienceError")))
					useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookCallFriendFailed, {
						eventTimestampMs = os.time() * 1000;
						calleeUserId = arg1_10.callInfo.calleeId;
						callerUserId = arg1_10.callInfo.callerId;
						errorMsg = "Universe or place is not voice enabled.";
					})
				elseif arg1_10.errorType == ErrorType_upvr.CallerIsNotVoiceEnabled then
					useDispatch_upvr_result1_upvr(OpenOrUpdateDialog_upvr(RobloxTranslator_upvr:FormatByKey("Feature.Call.Modal.EnableChatVoiceTitle"), RobloxTranslator_upvr:FormatByKey("Feature.Call.Modal.EnableChatVoiceBody")))
					useAnalytics_upvr_result1_upvr.fireEvent(EventNamesEnum_upvr.PhoneBookCallFriendFailed, {
						eventTimestampMs = os.time() * 1000;
						calleeUserId = arg1_10.callInfo.calleeId;
						callerUserId = arg1_10.callInfo.callerId;
						errorMsg = "User is not voice enabled.";
					})
				else
					useDispatch_upvr_result1_upvr(OpenOrUpdateDialog_upvr(RobloxTranslator_upvr:FormatByKey("Feature.Call.Error.Label.OhNo"), RobloxTranslator_upvr:FormatByKey("Feature.Call.Error.Description.Generic")))
				end
				if arg1_10.errorType == ErrorType_upvr.UniverseAgeIsNotValid then
					warn("Experience must be at least one week old to place a call")
					return
				end
				if arg1_10.errorType == ErrorType_upvr.ReservedServerAccessCodeIsNotProvided then
					warn("Reserved server access code was not provided via OnCallInviteInvoked callback")
				end
			end
		end)
		return function() -- Line 146
			--[[ Upvalues[1]:
				[1]: any_listenToHandleCallMessage_result1_upvr (readonly)
			]]
			any_listenToHandleCallMessage_result1_upvr:Disconnect()
		end
	end, {any_join_result1_upvr.callProtocol})
	local module = {}
	local tbl_5 = {
		Overlay = React_upvr.createElement("TextButton", {
			AutoButtonColor = false;
			BackgroundColor3 = Theme.Overlay.Color;
			BackgroundTransparency = Theme.Overlay.Transparency;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 1, 0);
			Text = "";
		});
	}
	local tbl_2 = {
		screenSize = any_useState_result1;
		title = useSelector_upvr(function(arg1_2) -- Line 52
			return arg1_2.Dialog.title
		end, function(arg1_3, arg2) -- Line 54
			if arg1_3 ~= arg2 then
			else
			end
			return true
		end);
		bodyText = useSelector_upvr(function(arg1_4) -- Line 58
			return arg1_4.Dialog.bodyText
		end, function(arg1_5, arg2) -- Line 60
			if arg1_5 ~= arg2 then
			else
			end
			return true
		end);
	}
	local tbl_3 = {}
	local tbl_4 = {}
	local tbl_7 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl = {
		text = RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Button.Ok");
	}
	local var13_result1_upvr = useSelector_upvr(function(arg1_6) -- Line 64
		return arg1_6.Dialog.dismissCallback
	end, function(arg1_7, arg2) -- Line 66
		if arg1_7 ~= arg2 then
		else
		end
		return true
	end)
	function tbl.onActivated() -- Line 183
		--[[ Upvalues[3]:
			[1]: var13_result1_upvr (readonly)
			[2]: useDispatch_upvr_result1_upvr (readonly)
			[3]: CloseDialog_upvr (copied, readonly)
		]]
		if var13_result1_upvr then
			var13_result1_upvr()
		end
		useDispatch_upvr_result1_upvr(CloseDialog_upvr())
	end
	tbl_7.props = tbl
	tbl_4[1] = tbl_7
	tbl_3.buttons = tbl_4
	tbl_2.buttonStackInfo = tbl_3
	tbl_5.CallDialog = React_upvr.createElement(InteractiveAlert_upvr, tbl_2)
	module.CallDialogScreen = React_upvr.createElement("ScreenGui", {
		Enabled = useSelector_upvr(function(arg1_8) -- Line 70
			return arg1_8.Dialog.isOpen
		end, function(arg1_9, arg2) -- Line 72
			if arg1_9 ~= arg2 then
			else
			end
			return true
		end);
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		AutoLocalize = false;
		DisplayOrder = 8;
		[React_upvr.Change.AbsoluteSize] = function(arg1_11) -- Line 161
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(arg1_11.AbsoluteSize)
		end;
	}, tbl_5)
	return React_upvr.createElement(Roact_upvr.Portal, {
		target = CoreGui_upvr;
	}, module)
end