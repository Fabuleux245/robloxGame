-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:20
-- Luau version 6, Types version 3
-- Time taken: 0.001910 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Parent = FriendsMenu.Parent
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local getRenameFriendsToConnectionsEnabledFriendsMenu_upvr = require(FriendsMenu.utils.getRenameFriendsToConnectionsEnabledFriendsMenu)
local getLocalizedStrings_upvr = require(Parent.NotificationsCommon).LocalizationHelper.getLocalizedStrings
local React_upvr = require(Parent.React)
return function(arg1) -- Line 18
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: getRenameFriendsToConnectionsEnabledFriendsMenu_upvr (readonly)
		[3]: getLocalizedStrings_upvr (readonly)
		[4]: React_upvr (readonly)
	]]
	local var4_result1 = useStyle_upvr()
	local Theme = var4_result1.Theme
	local Font = var4_result1.Font
	local tbl = {}
	local var12
	if getRenameFriendsToConnectionsEnabledFriendsMenu_upvr() then
		var12 = "Feature.SettingsHub.Label.ConnectionsListLoadErrorMessage"
	else
		var12 = "Feature.SettingsHub.Label.FriendsListLoadErrorMessage"
	end
	tbl.errorFriendsList = var12
	var12 = "Feature.SettingsHub.Label.InviteSearchNoResults"
	tbl.noResultFriendsList = var12
	var12 = Font.BaseSize * Font.Body.RelativeSize
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		Name = arg1.msgType;
	}, {
		subtitle = React_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Text = getLocalizedStrings_upvr(tbl)[arg1.msgType];
			TextColor3 = Theme.TextDefault.Color;
			TextTransparency = Theme.TextDefault.Transparency;
			TextSize = var12;
			TextWrapped = true;
			Font = Font.Body.Font;
			Size = UDim2.new(1, 0, 0, var12);
			Position = UDim2.new(0, 0, 0.4, 0);
			TextYAlignment = Enum.TextYAlignment.Top;
		});
	})
end