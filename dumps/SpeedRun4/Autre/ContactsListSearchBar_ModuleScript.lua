-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:32
-- Luau version 6, Types version 3
-- Time taken: 0.003440 seconds

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local useLocalization_upvr = dependencies.useLocalization
local TextKeys_upvr = require(ContactImporter.Common.TextKeys)
local useStyle_upvr = dependencies.useStyle
local React_upvr = dependencies.React
local Roact_upvr = dependencies.Roact
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local IconSize_upvr = UIBlox.App.Constant.IconSize
local icons_common_search_upvr = Images["icons/common/search"]
local CallbackInputBox_upvr = dependencies.SocialLibraries.Components.CallbackInputBox
local icons_actions_edit_clear_small_upvr = Images["icons/actions/edit/clear_small"]
function ContactsListSearchBar(arg1) -- Line 29
	--[[ Upvalues[10]:
		[1]: useLocalization_upvr (readonly)
		[2]: TextKeys_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: IconSize_upvr (readonly)
		[8]: icons_common_search_upvr (readonly)
		[9]: CallbackInputBox_upvr (readonly)
		[10]: icons_actions_edit_clear_small_upvr (readonly)
	]]
	local var7_result1 = useStyle_upvr()
	local any_useState_result1, any_useState_result2 = React_upvr.useState(false)
	local module = {
		layout = Roact_upvr.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 4);
		});
		BorderRadius = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 4);
		});
	}
	local tbl_3 = {}
	local Border = Enum.ApplyStrokeMode.Border
	tbl_3.ApplyStrokeMode = Border
	if any_useState_result1 then
		Border = var7_result1.Theme.SecondaryOnHover.Color
	else
		Border = var7_result1.Theme.Divider.Color
	end
	tbl_3.Color = Border
	if any_useState_result1 then
		Border = var7_result1.Theme.SecondaryOnHover.Transparency
	else
		Border = var7_result1.Theme.Divider.Transparency
	end
	tbl_3.Transparency = Border
	Border = 1
	tbl_3.Thickness = Border
	module.Border = React_upvr.createElement("UIStroke", tbl_3)
	local tbl_2 = {}
	Border = UDim.new(0, 13)
	tbl_2.PaddingLeft = Border
	Border = UDim.new(0, 13)
	tbl_2.PaddingRight = Border
	module.padding = Roact_upvr.createElement("UIPadding", tbl_2)
	local tbl = {}
	Border = 1
	tbl.BackgroundTransparency = Border
	Border = UDim2.new(0, IconSize_upvr.Small, 0, IconSize_upvr.Small)
	tbl.Size = Border
	Border = icons_common_search_upvr
	tbl.Image = Border
	Border = var7_result1.Theme.IconEmphasis.Color
	tbl.ImageColor3 = Border
	Border = 1
	tbl.LayoutOrder = Border
	module.icon = Roact_upvr.createElement(ImageSetLabel_upvr, tbl)
	local tbl_4 = {}
	Border = 1
	tbl_4.BackgroundTransparency = Border
	Border = 2
	tbl_4.LayoutOrder = Border
	Border = UDim2.new(1, -IconSize_upvr.Small, 0, arg1.height)
	tbl_4.Size = Border
	Border = {}
	Border.searchBar = Roact_upvr.createElement(CallbackInputBox_upvr, {
		clearIcon = icons_actions_edit_clear_small_upvr;
		clearIconColor3 = var7_result1.Theme.IconEmphasis.Color;
		clearIconTransparency = var7_result1.Theme.IconEmphasis.Transparency;
		clearButtonSize = IconSize_upvr.Small;
		clearButtonDisabled = false;
		focusChangedCallback = any_useState_result2;
		inputTextColor3 = var7_result1.Theme.TextEmphasis.Color;
		inputTextTransparency = var7_result1.Theme.TextEmphasis.Transparency;
		placeholderText = useLocalization_upvr({
			searchContacts = TextKeys_upvr.SEARCH_CONTACTS;
		}).searchContacts;
		placeholderTextColor3 = var7_result1.Theme.TextMuted.Color;
		placeholderTextTransparency = var7_result1.Theme.TextMuted.Transparency;
		inputTextXAlignment = Enum.TextXAlignment.Left;
		textChangedCallback = arg1.textChangeCallback;
	})
	module.searchBarWrapper = Roact_upvr.createElement("Frame", tbl_4, Border)
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = var7_result1.Theme.BackgroundMuted.Transparency;
		BorderSizePixel = 0;
		BackgroundColor3 = var7_result1.Theme.BackgroundMuted.Color;
		Size = UDim2.new(1, 0, 0, arg1.height);
		LayoutOrder = arg1.layoutOrder;
	}, module)
end
return ContactsListSearchBar