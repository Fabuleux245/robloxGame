-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:23
-- Luau version 6, Types version 3
-- Time taken: 0.002319 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	BackgroundColor3 = Color3.new(1, 1, 1);
	BackgroundTransparency = 0;
	onPressedBackgroundColor3 = Color3.new(0, 0.2, 0.3);
	onPressedBackgroundTransparency = 1;
	avatarCircleCellWidth = 60;
	avatarCircleSize = 36;
	avatarCircleBackgroundColor3 = Color3.new(0.4, 0.4, 0.4);
	avatarCircleDividerColor3 = Color3.new(0.2, 0.2, 0.2);
	avatarCircleDividerTransparency = 0;
	avatarCirclePresenceImage = nil;
	subTitleText = nil;
	subTitleTextFont = Enum.Font.Gotham;
	subTitleTextTransparency = 0;
	subTitleTextColor3 = Color3.new(0.1, 0.1, 0.1);
	subTitleTextSize = 15;
	subTitlePadding = 2;
	subTitleIconColor3 = Color3.new(0.1, 0.1, 0.1);
	subTitleIconTransparency = 0;
	titleText = "titleText";
	titleFont = Enum.Font.Gotham;
	titleTextTransparency = 0;
	titleTextColor3 = Color3.new(0, 0, 0);
	titleTextSize = 20;
	secondaryTitleText = nil;
	secondaryTitleFont = Enum.Font.Gotham;
	secondaryTitleTextTransparency = 0;
	secondaryTitleTextColor3 = Color3.new(0.2, 0.2, 0.2);
	secondaryTitleTextSize = 16;
	showDivider = true;
	dividerTransparency = 0;
	dividerColor3 = Color3.fromRGB(227, 227, 227);
	thumbnails = {};
	conversationId = nil;
	childWidth = 0;
	onActivated = nil;
	onCircleActivated = nil;
	Size = UDim2.new(1, 0, 1, 0);
	isLoading = false;
	hideLeftAvatarPadding = false;
	paddingLeft = 0;
	paddingRight = 0;
}
local Cryo_upvr = require(Parent.Cryo)
local useTextSizeOffset_upvr = UIBlox.Core.Style.useTextSizeOffset
local FFlagFixConversationListLargeText_upvr = require(AppChat.Flags.FFlagFixConversationListLargeText)
local Text_upvr = require(Parent.AppCommonLib).Text
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local BaseCell_upvr = require(script.Parent.BaseCell)
local ConversationFacePile_upvr = require(AppChat.Components.Cells.ConversationFacePile)
local AvatarCircle_upvr = require(script.Parent.AvatarCircle)
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
return React_upvr.memo(function(arg1) -- Line 136, Named "PresenceBubbleCell"
	--[[ Upvalues[12]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useTextSizeOffset_upvr (readonly)
		[5]: FFlagFixConversationListLargeText_upvr (readonly)
		[6]: Text_upvr (readonly)
		[7]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[8]: BaseCell_upvr (readonly)
		[9]: ConversationFacePile_upvr (readonly)
		[10]: AvatarCircle_upvr (readonly)
		[11]: ShimmerPanel_upvr (readonly)
		[12]: ImageSetLabel_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 120 start (CF ANALYSIS FAILED)
	local _ = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local any_useState_result1, _ = React_upvr.useState(0)
	local _ = useTextSizeOffset_upvr()
	if FFlagFixConversationListLargeText_upvr then
	else
	end
	if FFlagFixConversationListLargeText_upvr then
		-- KONSTANTWARNING: GOTO [31] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 120 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 24. Error Block 129 start (CF ANALYSIS FAILED)
	if FFlagFixConversationListLargeText_upvr then
		-- KONSTANTWARNING: GOTO [39] #31
	end
	-- KONSTANTERROR: [29] 24. Error Block 129 end (CF ANALYSIS FAILED)
end)