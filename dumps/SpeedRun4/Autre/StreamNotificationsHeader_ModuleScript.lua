-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:08
-- Luau version 6, Types version 3
-- Time taken: 0.002754 seconds

local StreamNotifications = script:FindFirstAncestor("StreamNotifications")
local Parent = StreamNotifications.Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local UserInputService_upvr = game:GetService("UserInputService")
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local constants_upvr = require(StreamNotifications.constants)
local React_upvr = require(Parent.React)
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local NotificationHelper_upvr = require(Parent.NotificationsCommon).NotificationHelper
local EventStream_upvr = require(StreamNotifications.analytics.analyticsService).EventStream
local analyticsConstants_upvr = require(StreamNotifications.analytics.analyticsConstants)
return function(arg1) -- Line 23
	--[[ Upvalues[10]:
		[1]: useStyle_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: constants_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: IconButton_upvr (readonly)
		[7]: IconSize_upvr (readonly)
		[8]: NotificationHelper_upvr (readonly)
		[9]: EventStream_upvr (readonly)
		[10]: analyticsConstants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5_result1 = useStyle_upvr()
	local Font = var5_result1.Font
	local var17
	if UserInputService_upvr.StatusBarSize and arg1.isSmallScreen then
		var17 = UserInputService_upvr.StatusBarSize.Y
	else
		var17 = 0
	end
	local var7_result1 = useLocalization_upvr({
		headerText = constants_upvr.Text.HeaderKey;
	})
	local module = {}
	local tbl_3 = {}
	local tbl_2 = {
		anchorPoint = Vector2.new(0, 0);
		iconSize = IconSize_upvr.Medium;
	}
	if arg1.isSmallScreen then
	else
	end
	tbl_2.icon = constants_upvr.Modal.CloseIcon
	tbl_2.layoutOrder = 1
	tbl_2.size = UDim2.new(0, constants_upvr.Modal.HeaderHeight - constants_upvr.Modal.Padding * 2, 0, constants_upvr.Modal.HeaderHeight - constants_upvr.Modal.Padding * 2)
	tbl_2.position = UDim2.fromOffset(constants_upvr.Modal.Padding, constants_upvr.Modal.Padding)
	function tbl_2.onActivated() -- Line 58
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: NotificationHelper_upvr (copied, readonly)
			[3]: EventStream_upvr (copied, readonly)
			[4]: analyticsConstants_upvr (copied, readonly)
		]]
		arg1.displayStream(false)
		NotificationHelper_upvr.fireEvent(EventStream_upvr, analyticsConstants_upvr.Context.click, analyticsConstants_upvr.EventNames.closeContent, {
			closeMethod = analyticsConstants_upvr.CloseMethod.closeIcon;
		})
	end
	tbl_3.CloseModal = React_upvr.createElement(IconButton_upvr, tbl_2)
	local tbl = {}
	if var7_result1 then
	end
	tbl.Text = var7_result1.headerText
	tbl.Font = Font.Header1.Font
	tbl.TextSize = Font.BaseSize * Font.Header1.RelativeSize
	tbl.TextColor3 = var5_result1.Theme.TextEmphasis.Color
	tbl.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl.Position = UDim2.new(0.5, 0, 0.5, 0)
	tbl.Size = UDim2.new(1, 0, 0, constants_upvr.Modal.HeaderHeight)
	tbl.BackgroundTransparency = 1
	tbl_3.HeaderText = React_upvr.createElement("TextLabel", tbl)
	module.HeaderFrame = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, constants_upvr.Modal.HeaderHeight);
		BackgroundTransparency = 1;
		Position = UDim2.new(0, 0, 1, 0);
		AnchorPoint = Vector2.new(0, 1);
	}, tbl_3)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, constants_upvr.Modal.HeaderHeight + var17);
		BackgroundTransparency = 1;
	}, module)
end