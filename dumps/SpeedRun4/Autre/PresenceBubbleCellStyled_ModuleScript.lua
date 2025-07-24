-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:24
-- Luau version 6, Types version 3
-- Time taken: 0.001779 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local tbl_upvr = {
	Size = UDim2.new(1, 0, 1, 0);
	avatarCirclePresenceImage = nil;
	subTitleText = nil;
	subTitleIcon = nil;
	titleText = "TestUser";
	secondaryTitleText = nil;
	thumbnails = {};
	conversationId = nil;
	childWidth = 0;
	style = Cryo_upvr.Dictionary.join(require(AppChat.SocialLibraries).Components.TestStyle, {
		Tokens = {
			Global = {
				Color = {
					None = {};
				};
			};
		};
	});
	showDivider = true;
	boldTitle = true;
	isLoading = false;
	hideLeftAvatarPadding = false;
	paddingLeft = 0;
	paddingRight = 0;
}
local PresenceBubbleCell_upvr = require(script.Parent.PresenceBubbleCell)
return React_upvr.memo(function(arg1) -- Line 68, Named "StyledCell"
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
	local var14
	if type(any_join_result1.avatarCirclePresenceImage) ~= "table" then
		var14 = false
	else
		var14 = true
	end
	if var14 then
		-- KONSTANTWARNING: GOTO [129] #72
	end
	-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [128] 71. Error Block 45 start (CF ANALYSIS FAILED)
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
		showNewPresenceImage = var14;
		conversationId = any_join_result1.conversationId;
		BackgroundColor3 = Theme.BackgroundDefault.Color;
		BackgroundTransparency = style.Tokens.Global.Color.None.Transparency;
		onPressedBackgroundColor3 = Theme.BackgroundOnPress.Color;
		onPressedBackgroundTransparency = Theme.BackgroundOnPress.Transparency;
		avatarCircleBackgroundColor3 = Theme.PlaceHolder.Color;
		avatarCircleDividerColor3 = Theme.PlaceHolder.Color;
	}).avatarCirclePresenceImageColor3 = nil
	if var14 then
		-- KONSTANTWARNING: GOTO [138] #78
	end
	-- KONSTANTERROR: [128] 71. Error Block 45 end (CF ANALYSIS FAILED)
end)