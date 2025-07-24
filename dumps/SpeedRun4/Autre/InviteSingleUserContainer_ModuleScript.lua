-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:25
-- Luau version 6, Types version 3
-- Time taken: 0.010018 seconds

local CorePackages = game:GetService("CorePackages")
local Players_upvr = game:GetService("Players")
local React_upvr = require(CorePackages.Packages.React)
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Constants_upvr = require(ShareGame.Constants)
local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local GameInviteEvents_upvr = require(CorePackages.Workspace.Packages.GameInvite).GameInviteEvents
local InviteStatus_upvr = Constants_upvr.InviteStatus
local GetFFlagAbuseReportAnalyticsHasLaunchData_upvr = require(Modules.Settings.Flags.GetFFlagAbuseReportAnalyticsHasLaunchData)
local GetFFlagSingleUserInvitePageKeybind_upvr = require(Modules.Settings.Flags.GetFFlagSingleUserInvitePageKeybind)
local ContextActionService_upvr = game:GetService("ContextActionService")
local GetFFlagThrottleInviteSendEndpoint_upvr = require(Modules.Flags.GetFFlagThrottleInviteSendEndpoint)
local ThrottleFunctionCall_upvr = require(ShareGame.ThrottleFunctionCall)
local GetFIntThrottleInviteSendEndpointDelay_upvr = require(Modules.Flags.GetFIntThrottleInviteSendEndpointDelay)
local RetrievalStatus_upvr = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus
local GetFFlagInviteListStyleFixes_upvr = require(Modules.Flags.GetFFlagInviteListStyleFixes)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(41, 41, 41)
local COLORS_upvr = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Constants.COLORS
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local var23_upvr = require(ShareGame.getTranslator)()
local SingleUserThumbnail_upvr = require(ShareGame.Components.SingleUserThumbnail)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function var8_upvr(arg1) -- Line 53
	--[[ Upvalues[21]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: GameInviteEvents_upvr (readonly)
		[5]: InviteStatus_upvr (readonly)
		[6]: GetFFlagAbuseReportAnalyticsHasLaunchData_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: GetFFlagSingleUserInvitePageKeybind_upvr (readonly)
		[9]: ContextActionService_upvr (readonly)
		[10]: GetFFlagThrottleInviteSendEndpoint_upvr (readonly)
		[11]: ThrottleFunctionCall_upvr (readonly)
		[12]: GetFIntThrottleInviteSendEndpointDelay_upvr (readonly)
		[13]: RetrievalStatus_upvr (readonly)
		[14]: GetFFlagInviteListStyleFixes_upvr (readonly)
		[15]: Color3_fromRGB_result1_upvr (readonly)
		[16]: COLORS_upvr (readonly)
		[17]: StyledTextLabel_upvr (readonly)
		[18]: var23_upvr (readonly)
		[19]: SingleUserThumbnail_upvr (readonly)
		[20]: Button_upvr (readonly)
		[21]: ButtonType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var27_upvr = arg1.friends[tostring(arg1.inviteUserId)]
	local var28_upvr = var27_upvr
	if var28_upvr then
		var28_upvr = arg1.invites[var27_upvr.id]
	end
	local var9_result1 = useStyle_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	React_upvr.useEffect(function() -- Line 60
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: GameInviteEvents_upvr (copied, readonly)
		]]
		if arg1.promptMessage and arg1.analytics then
			arg1.analytics:sendEvent(Constants_upvr.Triggers.DeveloperSingle, GameInviteEvents_upvr.CustomTextShown)
		end
	end, {})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 66
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.closePage()
		if arg1.onAfterClosePage then
			arg1.onAfterClosePage()
		end
	end, {arg1.closePage, arg1.onAfterClosePage})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 76
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: GameInviteEvents_upvr (copied, readonly)
			[4]: any_useCallback_result1_upvr (readonly)
		]]
		arg1.analytics:sendEvent(Constants_upvr.Triggers.DeveloperSingle, GameInviteEvents_upvr.CancelInvite)
		any_useCallback_result1_upvr()
	end, {any_useCallback_result1_upvr})
	local any_useCallback_result1_upvw = React_upvr.useCallback(function() -- Line 83
		--[[ Upvalues[10]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: var28_upvr (readonly)
			[4]: InviteStatus_upvr (copied, readonly)
			[5]: Constants_upvr (copied, readonly)
			[6]: GameInviteEvents_upvr (copied, readonly)
			[7]: var27_upvr (readonly)
			[8]: GetFFlagAbuseReportAnalyticsHasLaunchData_upvr (copied, readonly)
			[9]: Players_upvr (copied, readonly)
			[10]: any_useCallback_result1_upvr (readonly)
		]]
		any_useState_result2_upvr(true)
		local analytics_upvr = arg1.analytics
		local var41
		if var28_upvr and var28_upvr ~= InviteStatus_upvr.Failed then
		else
			local var42 = false
			if arg1.launchData ~= nil then
				if arg1.launchData == "" then
					var42 = false
				else
					var42 = true
				end
			end
			local tbl_3 = {}
			var41 = var27_upvr.id
			tbl_3.recipient = var41
			if GetFFlagAbuseReportAnalyticsHasLaunchData_upvr() then
				var41 = var42
			else
				var41 = nil
			end
			tbl_3.isLaunchDataProvided = var41
			analytics_upvr:sendEvent(Constants_upvr.Triggers.DeveloperSingle, GameInviteEvents_upvr.SendInvite, tbl_3)
			var41 = arg1
			var41 = arg1.launchData
			arg1.inviteUser(tostring(var27_upvr.id), analytics_upvr, var41.inviteMessageId, var41):andThen(function(arg1_2) -- Line 97
				--[[ Upvalues[5]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: var27_upvr (copied, readonly)
					[3]: Players_upvr (copied, readonly)
					[4]: analytics_upvr (readonly)
					[5]: any_useCallback_result1_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(false)
				if not arg1_2 then
				else
					if Players_upvr.LocalPlayer and arg1_2.conversationId then
						analytics_upvr:onActivatedInviteSent(Players_upvr.LocalPlayer.UserId, arg1_2.conversationId, {var27_upvr.id})
					end
					any_useCallback_result1_upvr()
				end
			end, any_useCallback_result1_upvr)
		end
	end, {arg1.inviteUser, arg1.inviteMessageId, arg1.launchData, arg1.analytics, any_useState_result2_upvr, var28_upvr, var27_upvr, any_useCallback_result1_upvr})
	if GetFFlagSingleUserInvitePageKeybind_upvr() then
		React_upvr.useEffect(function() -- Line 125
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: ContextActionService_upvr (copied, readonly)
				[3]: any_useCallback_result1_upvw (read and write)
				[4]: any_useCallback_result1_upvr_2 (readonly)
			]]
			if arg1.isVisible then
				ContextActionService_upvr:BindCoreAction("ProductPurchaseConfirmButtonBind", function(arg1_3, arg2, arg3) -- Line 127
					--[[ Upvalues[1]:
						[1]: any_useCallback_result1_upvw (copied, read and write)
					]]
					if arg2 == Enum.UserInputState.Begin then
						any_useCallback_result1_upvw()
					end
				end, false, Enum.KeyCode.ButtonA)
				ContextActionService_upvr:BindCoreAction("ProductPurchaseCancelButtonBind", function(arg1_4, arg2, arg3) -- Line 132
					--[[ Upvalues[1]:
						[1]: any_useCallback_result1_upvr_2 (copied, readonly)
					]]
					if arg2 == Enum.UserInputState.Begin then
						any_useCallback_result1_upvr_2()
					end
				end, false, Enum.KeyCode.ButtonB)
				return function() -- Line 137
					--[[ Upvalues[1]:
						[1]: ContextActionService_upvr (copied, readonly)
					]]
					ContextActionService_upvr:UnbindCoreAction("ProductPurchaseConfirmButtonBind")
					ContextActionService_upvr:UnbindCoreAction("ProductPurchaseCancelButtonBind")
				end
			end
			return nil
		end, {arg1.isVisible, any_useCallback_result1_upvw, any_useCallback_result1_upvr_2})
	end
	if GetFFlagThrottleInviteSendEndpoint_upvr() then
		any_useCallback_result1_upvw = React_upvr.useCallback(ThrottleFunctionCall_upvr(GetFIntThrottleInviteSendEndpointDelay_upvr(), any_useCallback_result1_upvw), {any_useCallback_result1_upvw})
	end
	if not var27_upvr then
		if arg1.friendsRetrievalStatus == RetrievalStatus_upvr.Done or arg1.friendsRetrievalStatus == RetrievalStatus_upvr.Failed then
			any_useCallback_result1_upvr()
		end
		return
	end
	local var54 = var28_upvr
	if var54 then
		if var28_upvr == InviteStatus_upvr.Failed then
			var54 = false
		else
			var54 = true
		end
	end
	if var54 then
	else
	end
	local GetFFlagInviteListStyleFixes_upvr_result1 = GetFFlagInviteListStyleFixes_upvr()
	local module_3 = {}
	if GetFFlagInviteListStyleFixes_upvr_result1 then
		-- KONSTANTWARNING: GOTO [185] #145
	end
	module_3.Size = UDim2.new(0, 442, 0, 0)
	module_3.AutomaticSize = Enum.AutomaticSize.Y
	module_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	module_3.AnchorPoint = Vector2.new(0.5, 0.5)
	module_3.BorderSizePixel = 0
	if GetFFlagInviteListStyleFixes_upvr_result1 then
	else
	end
	module_3.BackgroundColor3 = COLORS_upvr.FLINT
	if GetFFlagInviteListStyleFixes_upvr_result1 then
	else
	end
	module_3.BackgroundTransparency = 0
	local module_2 = {}
	if GetFFlagInviteListStyleFixes_upvr_result1 then
		local tbl_5 = {
			MaxSize = Vector2.new(442, math.huge);
			MinSize = Vector2.new(0, 0);
		}
		-- KONSTANTWARNING: GOTO [248] #192
	end
	module_2.SizeConstraint = nil
	module_2.Corner = React_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, 8);
	})
	module_2.Padding = React_upvr.createElement("UIPadding", {
		PaddingLeft = UDim.new(0, 24);
		PaddingRight = UDim.new(0, 24);
		PaddingBottom = UDim.new(0, 24);
	})
	module_2.Header = React_upvr.createElement(StyledTextLabel_upvr, {
		fontStyle = var9_result1.Font.Header1;
		colorStyle = var9_result1.Theme.TextEmphasis;
		text = var23_upvr:FormatByKey("Feature.SettingsHub.Heading.InviteUser", {
			DisplayName = var27_upvr.displayName;
		});
		size = UDim2.new(1, 0, 0, 48);
		textXAlignment = Enum.TextXAlignment.Center;
	})
	module_2.Divider = React_upvr.createElement("Frame", {
		Position = UDim2.new(0, 0, 0, 48);
		Size = UDim2.new(1, 0, 0, 1);
		BorderSizePixel = 0;
		BackgroundColor3 = COLORS_upvr.GRAPHITE;
	})
	local tbl = {
		ListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 24);
		});
	}
	local tbl_2 = {
		user = var27_upvr;
		size = UDim2.new(0, 95, 0, 95);
		layoutOrder = 1;
		square = true;
	}
	if GetFFlagInviteListStyleFixes_upvr_result1 then
	else
	end
	tbl_2.backgroundTransparency = nil
	tbl.Thumbnail = React_upvr.createElement(SingleUserThumbnail_upvr, tbl_2)
	local tbl_4 = {
		fontStyle = var9_result1.Font.Header2;
		colorStyle = var9_result1.Theme.TextEmphasis;
	}
	local promptMessage = arg1.promptMessage
	if not promptMessage then
		promptMessage = var23_upvr
		promptMessage = promptMessage:FormatByKey("Feature.SettingsHub.Label.DefaultInviteMessage", {
			DisplayName = var27_upvr.displayName;
		})
	end
	tbl_4.text = promptMessage
	tbl_4.textXAlignment = Enum.TextXAlignment.Center
	tbl_4.automaticSize = Enum.AutomaticSize.Y
	tbl_4.size = UDim2.new(1, 0, 0, 0)
	tbl_4.layoutOrder = 2
	tbl.TextBody = React_upvr.createElement(StyledTextLabel_upvr, tbl_4)
	tbl.ButtonWrapper = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 48);
		LayoutOrder = 3;
		BackgroundTransparency = 1;
	}, {
		CancelButton = React_upvr.createElement(Button_upvr, {
			buttonType = ButtonType_upvr.Secondary;
			size = UDim2.new(0.5, -12, 1, 0);
			text = var23_upvr:FormatByKey("Feature.SettingsHub.Action.Cancel");
			onActivated = any_useCallback_result1_upvr_2;
			isDisabled = any_useState_result1;
		});
		InviteButton = React_upvr.createElement(Button_upvr, {
			buttonType = ButtonType_upvr.PrimarySystem;
			size = UDim2.new(0.5, -12, 1, 0);
			position = UDim2.new(0.5, 12, 0, 0);
			text = var23_upvr:FormatByKey("Feature.SettingsHub.Action.InviteFriend");
			onActivated = any_useCallback_result1_upvw;
			isLoading = any_useState_result1;
			isDisabled = var54;
		});
	})
	module_2.Wrapper = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		Position = UDim2.new(0, 0, 0, 56);
		BackgroundTransparency = 1;
	}, tbl)
	return React_upvr.createElement("Frame", module_3, module_2)
