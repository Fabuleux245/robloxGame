-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:18
-- Luau version 6, Types version 3
-- Time taken: 0.001466 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Parent = FriendsMenu.Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local getRenameFriendsToConnectionsEnabledFriendsMenu_upvr = require(FriendsMenu.utils.getRenameFriendsToConnectionsEnabledFriendsMenu)
local getLocalizedStrings_upvr = require(Parent.NotificationsCommon).LocalizationHelper.getLocalizedStrings
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_menu_friends_large_upvr = UIBlox.App.ImageSet.Images["icons/menu/friends_large"]
return function() -- Line 20
	--[[ Upvalues[6]:
		[1]: useStyle_upvr (readonly)
		[2]: getRenameFriendsToConnectionsEnabledFriendsMenu_upvr (readonly)
		[3]: getLocalizedStrings_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: icons_menu_friends_large_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local Theme = useStyle_upvr_result1.Theme
	local Font = useStyle_upvr_result1.Font
	local tbl = {}
	local var15
	if getRenameFriendsToConnectionsEnabledFriendsMenu_upvr() then
		var15 = "Feature.SettingsHub.Label.NoConnectionsPageMessage"
	else
		var15 = "Feature.SettingsHub.Label.NoFriendsPageMessage"
	end
	tbl.noFriendsText = var15
	var15 = getLocalizedStrings_upvr(tbl)
	local var16 = Font.BaseSize * Font.Body.RelativeSize
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, -20);
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		Name = "EmptyFriendsList";
	}, {
		listLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 12);
		});
		friendsIcon = React_upvr.createElement(ImageSetLabel_upvr, {
			Image = icons_menu_friends_large_upvr;
			Size = UDim2.new(0, 48, 0, 48);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		});
		subtitle = React_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Text = var15.noFriendsText;
			TextColor3 = Theme.TextDefault.Color;
			TextTransparency = Theme.TextDefault.Transparency;
			TextSize = var16;
			TextWrapped = true;
			Font = Font.Body.Font;
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 0, var16);
			TextYAlignment = Enum.TextYAlignment.Top;
		});
	})
end