-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:12
-- Luau version 6, Types version 3
-- Time taken: 0.002280 seconds

local CorePackages = game:GetService("CorePackages")
local dependencies = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local tbl_upvr = {
	searchBarHeight = 36;
	searchText = "";
}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(CorePackages.Packages.React)
local useLocalization_upvr = dependencies.Hooks.useLocalization
local Colors_upvr = UIBlox.App.Style.Colors
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 35
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: Colors_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: Images_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var7_result1 = useStyle_upvr()
	local Font = var7_result1.Font
	local Theme = var7_result1.Theme
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local module = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 4);
		});
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 12);
			PaddingRight = UDim.new(0, 12);
		});
		UIStroke = React_upvr.createElement("UIStroke", {
			Color = Colors_upvr.Pumice;
			Thickness = 1;
		});
	}
	local tbl = {
		LayoutOrder = 1;
		BackgroundTransparency = 1;
	}
	local icons_common_search_small = Images_upvr["icons/common/search_small"]
	tbl.Image = icons_common_search_small
	if any_useState_result1 then
		icons_common_search_small = Colors_upvr.White
	else
		icons_common_search_small = Color3.fromHex("#696A6B")
	end
	tbl.ImageColor3 = icons_common_search_small
	tbl.Size = UDim2.fromOffset(16, 16)
	module.SearchImage = React_upvr.createElement(ImageSetLabel_upvr, tbl)
	module.TextBox = React_upvr.createElement("TextBox", {
		Size = UDim2.new(1, -20, 1, 0);
		BackgroundTransparency = 1;
		ClearTextOnFocus = false;
		ClipsDescendants = true;
		Font = Font.Body.Font;
		LayoutOrder = 2;
		PlaceholderColor3 = Color3.fromHex("#696A6B");
		PlaceholderText = useLocalization_upvr({
			searchFriendsLabel = "Feature.Call.Prompt.SearchFriends";
		}).searchFriendsLabel;
		Text = any_join_result1_upvr.searchText;
		TextColor3 = Colors_upvr.White;
		TextSize = Font.BaseSize * Font.Body.RelativeSize;
		TextXAlignment = Enum.TextXAlignment.Left;
		[React_upvr.Event.Changed] = React_upvr.useCallback(function(arg1_2, arg2) -- Line 43
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			if arg2 == "Text" then
				any_join_result1_upvr.onSearchChanged(arg1_2.Text)
			end
		end, {any_join_result1_upvr.onSearchChanged});
		[React_upvr.Event.Focused] = function() -- Line 98
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: any_join_result1_upvr (readonly)
			]]
			any_useState_result2_upvr(true)
			any_join_result1_upvr.onFocused()
		end;
		[React_upvr.Event.FocusLost] = function() -- Line 102
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(false)
		end;
	})
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, -48, 0, any_join_result1_upvr.searchBarHeight);
		BackgroundColor3 = Theme.UIMuted.Color;
		BackgroundTransparency = Theme.UIMuted.Transparency;
		LayoutOrder = any_join_result1_upvr.layoutOrder;
	}, module)
end