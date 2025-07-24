-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:21
-- Luau version 6, Types version 3
-- Time taken: 0.001480 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	Size = UDim2.new(1, 0, 1, 0);
	avatarCirclePresenceImage = nil;
	subTitleText = nil;
	subTitleIcon = nil;
	titleText = "TestUser";
	secondaryTitleText = nil;
	thumbnails = {};
	childWidth = 0;
	style = require(AppChat.SocialLibraries).Components.TestStyle;
	showDivider = true;
	boldTitle = true;
	shouldMuteTitleColor = false;
	isLoading = false;
	hideLeftAvatarPadding = false;
}
local Cryo_upvr = require(Parent.Cryo)
local PresenceBubbleCell_upvr = require(script.Parent.PresenceBubbleCell)
return React_upvr.memo(function(arg1) -- Line 62, Named "StyledCell"
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: PresenceBubbleCell_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local style = any_join_result1.style
	local Theme = style.Theme
	local Global = style.Tokens.Global
	if type(any_join_result1.avatarCirclePresenceImage) ~= "table" then
		Global = false
	else
		Global = true
	end
	if Global then
		-- KONSTANTWARNING: GOTO [141] #79
	end
	-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [140] 78. Error Block 45 start (CF ANALYSIS FAILED)
	;({
		childWidth = any_join_result1.childWidth;
		titleText = any_join_result1.titleText;
		secondaryTitleText = any_join_result1.secondaryTitleText;
		subTitleText = any_join_result1.subTitleText;
		subTitleIcon = any_join_result1.subTitleIcon;
		avatarCirclePresenceImage = any_join_result1.avatarCirclePresenceImage;
		thumbnails = any_join_result1.thumbnails;
		onActivated = any_join_result1.onActivated;
		onCircleActivated = any_join_result1.onCircleActivated;
		Size = any_join_result1.Size;
		isLoading = any_join_result1.isLoading;
		showNewPresenceImage = Global;
		pillText = any_join_result1.pillText;
		BackgroundColor3 = Theme.BackgroundDefault.Color;
		BackgroundTransparency = Theme.BackgroundDefault.Transparency;
		onPressedBackgroundColor3 = Theme.BackgroundOnPress.Color;
		onPressedBackgroundTransparency = Theme.BackgroundOnPress.Transparency;
		avatarCircleBackgroundColor3 = Theme.PlaceHolder.Color;
		avatarCircleDividerColor3 = Theme.PlaceHolder.Color;
		avatarCircleCellWidth = 72;
		avatarCircleSize = 48;
	}).avatarCirclePresenceImageColor3 = nil
	if Global then
		-- KONSTANTWARNING: GOTO [150] #85
	end
	-- KONSTANTERROR: [140] 78. Error Block 45 end (CF ANALYSIS FAILED)
end)