-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:03
-- Luau version 6, Types version 3
-- Time taken: 0.000902 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Parent = FriendsLanding.Parent
local useStyle_upvr = dependencies.UIBlox.Core.Style.useStyle
local useLocalization_upvr = dependencies.Hooks.useLocalization
local React_upvr = require(Parent.React)
local TenFootUiGridCarouselHeader_upvr = require(Parent.TenFootUiSharedComponents).TenFootUiGridCarouselHeader
return function(arg1) -- Line 16, Named "FriendsListHeader"
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: TenFootUiGridCarouselHeader_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = arg1.LayoutOrder;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 0, 0);
	}, {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, useStyle_upvr().Tokens.Global.Space_500);
		});
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		GridHeader = React_upvr.createElement(TenFootUiGridCarouselHeader_upvr, {
			text = `{useLocalization_upvr({
				friends = "CommonUI.Features.Label.Friends";
			}).friends} ({tostring(arg1.friendCount or 0)})`;
		});
	})
end