-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:25
-- Luau version 6, Types version 3
-- Time taken: 0.008852 seconds

local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local React_upvr = require(CorePackages.Packages.React)
local InviteStatus_upvr = require(ShareGame.Constants).InviteStatus
local Players_upvr = game:GetService("Players")
local GetFFlagEnableNewInviteSendEndpoint_upvr = require(Modules.Flags.GetFFlagEnableNewInviteSendEndpoint)
local GameInviteEvents_upvr = require(CorePackages.Workspace.Packages.GameInvite).GameInviteEvents
local GetFFlagAbuseReportAnalyticsHasLaunchData_upvr = require(Modules.Settings.Flags.GetFFlagAbuseReportAnalyticsHasLaunchData)
local GetFFlagThrottleInviteSendEndpoint_upvr = require(Modules.Flags.GetFFlagThrottleInviteSendEndpoint)
local ThrottleFunctionCall_upvr = require(ShareGame.ThrottleFunctionCall)
local GetFIntThrottleInviteSendEndpointDelay_upvr = require(Modules.Flags.GetFIntThrottleInviteSendEndpointDelay)
local Rect_new_result1_upvr = Rect.new(10, 10, 10, 10)
local Theme_upvr = require(Modules.Settings.Theme)
local ReactRoblox_upvr = require(CorePackages.Packages.ReactRoblox)
local SingleUserThumbnail_upvr = require(ShareGame.Components.SingleUserThumbnail)
local PresenceUtil_upvr = require(ShareGame.PresenceUtil)
local Constants_upvr = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Constants
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local GetFFlagLuaAppEnableOpenTypeSupport_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppEnableOpenTypeSupport
local OpenTypeSupport_upvr = require(CorePackages.Packages.UIBlox).Utility.OpenTypeSupport
local InviteButton_upvr = require(ShareGame.Components.InviteButton)
return function(arg1) -- Line 64
	--[[ Upvalues[19]:
		[1]: React_upvr (readonly)
		[2]: InviteStatus_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: GetFFlagEnableNewInviteSendEndpoint_upvr (readonly)
		[5]: GameInviteEvents_upvr (readonly)
		[6]: GetFFlagAbuseReportAnalyticsHasLaunchData_upvr (readonly)
		[7]: GetFFlagThrottleInviteSendEndpoint_upvr (readonly)
		[8]: ThrottleFunctionCall_upvr (readonly)
		[9]: GetFIntThrottleInviteSendEndpointDelay_upvr (readonly)
		[10]: Rect_new_result1_upvr (readonly)
		[11]: Theme_upvr (readonly)
		[12]: ReactRoblox_upvr (readonly)
		[13]: SingleUserThumbnail_upvr (readonly)
		[14]: PresenceUtil_upvr (readonly)
		[15]: Constants_upvr (readonly)
		[16]: AppFonts_upvr (readonly)
		[17]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (readonly)
		[18]: OpenTypeSupport_upvr (readonly)
		[19]: InviteButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local user_upvr = arg1.user
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 66
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: InviteStatus_upvr (copied, readonly)
			[3]: user_upvr (readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: GetFFlagEnableNewInviteSendEndpoint_upvr (copied, readonly)
			[6]: GameInviteEvents_upvr (copied, readonly)
			[7]: GetFFlagAbuseReportAnalyticsHasLaunchData_upvr (copied, readonly)
		]]
		local inviteUser = arg1.inviteUser
		local inviteStatus = arg1.inviteStatus
		local analytics_upvr = arg1.analytics
		if inviteStatus and inviteStatus ~= InviteStatus_upvr.Failed then
		else
			local function var29(arg1_2) -- Line 74
				--[[ Upvalues[3]:
					[1]: user_upvr (copied, readonly)
					[2]: Players_upvr (copied, readonly)
					[3]: analytics_upvr (readonly)
				]]
				if not arg1_2 then
				elseif Players_upvr.LocalPlayer and arg1_2 then
					analytics_upvr:onActivatedInviteSent(Players_upvr.LocalPlayer.UserId, arg1_2.conversationId, {user_upvr.id})
				end
			end
			local var31
			if GetFFlagEnableNewInviteSendEndpoint_upvr() then
				local var32 = false
				if arg1.launchData ~= nil then
					if arg1.launchData == "" then
						var32 = false
					else
						var32 = true
					end
				end
				local tbl = {}
				var31 = user_upvr.id
				tbl.recipient = var31
				if GetFFlagAbuseReportAnalyticsHasLaunchData_upvr() then
					var31 = var32
				else
					var31 = nil
				end
				tbl.isLaunchDataProvided = var31
				analytics_upvr:sendEvent(arg1.trigger, GameInviteEvents_upvr.SendInvite, tbl)
				var31 = arg1
				var31 = arg1.launchData
				inviteUser(user_upvr.id, analytics_upvr, arg1.trigger, var31.inviteMessageId, var31):andThen(var29, function() -- Line 97
				end)
				return
			end
			inviteUser(user_upvr.id):andThen(var29, function() -- Line 100
			end)
		end
	end, {arg1.inviteUser, arg1.inviteStatus, arg1.analytics, user_upvr})
	if GetFFlagThrottleInviteSendEndpoint_upvr() then
		any_useCallback_result1 = React_upvr.useCallback(ThrottleFunctionCall_upvr(GetFIntThrottleInviteSendEndpointDelay_upvr(), any_useCallback_result1), {any_useCallback_result1})
	end
	if not arg1.visible then return end
	local module = {
		Size = UDim2.new(1, 0, 0, 60);
		ScaleType = Enum.ScaleType.Stretch;
		SliceCenter = Rect_new_result1_upvr;
		BackgroundColor3 = Theme_upvr.color("PlayerRowFrame");
		BackgroundTransparency = Theme_upvr.transparency("PlayerRowFrame", 1);
		ImageTransparency = 0.85;
		LayoutOrder = arg1.layoutOrder;
	}
	local Event = ReactRoblox_upvr.Event
	if arg1.isFullRowActivatable then
		Event = any_useCallback_result1
	else
		Event = nil
	end
	module[Event.Activated] = Event
	local module_2 = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = Theme_upvr.MenuContainerCornerRadius;
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingRight = UDim.new(0, 16);
			PaddingLeft = UDim.new(0, 8);
		});
		Thumbnail = React_upvr.createElement(SingleUserThumbnail_upvr, {
			user = user_upvr;
			size = UDim2.new(0, 44, 0, 44);
			position = UDim2.new(0, 0, 0.5, 0);
			anchorPoint = Vector2.new(0, 0.5);
		});
	}
	local tbl_2 = {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 8);
		});
		ListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 4);
		});
		DisplayNameWrapper = React_upvr.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, 16);
			BackgroundTransparency = 1;
		}, {
			PresenceIconLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 4);
			});
			Icon = PresenceUtil_upvr.GetIcon(user_upvr.presence);
			DisplayName = React_upvr.createElement("TextLabel", {
				Size = UDim2.new(0, 0, 0, 16);
				Text = user_upvr.displayName;
				TextSize = 16;
				TextColor3 = Constants_upvr.COLORS.WHITE;
				Font = AppFonts_upvr.default:getMedium();
				BackgroundTransparency = 1;
				TextXAlignment = Enum.TextXAlignment.Left;
				LayoutOrder = 2;
			});
		});
	}
	local tbl_3 = {
		Size = UDim2.new(0, 0, 0, 16);
		Text = '@'..user_upvr.name;
		TextSize = 16;
		TextColor3 = Constants_upvr.COLORS.PUMICE;
		Font = AppFonts_upvr.default:getDefault();
		BackgroundTransparency = 1;
		TextXAlignment = Enum.TextXAlignment.Left;
	}
	if GetFFlagLuaAppEnableOpenTypeSupport_upvr() then
	else
	end
	tbl_3.OpenTypeFeatures = nil
	tbl_2.Username = React_upvr.createElement("TextLabel", tbl_3)
	module_2.UserInfo = React_upvr.createElement("Frame", {
		Position = UDim2.new(0, 44, 0, 0);
		Size = UDim2.new(1, -118, 1, 0);
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}, tbl_2)
	module_2.InviteButton = React_upvr.createElement(InviteButton_upvr, {
		size = UDim2.new(0, 66, 0, 36);
		position = UDim2.new(1, 0, 0.5, 0);
		anchorPoint = Vector2.new(1, 0.5);
		onInvite = any_useCallback_result1;
		inviteStatus = arg1.inviteStatus;
	})
	return React_upvr.createElement("ImageButton", module, module_2)
end