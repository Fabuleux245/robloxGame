-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:57
-- Luau version 6, Types version 3
-- Time taken: 0.004386 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox_upvr = require(Parent.UIBlox)
local tbl_3_upvr = {
	LayoutOrder = 3;
	totalHeight = 0;
	spaceNotAvailableForText = 0;
	replyingToUserText = nil;
	replyingToUserContent = nil;
	replyingToUserThumbnail = nil;
	replyingToUserPresenceImage = nil;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox_upvr.Core.Style.useStyle
local ReplyComposeBarConstants_upvr = require(script.Parent.ReplyComposeBarConstants)
local AvatarCircle_upvr = require(AppChat.Components.Cells.AvatarCircle)
local ReplyComposeBarText_upvr = require(script.Parent.ReplyComposeBarText)
function ReplyComposeBar(arg1) -- Line 45
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ReplyComposeBarConstants_upvr (readonly)
		[6]: AvatarCircle_upvr (readonly)
		[7]: ReplyComposeBarText_upvr (readonly)
		[8]: UIBlox_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_union_result1 = Cryo_upvr.Dictionary.union(tbl_3_upvr, arg1)
	local useStyle_upvr_result1 = useStyle_upvr()
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		TopBorder = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ReplyComposeBarConstants_upvr.BORDER_HEIGHT);
			BackgroundColor3 = useStyle_upvr_result1.Theme.UIDefault.Color;
			BorderSizePixel = 0;
			LayoutOrder = 1;
		});
	}
	local tbl_7 = {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, ReplyComposeBarConstants_upvr.HORIZONTAL_PADDING);
			PaddingRight = UDim.new(0, ReplyComposeBarConstants_upvr.HORIZONTAL_PADDING);
			PaddingBottom = UDim.new(0, ReplyComposeBarConstants_upvr.VERTICAL_PADDING);
			PaddingTop = UDim.new(0, ReplyComposeBarConstants_upvr.VERTICAL_PADDING);
		});
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local var21
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var21 = var21("Frame", tbl, tbl_2)
		tbl_2.AvatarCircle = React_upvr.createElement(AvatarCircle_upvr, tbl_6)
		tbl_6.showNewPresenceImage = true
		tbl_6.presenceImageTransparency = useStyle_upvr_result1.Theme.OnlineStatus.Transparency
		tbl_6.presenceImageColor3 = useStyle_upvr_result1.Theme.OnlineStatus.Color
		tbl_6.presenceImage = any_union_result1.replyingToUserPresenceImage
		tbl_6.thumbnails = tbl_5
		tbl_5[1] = any_union_result1.replyingToUserThumbnail
		local tbl_5 = {}
		tbl_6.onActivated = nil
		tbl_6.circleInteriorBackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundDefault.Color
		tbl_6.circleInteriorTransparency = useStyle_upvr_result1.Tokens.Global.Color.None.Transparency
		tbl_6.circleTransparency = useStyle_upvr_result1.Tokens.Global.Color.None.Transparency
		tbl_6.circleColor3 = useStyle_upvr_result1.Theme.BackgroundDefault.Color
		local tbl_6 = {}
		local tbl_2 = {}
		tbl.Size = UDim2.new(0, ReplyComposeBarConstants_upvr.ICON_WIDTH_HEIGHT, 0, ReplyComposeBarConstants_upvr.ICON_WIDTH_HEIGHT)
		tbl.LayoutOrder = 1
		tbl.BackgroundTransparency = useStyle_upvr_result1.Tokens.Global.Color.None.Transparency
		tbl.BorderSizePixel = 0
		local tbl = {}
		var21 = React_upvr.createElement
		return var21
	end
	if not any_union_result1.replyingToUserThumbnail or not INLINED() then
		var21 = nil
	end
	tbl_7.Avatar = var21
	var21 = React_upvr.createElement
	local tbl_4 = {
		layoutOrder = 2;
		spaceNotAvailable = any_union_result1.spaceNotAvailableForText;
	}
	if any_union_result1.replyingToUserThumbnail then
	else
	end
	tbl_4.horizontalPadding = 0
	tbl_4.userText = any_union_result1.replyingToUserText
	tbl_4.contentText = any_union_result1.replyingToUserContent
	var21 = var21(ReplyComposeBarText_upvr, tbl_4)
	tbl_7.Text = var21
	var21 = React_upvr.createElement
	var21 = var21(UIBlox_upvr.App.Button.IconButton, {
		layoutOrder = 3;
		icon = UIBlox_upvr.App.ImageSet.Images["icons/actions/edit/clear"];
		iconTransparency = 0;
		onActivated = any_union_result1.onCloseActivated;
	})
	tbl_7.CloseButton = var21
	module.ContentFrame = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		BorderColor3 = useStyle_upvr_result1.Theme.Divider.Color;
		LayoutOrder = 2;
		Size = UDim2.new(1, 0, 0, any_union_result1.totalHeight - ReplyComposeBarConstants_upvr.BORDER_HEIGHT);
	}, tbl_7)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = any_union_result1.LayoutOrder;
		Size = UDim2.new(1, 0, 0, any_union_result1.totalHeight);
	}, module)
end
return React_upvr.memo(ReplyComposeBar)