end
local httpRequest_upvr = require(Modules.Common.httpRequest)
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local GetFFlagEnableNewInviteSendEndpoint_upvr = require(Modules.Flags.GetFFlagEnableNewInviteSendEndpoint)
local InviteUserIdToPlaceIdCustomized_upvr = require(ShareGame.Thunks.InviteUserIdToPlaceIdCustomized)
local InviteUserIdToPlaceId_upvr = require(ShareGame.Thunks.InviteUserIdToPlaceId)
local renderWithCoreScriptsStyleProvider_upvr = require(Modules.Common.renderWithCoreScriptsStyleProvider)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 271
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local module = {
		friends = arg1.Users;
	}
	local LocalPlayer = Players_upvr.LocalPlayer
	if LocalPlayer then
		LocalPlayer = arg1.Friends.retrievalStatus[tostring(Players_upvr.LocalPlayer.UserId)]
	end
	module.friendsRetrievalStatus = LocalPlayer
	module.invites = arg1.Invites
	return module
end, function(arg1) -- Line 278
	--[[ Upvalues[6]:
		[1]: httpRequest_upvr (readonly)
		[2]: HttpRbxApiService_upvr (readonly)
		[3]: GetFFlagEnableNewInviteSendEndpoint_upvr (readonly)
		[4]: InviteUserIdToPlaceIdCustomized_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: InviteUserIdToPlaceId_upvr (readonly)
	]]
	return {
		inviteUser = function(arg1_5, arg2, arg3, arg4) -- Line 280, Named "inviteUser"
			--[[ Upvalues[7]:
				[1]: httpRequest_upvr (copied, readonly)
				[2]: HttpRbxApiService_upvr (copied, readonly)
				[3]: GetFFlagEnableNewInviteSendEndpoint_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: InviteUserIdToPlaceIdCustomized_upvr (copied, readonly)
				[6]: Constants_upvr (copied, readonly)
				[7]: InviteUserIdToPlaceId_upvr (copied, readonly)
			]]
			local httpRequest_upvr_result1 = httpRequest_upvr(HttpRbxApiService_upvr)
			local tostring_result1 = tostring(game.PlaceId)
			if GetFFlagEnableNewInviteSendEndpoint_upvr() then
				return arg1(InviteUserIdToPlaceIdCustomized_upvr(httpRequest_upvr_result1, arg1_5, tostring_result1, arg2, Constants_upvr.Triggers.DeveloperSingle, arg3, arg4))
			end
			return arg1(InviteUserIdToPlaceId_upvr(httpRequest_upvr_result1, arg1_5, tostring_result1))
		end;
	}
end)(function(arg1) -- Line 301
	--[[ Upvalues[3]:
		[1]: renderWithCoreScriptsStyleProvider_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: var8_upvr (readonly)
	]]
	return renderWithCoreScriptsStyleProvider_upvr({
		SingleUserInvite = React_upvr.createElement(var8_upvr, arg1);
	})
end)