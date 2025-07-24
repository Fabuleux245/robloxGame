-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:59
-- Luau version 6, Types version 3
-- Time taken: 0.002062 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	layoutOrder = 2;
	spaceNotAvailable = 0;
	horizontalPadding = 0;
	userText = "";
	contentText = "";
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
function ReplyComposeBarText(arg1) -- Line 27
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: StyledTextLabel_upvr (readonly)
	]]
	local any_union_result1 = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local useStyle_upvr_result1 = useStyle_upvr()
	return React_upvr.createElement("Frame", {
		LayoutOrder = any_union_result1.layoutOrder;
		Size = UDim2.new(1, -any_union_result1.spaceNotAvailable, 1, 0);
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}, {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, any_union_result1.horizontalPadding);
			PaddingRight = UDim.new(0, any_union_result1.horizontalPadding);
		});
		TextLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
		});
		UserReplyingTo = React_upvr.createElement(StyledTextLabel_upvr, {
			layoutOrder = 1;
			text = any_union_result1.userText;
			textTruncate = Enum.TextTruncate.AtEnd;
			textWrapped = false;
			size = UDim2.new(1, 0, 0.5, 0);
			fluidSizing = false;
			fontStyle = useStyle_upvr_result1.Font.CaptionHeader;
			colorStyle = useStyle_upvr_result1.Theme.TextMuted;
		});
		ContentReplyingTo = React_upvr.createElement(StyledTextLabel_upvr, {
			layoutOrder = 2;
			text = any_union_result1.contentText;
			textTruncate = Enum.TextTruncate.AtEnd;
			textWrapped = false;
			size = UDim2.new(1, 0, 0.5, 0);
			fluidSizing = false;
			fontStyle = useStyle_upvr_result1.Font.Body;
			colorStyle = useStyle_upvr_result1.Theme.TextEmphasis;
		});
	})
end
return React_upvr.memo(ReplyComposeBarText)