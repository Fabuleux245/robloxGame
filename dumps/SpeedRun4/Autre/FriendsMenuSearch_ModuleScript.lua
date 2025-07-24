-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:22
-- Luau version 6, Types version 3
-- Time taken: 0.006145 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Parent = FriendsMenu.Parent
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local tbl_upvr = {}
local var7
if require(FriendsMenu.utils.getRenameFriendsToConnectionsEnabledFriendsMenu)() then
	var7 = "Feature.FriendsMenu.Label.SearchForConnections"
else
	var7 = "Feature.SettingsHub.Label.SearchForFriendsPlaceholder"
end
tbl_upvr.searchPlaceHolder = var7
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local FriendsListContext_upvr = require(FriendsMenu.Context.FriendsListContext)
local getLocalizedStrings_upvr = require(Parent.NotificationsCommon).LocalizationHelper.getLocalizedStrings
local GetFFlagEnableFriendsListSearchNormalizationErrorFix_upvr = require(Parent.SharedFlags).GetFFlagEnableFriendsListSearchNormalizationErrorFix
local Debounce_upvr = require(Parent.NotificationsCommon).Debounce
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_menu_search_upvr = Images["icons/menu/search"]
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local icons_actions_edit_clear_upvr = Images["icons/actions/edit/clear"]
function var7(arg1) -- Line 47
	--[[ Upvalues[11]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: FriendsListContext_upvr (readonly)
		[4]: getLocalizedStrings_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: GetFFlagEnableFriendsListSearchNormalizationErrorFix_upvr (readonly)
		[7]: Debounce_upvr (readonly)
		[8]: ImageSetLabel_upvr (readonly)
		[9]: icons_menu_search_upvr (readonly)
		[10]: ImageSetButton_upvr (readonly)
		[11]: icons_actions_edit_clear_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useStyle_upvr_result1 = useStyle_upvr()
	local any_useContext_result1 = React_upvr.useContext(FriendsListContext_upvr)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local searchFriendsString = any_useContext_result1.searchFriendsString
	local searchFriends_upvr = any_useContext_result1.searchFriends
	local var23
	if 0 >= #searchFriendsString then
		var23 = false
	else
		var23 = true
	end
	local var24
	if GetFFlagEnableFriendsListSearchNormalizationErrorFix_upvr() then
		var24 = React_upvr.useCallback(Debounce_upvr(function(arg1_2) -- Line 60
			--[[ Upvalues[1]:
				[1]: searchFriends_upvr (readonly)
			]]
			searchFriends_upvr(arg1_2.Text:lower())
		end, 0.5), {searchFriends_upvr})
	else
		var24 = function(arg1_3) -- Line 68
			--[[ Upvalues[1]:
				[1]: searchFriends_upvr (readonly)
			]]
			searchFriends_upvr(arg1_3.Text)
		end
	end
	React_upvr.useEffect(function() -- Line 75
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if any_useRef_result1_upvr.current and arg1.focusElement then
			any_useRef_result1_upvr.current:CaptureFocus()
		end
	end, {any_useRef_result1_upvr.current})
	local module = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			Padding = UDim.new(0, 4);
		});
		UIStroke = React_upvr.createElement("UIStroke", {
			Thickness = 1;
			Color = useStyle_upvr_result1.Theme.UIDefault.Color;
			Transparency = useStyle_upvr_result1.Theme.UIDefault.Transparency;
		});
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 4);
		});
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 8);
			PaddingRight = UDim.new(0, 8);
			PaddingTop = UDim.new(0, 6);
			PaddingBottom = UDim.new(0, 6);
		});
		SearchIcon = React_upvr.createElement(ImageSetLabel_upvr, {
			LayoutOrder = 0;
			Size = UDim2.fromOffset(18, 18);
			BackgroundTransparency = 1;
			Image = icons_menu_search_upvr;
			ImageColor3 = useStyle_upvr_result1.Theme.IconEmphasis.Color;
			ImageTransparency = useStyle_upvr_result1.Theme.IconEmphasis.Transparency;
		});
		SearchField = React_upvr.createElement("TextBox", {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, -46, 1, 0);
			ClearTextOnFocus = false;
			PlaceholderColor3 = useStyle_upvr_result1.Theme.TextDefault.Color;
			PlaceholderText = getLocalizedStrings_upvr(tbl_upvr).searchPlaceHolder;
			Text = searchFriendsString;
			TextColor3 = useStyle_upvr_result1.Theme.TextDefault.Color;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextSize = 16;
			Font = useStyle_upvr_result1.Font.Body.Font;
			ref = any_useRef_result1_upvr;
			[React_upvr.Event.Focused] = arg1.onFocus;
			[React_upvr.Change.Text] = var24;
		});
	}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl[React_upvr.Event.Activated] = function() -- Line 140
			--[[ Upvalues[1]:
				[1]: searchFriends_upvr (readonly)
			]]
			searchFriends_upvr("")
		end
		tbl.ImageTransparency = useStyle_upvr_result1.Theme.IconEmphasis.Transparency
		tbl.ImageColor3 = useStyle_upvr_result1.Theme.IconEmphasis.Color
		tbl.Image = icons_actions_edit_clear_upvr
		tbl.Size = UDim2.new(0, 24, 0, 24)
		tbl.LayoutOrder = 2
		tbl.BackgroundTransparency = 1
		local tbl = {}
		return React_upvr.createElement(ImageSetButton_upvr, tbl)
	end
	if not var23 or not INLINED() then
	end
	module.ClearButton = nil
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(0, 0.5);
		Size = arg1.size;
		LayoutOrder = arg1.layoutOrder;
	}, module)
end
return var7