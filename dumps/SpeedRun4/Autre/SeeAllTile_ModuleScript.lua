-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:07
-- Luau version 6, Types version 3
-- Time taken: 0.003003 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local UIBlox = require(Parent.UIBlox)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useCursor_upvr = UIBlox.App.SelectionCursor.useCursor
local icons_navigation_pushRight_upvr = UIBlox.App.ImageSet.Images["icons/navigation/pushRight"]
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
function SeeAllTile(arg1) -- Line 26
	--[[ Upvalues[6]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: useCursor_upvr (readonly)
		[4]: icons_navigation_pushRight_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
	]]
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr()
	local udim = UDim.new(0, useDesignTokens_upvr_result1.Global.Space_100)
	local Subheader = useDesignTokens_upvr_result1.Semantic.Typography.Subheader
	local title = arg1.title
	if not title then
		title = useLocalization_upvr({
			seeAll = "Feature.Home.ActionSeeAll";
		}).seeAll
	end
	local icon = arg1.icon
	if not icon then
		icon = icons_navigation_pushRight_upvr
	end
	local Medium = useDesignTokens_upvr_result1.Semantic.Icon.Size.Medium
	return React_upvr.createElement("TextButton", {
		AutoButtonColor = false;
		Text = "";
		Size = arg1.Size;
		LayoutOrder = arg1.LayoutOrder;
		BackgroundTransparency = useDesignTokens_upvr_result1.Semantic.Color.BackgroundUi.Default.Transparency;
		BackgroundColor3 = useDesignTokens_upvr_result1.Semantic.Color.BackgroundUi.Default.Color3;
		[React_upvr.Event.Activated] = arg1.onActivated;
		SelectionImageObject = useCursor_upvr(udim);
	}, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = udim;
		});
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, useDesignTokens_upvr_result1.Global.Space_50);
		});
		Icon = React_upvr.createElement(ImageSetLabel_upvr, {
			Size = UDim2.fromOffset(Medium, Medium);
			BackgroundTransparency = 1;
			Image = icon;
			ImageColor3 = useDesignTokens_upvr_result1.Semantic.Color.Icon.Emphasis.Color3;
			ImageTransparency = useDesignTokens_upvr_result1.Semantic.Color.Icon.Emphasis.Transparency;
			LayoutOrder = 1;
		});
		Title = React_upvr.createElement("TextLabel", {
			Text = title;
			Size = UDim2.new(1, 0, 0, Subheader.FontSize);
			TextXAlignment = Enum.TextXAlignment.Center;
			LayoutOrder = 2;
			Font = Subheader.Font;
			TextSize = Subheader.FontSize;
			TextColor3 = useDesignTokens_upvr_result1.Semantic.Color.Text.Emphasis.Color3;
			TextTruncate = Enum.TextTruncate.AtEnd;
			BackgroundTransparency = 1;
		});
	})
end
return SeeAllTile