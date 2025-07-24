-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:06
-- Luau version 6, Types version 3
-- Time taken: 0.005522 seconds

local StreamNotifications = script:FindFirstAncestor("StreamNotifications")
local Parent = StreamNotifications.Parent
local UIBlox = require(Parent.UIBlox)
local NotificationsCommon = require(Parent.NotificationsCommon)
local tbl_3_upvr = {
	stiffness = 207;
	damping = 24;
	mass = 1;
}
local useStyle_upvr = UIBlox.Core.Style.useStyle
local marshalStreamNotificationData_upvr = NotificationsCommon.NotificationHelper.marshalStreamNotificationData
local React_upvr = require(Parent.React)
local ReactOtter_upvr = require(Parent.ReactOtter)
local constants_upvr = require(StreamNotifications.constants)
local DarkTheme_upvr = UIBlox.App.Style.Themes.DarkTheme
local NotificationCardProvider_upvr = NotificationsCommon.NotificationCardProvider
local NotificationCard_upvr = NotificationsCommon.NotificationCard
return function(arg1) -- Line 40
	--[[ Upvalues[9]:
		[1]: useStyle_upvr (readonly)
		[2]: marshalStreamNotificationData_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ReactOtter_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
		[6]: constants_upvr (readonly)
		[7]: DarkTheme_upvr (readonly)
		[8]: NotificationCardProvider_upvr (readonly)
		[9]: NotificationCard_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7_result1 = useStyle_upvr()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(0)
	local tbl_7 = {
		dismissHeight = 1;
	}
	local var27 = 1
	tbl_7.transparency = var27
	if arg1.collapsed then
		var27 = 0
	else
		var27 = 1
	end
	tbl_7.collapsedHeight = var27
	if arg1.collapsed then
		var27 = 1
	else
		var27 = 0
	end
	tbl_7.collapsedWidth = var27
	function var27() -- Line 50
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.notification.dismiss then
			arg1.finishDismissNotification(arg1.notification.id)
		end
	end
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(tbl_7, var27)
	var27 = React_upvr.useEffect
	var27(function() -- Line 57
		--[[ Upvalues[4]:
			[1]: any_useAnimatedBinding_result2_upvr (readonly)
			[2]: ReactOtter_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: tbl_3_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		local tbl_6 = {}
		local var25 = ReactOtter_upvr
		if arg1.notification.dismiss then
			var25 = 0
		else
			var25 = 1
		end
		tbl_6.dismissHeight = var25.spring(var25, tbl_3_upvr)
		if arg1.notification.dismiss then
			-- KONSTANTWARNING: GOTO [30] #24
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [29] 23. Error Block 29 start (CF ANALYSIS FAILED)
		tbl_6.transparency = ReactOtter_upvr.spring(1, tbl_3_upvr)
		if arg1.collapsed then
			-- KONSTANTWARNING: GOTO [44] #35
		end
		-- KONSTANTERROR: [29] 23. Error Block 29 end (CF ANALYSIS FAILED)
	end, {arg1.notification.dismiss, arg1.collapsed})
	function var27(arg1_2) -- Line 66
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.onHeightChange then
			arg1.onHeightChange(arg1.layoutOrder, arg1_2.AbsoluteSize.Y)
		end
	end
	if arg1.layoutOrder == 2 then
	elseif arg1.layoutOrder == 3 then
	elseif 4 <= arg1.layoutOrder then
	end
	local module = {}
	local var31_upvw = constants_upvr.DefaultPadding * 6
	module.Size = any_useAnimatedBinding_result1:map(function(arg1_4) -- Line 89
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: constants_upvr (copied, readonly)
			[3]: var31_upvw (read and write)
			[4]: any_useState_result1_upvr (readonly)
		]]
		if arg1.layoutOrder == 1 and arg1.collapsed then
			return UDim2.new(1, -(constants_upvr.DefaultPadding * 2 + var31_upvw * arg1_4.collapsedWidth), 0, arg1_4.collapsedHeight * arg1_4.dismissHeight * any_useState_result1_upvr + constants_upvr.DefaultPadding)
		end
		return UDim2.new(1, -(constants_upvr.DefaultPadding * 2 + var31_upvw * arg1_4.collapsedWidth), 0, arg1_4.collapsedHeight * arg1_4.dismissHeight * any_useState_result1_upvr)
	end)
	module.BackgroundTransparency = 1
	local var32
	if arg1.layoutOrder ~= 1 and arg1.collapsed then
		var32 = true
	else
		var32 = false
	end
	module.ClipsDescendants = var32
	var32 = arg1.layoutOrder or 1
	module.LayoutOrder = var32
	if arg1.layoutOrder then
		var32 = -arg1.layoutOrder
		-- KONSTANTWARNING: GOTO [136] #101
	end
	var32 = 1
	module.ZIndex = var32
	var32 = {}
	local tbl = {}
	local tbl_2 = {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 1, 0);
	}
	if var7_result1.theme == DarkTheme_upvr then
		-- KONSTANTWARNING: GOTO [205] #146
	end
	tbl_2.BackgroundColor3 = var7_result1.Theme.BackgroundMuted.Color
	tbl_2.BackgroundTransparency = any_useAnimatedBinding_result1:map(function(arg1_6) -- Line 126
		return arg1_6.transparency
	end)
	tbl_2.ZIndex = 2
	tbl_2.Position = UDim2.fromScale(0.5, 0)
	tbl_2.AnchorPoint = Vector2.new(0.5, 0)
	tbl.FadeFrame = React_upvr.createElement("Frame", tbl_2, {})
	local tbl_5 = {}
	local tbl_4 = {
		notificationPayload = arg1.notification;
		state = marshalStreamNotificationData_upvr(arg1.notification).state;
	}
	local var41 = false
	tbl_4.isCompact = var41
	if arg1.collapsed then
		var41 = true
	else
		var41 = false
	end
	tbl_4.readOnly = var41
	tbl_4.handleActions = arg1.handleActions
	tbl_4.openMetaActions = arg1.openMetaActions
	tbl_5[1] = React_upvr.createElement(NotificationCardProvider_upvr, tbl_4, {
		NotificationCard = React_upvr.createElement(NotificationCard_upvr, {
			isHover = false;
			layoutOrder = arg1.layoutOrder;
		});
	})
	tbl.InnerFrame = React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 0, 0);
		BackgroundTransparency = 1;
		ZIndex = 1;
		Position = UDim2.fromScale(0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0);
		[React_upvr.Change.AbsoluteSize] = function(arg1_3) -- Line 72
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: constants_upvr (copied, readonly)
				[3]: any_useState_result2_upvr (readonly)
			]]
			if arg1.notification.dismiss ~= true then
				any_useState_result2_upvr(arg1_3.AbsoluteSize.Y + constants_upvr.DefaultPadding)
			end
		end;
	}, tbl_5)
	var32.DismissFrame = React_upvr.createElement("Frame", {
		Size = any_useAnimatedBinding_result1:map(function(arg1_5) -- Line 112
			--[[ Upvalues[1]:
				[1]: any_useState_result1_upvr (readonly)
			]]
			return UDim2.new(1, 0, 0, arg1_5.dismissHeight * any_useState_result1_upvr)
		end);
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		LayoutOrder = arg1.layoutOrder;
		[React_upvr.Change.AbsoluteSize] = var27;
	}, tbl)
	return React_upvr.createElement("Frame", module, var32)
end