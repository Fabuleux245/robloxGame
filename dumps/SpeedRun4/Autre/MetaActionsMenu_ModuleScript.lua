-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:06
-- Luau version 6, Types version 3
-- Time taken: 0.006139 seconds

local StreamNotifications = script:FindFirstAncestor("StreamNotifications")
local Parent = StreamNotifications.Parent
local NotificationsCommon = require(Parent.NotificationsCommon)
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local FFlagLuaAppNotifStreamFocusNav_upvr = require(Parent.SharedFlags).FFlagLuaAppNotifStreamFocusNav
local React_upvr = require(Parent.React)
local EnumStreamNotificationsDisplayState_upvr = require(StreamNotifications.EnumStreamNotificationsDisplayState)
local marshalStreamNotificationData_upvr = NotificationsCommon.NotificationHelper.marshalStreamNotificationData
local constants_upvr = require(StreamNotifications.constants)
local NotificationCardProvider_upvr = NotificationsCommon.NotificationCardProvider
local NotificationCard_upvr = NotificationsCommon.NotificationCard
local constants_upvr_2 = NotificationsCommon.constants
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local BaseMenu_upvr = UIBlox.App.Menu.BaseMenu
local FocusNavigableSurfaceWrapper_upvr = FocusNavigationUtils.FocusNavigableSurfaceWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils.FocusNavigationEventNameEnum
local InputHandlers_upvr = require(Parent.InputHandlers)
return function(arg1) -- Line 37
	--[[ Upvalues[17]:
		[1]: useStyle_upvr (readonly)
		[2]: FFlagLuaAppNotifStreamFocusNav_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: EnumStreamNotificationsDisplayState_upvr (readonly)
		[5]: marshalStreamNotificationData_upvr (readonly)
		[6]: constants_upvr (readonly)
		[7]: NotificationCardProvider_upvr (readonly)
		[8]: NotificationCard_upvr (readonly)
		[9]: constants_upvr_2 (readonly)
		[10]: ImageSetLabel_upvr (readonly)
		[11]: IconButton_upvr (readonly)
		[12]: IconSize_upvr (readonly)
		[13]: BaseMenu_upvr (readonly)
		[14]: FocusNavigableSurfaceWrapper_upvr (readonly)
		[15]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[16]: FocusNavigationEventNameEnum_upvr (readonly)
		[17]: InputHandlers_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local activeNotification_upvr = arg1.activeNotification
	local closeNotificationDisplay_upvr = arg1.closeNotificationDisplay
	local var34
	if FFlagLuaAppNotifStreamFocusNav_upvr then
		var34 = React_upvr.useRef(nil)
	end
	if arg1.displayState ~= EnumStreamNotificationsDisplayState_upvr.MetaActions then
		return nil
	end
	local var11_result1 = marshalStreamNotificationData_upvr(activeNotification_upvr)
	if var11_result1 then
		for _, v_upvr in ipairs(var11_result1.state.visualItems.metaAction) do
			local tbl_6 = {}
			local var40 = constants_upvr.MetaActions.ActionIcons[v_upvr.actionIcon]
			if not var40 then
				var40 = constants_upvr.MetaActions.ActionIcons.default
			end
			tbl_6.icon = var40
			tbl_6.text = v_upvr.label.text
			local handleActions_upvr = arg1.handleActions
			function tbl_6.onActivated() -- Line 62
				--[[ Upvalues[3]:
					[1]: handleActions_upvr (readonly)
					[2]: v_upvr (readonly)
					[3]: activeNotification_upvr (readonly)
				]]
				if handleActions_upvr then
					handleActions_upvr(v_upvr, activeNotification_upvr)
				end
			end
			table.insert({}, tbl_6)
		end
	end
	local module = {}
	local tbl_7 = {}
	if not arg1.isSmallScreen then
		-- KONSTANTWARNING: GOTO [106] #75
	end
	tbl_7.CornerRadius = UDim.new(0, 0)
	module.UICorner = React_upvr.createElement("UICorner", tbl_7)
	local tbl_3 = {}
	if FFlagLuaAppNotifStreamFocusNav_upvr then
	else
	end
	tbl_3.ref = nil
	tbl_3.AutomaticSize = Enum.AutomaticSize.Y
	tbl_3.Size = UDim2.fromScale(1, 0)
	tbl_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	tbl_3.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl_3.BackgroundTransparency = 1
	local tbl_4 = {
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, constants_upvr.Modal.Padding);
			PaddingLeft = UDim.new(0, constants_upvr.Modal.Padding);
			PaddingRight = UDim.new(0, constants_upvr.Modal.Padding);
			PaddingBottom = UDim.new(0, constants_upvr.Modal.Padding);
		});
		
		React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, constants_upvr.DefaultPadding);
		})
	}
	local tbl_2 = {}
	local tbl_5 = {
		notificationPayload = activeNotification_upvr;
	}
	local var51 = var11_result1
	if var51 then
		var51 = var11_result1.state
	end
	tbl_5.state = var51
	tbl_5.isCompact = false
	tbl_5.readOnly = false
	tbl_5.openMetaActions = nil
	tbl_5.handleActions = handleActions_upvr
	tbl_2.ActiveCard = React_upvr.createElement(NotificationCardProvider_upvr, tbl_5, {
		NotificationCard = React_upvr.createElement(NotificationCard_upvr, {
			isHover = false;
			layoutOrder = 1;
		});
	})
	tbl_2.CloseButtonFrame = React_upvr.createElement("Frame", {
		Size = UDim2.fromOffset(constants_upvr.MetaActions.CloseButtonFrameSize, constants_upvr.MetaActions.CloseButtonFrameSize);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.new(1, -constants_upvr_2.Padding.DefaultCardPadding, 0, constants_upvr_2.Padding.DefaultCardPadding);
	}, {
		CloseIcon = React_upvr.createElement(ImageSetLabel_upvr, {
			LayoutOrder = 2;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromOffset(constants_upvr.MetaActions.CloseIconSize, constants_upvr.MetaActions.CloseIconSize);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Image = constants_upvr.Modal.CloseIcon;
			ImageColor3 = useStyle_upvr().Theme.UIEmphasis.Color;
		});
		CloseButton = React_upvr.createElement(IconButton_upvr, {
			iconSize = IconSize_upvr.Small;
			size = UDim2.fromOffset(constants_upvr.MetaActions.CloseButtonSize, constants_upvr.MetaActions.CloseButtonSize);
			layoutOrder = 1;
			anchorPoint = Vector2.new(0.5, 0.5);
			position = UDim2.new(0.5, 0, 0.5, 0);
			onActivated = closeNotificationDisplay_upvr;
		});
	})
	tbl_4.CardAndClose = React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}, tbl_2)
	local tbl = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl.buttonProps = {}
	tbl.width = UDim.new(1, 0)
	tbl.layoutOrder = 2
	tbl_4.Menu = React_upvr.createElement(BaseMenu_upvr, tbl)
	module.MetaActions = React_upvr.createElement("Frame", tbl_3, tbl_4)
	if FFlagLuaAppNotifStreamFocusNav_upvr then
		return React_upvr.createElement(FocusNavigableSurfaceWrapper_upvr, {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.ContextualMenu;
			isIsolated = true;
			frameProps = {
				ref = var34;
			};
			customEventHandlers = {
				[FocusNavigationEventNameEnum_upvr.NavigateBack] = {
					handler = InputHandlers_upvr.onRelease(function(arg1_2) -- Line 172
						--[[ Upvalues[1]:
							[1]: closeNotificationDisplay_upvr (readonly)
						]]
						closeNotificationDisplay_upvr()
						arg1_2:cancel()
					end);
				};
			};
		}, module)
	end
	return module
end