-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:03
-- Luau version 6, Types version 3
-- Time taken: 0.012192 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local tbl_upvr = {
	cancelText = "Cancel";
	searchPlaceholderText = "Text";
	initialInputText = nil;
	LayoutOrder = 1;
	isDisabled = false;
	captureFocusOnMount = false;
	cancelCallback = nil;
	textChangedCallback = nil;
	focusChangedCallback = function() -- Line 68, Named "focusChangedCallback"
	end;
}
local FFlagDisableAutocorrectSocialUserSearch_upvr = require(Parent.SharedFlags).FFlagDisableAutocorrectSocialUserSearch
local RoactAppExperiment_upvr = require(Parent.RoactAppExperiment)
local game_DefineFastString_result1_upvr = game:DefineFastString("DisableAutocorrectExperimentLayer", "Social.UserSearchUX")
local Dash_upvr = require(Parent.Dash)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local Text_upvr = require(Parent.AppCommonLib).Text
local TextButton_upvr = UIBlox.App.Button.TextButton
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_common_search_upvr = Images["icons/common/search"]
local CallbackInputBox_upvr = require(Parent.LuaSocialLibrariesDeps).SocialLibraries.config({}).Components.CallbackInputBox
local icons_actions_edit_clear_small_upvr = Images["icons/actions/edit/clear_small"]
local IconSize_upvr = UIBlox.App.Constant.IconSize
return function(arg1) -- Line 71
	--[[ Upvalues[14]:
		[1]: FFlagDisableAutocorrectSocialUserSearch_upvr (readonly)
		[2]: RoactAppExperiment_upvr (readonly)
		[3]: game_DefineFastString_result1_upvr (readonly)
		[4]: Dash_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: useStyle_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: Text_upvr (readonly)
		[9]: TextButton_upvr (readonly)
		[10]: ImageSetLabel_upvr (readonly)
		[11]: icons_common_search_upvr (readonly)
		[12]: CallbackInputBox_upvr (readonly)
		[13]: icons_actions_edit_clear_small_upvr (readonly)
		[14]: IconSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 64 start (CF ANALYSIS FAILED)
	local var56
	if FFlagDisableAutocorrectSocialUserSearch_upvr then
		local _ = RoactAppExperiment_upvr.useUserExperiment({game_DefineFastString_result1_upvr}, function(arg1_4) -- Line 73
			--[[ Upvalues[1]:
				[1]: game_DefineFastString_result1_upvr (copied, readonly)
			]]
			local var59 = arg1_4[game_DefineFastString_result1_upvr]
			if not var59 then
				var59 = {}
			end
			return var59.disableAutocorrectSocialUserSearch
		end)
	else
	end
	var56 = arg1
	if not var56 then
		var56 = {}
	end
	local any_join_result1_upvr_2 = Dash_upvr.join(tbl_upvr, var56)
	local var10_result1_upvr = useStyle_upvr()
	var56 = React_upvr.useRef(nil)
	local any_useState_result1, any_useState_result2_upvr_4 = React_upvr.useState(nil)
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState(nil)
	React_upvr.useEffect(function() -- Line 86
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr_2 (readonly)
		]]
		if any_join_result1_upvr_2.onSelectCallback then
			any_join_result1_upvr_2.onSelectCallback()
		end
		if any_join_result1_upvr_2.resetOnMount then
			any_join_result1_upvr_2.resetOnMount()
		end
	end, {})
	local Header2_2 = var10_result1_upvr.Font.Header2
	local var69 = 0
	if any_join_result1_upvr_2.isDisabled then
		var69 = UDim2.new(1, 0, 1, 0)
	else
		var69 = UDim2.new(1, -Text_upvr.GetTextWidth(any_join_result1_upvr_2.cancelText, Header2_2.Font, var10_result1_upvr.Font.BaseSize * Header2_2.RelativeSize) - 12, 1, 0)
	end
	local Body = var10_result1_upvr.Font.Body
	local var71 = var10_result1_upvr.Font.BaseSize * Body.RelativeSize
	local _ = {
		BackgroundTransparency = var10_result1_upvr.Theme.BackgroundDefault.Transparency;
		BackgroundColor3 = var10_result1_upvr.Theme.BackgroundDefault.Color;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
		LayoutOrder = any_join_result1_upvr_2.LayoutOrder;
	}
	if any_join_result1_upvr_2.isDisabled then
		local _
	elseif any_join_result1_upvr_2.cancelCallback then
	end
	;({
		Layout = React_upvr.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(var69, 4);
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 6);
			PaddingBottom = UDim.new(0, 6);
		});
	}).CancelTextButton = React_upvr.createElement(TextButton_upvr, {
		text = any_join_result1_upvr_2.cancelText;
		layoutOrder = 2;
		onActivated = any_join_result1_upvr_2.cancelCallback;
	})
	local _ = {
		Size = var69;
		BackgroundColor3 = var10_result1_upvr.Theme.UIMuted.Color;
		BackgroundTransparency = var10_result1_upvr.Theme.UIMuted.Transparency;
		BorderSizePixel = 0;
		LayoutOrder = 1;
	}
	local tbl_14 = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 4);
		});
	}
	local tbl_12 = {}
	local var83 = any_useState_result1
	if not var83 then
		var83 = var10_result1_upvr.Theme.Divider.Color
	end
	tbl_12.Color = var83
	var83 = any_useState_result1_2
	local var84 = var83
	if not var84 then
		var84 = var10_result1_upvr.Theme.Divider.Transparency
	end
	tbl_12.Transparency = var84
	tbl_12.Thickness = 1
	tbl_14.UIStroke = React_upvr.createElement("UIStroke", tbl_12)
	tbl_14.UIListLayout = React_upvr.createElement("UIListLayout", {
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, 4);
	})
	tbl_14.UIPadding = React_upvr.createElement("UIPadding", {
		PaddingLeft = UDim.new(0, 10);
		PaddingRight = UDim.new(0, 10);
	})
	tbl_14.SearchIcon = React_upvr.createElement(ImageSetLabel_upvr, {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 24, 0, 24);
		Image = icons_common_search_upvr;
		ImageColor3 = var10_result1_upvr.Theme.IconEmphasis.Color;
		ImageTransparency = var10_result1_upvr.Theme.IconEmphasis.Transparency;
		LayoutOrder = 1;
	})
	local tbl_9 = {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, -28, 1, 0);
		LayoutOrder = 2;
	}
	if any_join_result1_upvr_2.isDisabled then
		local _ = {
			Text = any_join_result1_upvr_2.searchPlaceholderText;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Center;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			TextSize = var71;
			Font = Body.Font;
			TextColor3 = var10_result1_upvr.Theme.TextDefault.Color;
			TextTransparency = var10_result1_upvr.Theme.TextMuted.Transparency;
		}
		-- KONSTANTWARNING: GOTO [594] #389
	end
	local var90
	local tbl_3 = {}
	var90 = any_join_result1_upvr_2.initialInputText
	tbl_3.initialInputText = var90
	var90 = var10_result1_upvr.Theme.TextEmphasis.Color
	tbl_3.inputTextColor3 = var90
	var90 = Body.Font
	tbl_3.inputTextFont = var90
	tbl_3.inputTextSize = var71
	var90 = var10_result1_upvr.Theme.TextEmphasis.Transparency
	tbl_3.inputTextTransparency = var90
	var90 = Enum.TextXAlignment.Left
	tbl_3.inputTextXAlignment = var90
	if FFlagDisableAutocorrectSocialUserSearch_upvr and nil then
		var90 = Enum.TextInputType.NoSuggestions
	else
		var90 = nil
	end
	tbl_3.textInputType = var90
	-- KONSTANTERROR: [0] 1. Error Block 64 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [514] 343. Error Block 59 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
		var90 = Enum.ReturnKeyType.Search
	else
		-- KONSTANTERROR: [518] 346. Error Block 31 start (CF ANALYSIS FAILED)
		var90 = nil
		-- KONSTANTERROR: [518] 346. Error Block 31 end (CF ANALYSIS FAILED)
	end
	tbl_3.returnKeyType = var90
	var90 = any_join_result1_upvr_2.searchPlaceholderText
	tbl_3.placeholderText = var90
	var90 = var10_result1_upvr.Theme.TextDefault.Color
	tbl_3.placeholderTextColor3 = var90
	var90 = var10_result1_upvr.Theme.TextMuted.Transparency
	tbl_3.placeholderTextTransparency = var90
	var90 = any_join_result1_upvr_2.captureFocusOnMount
	tbl_3.captureFocusOnMount = var90
	var90 = false
	tbl_3.clearButtonDisabled = var90
	var90 = icons_actions_edit_clear_small_upvr
	tbl_3.clearIcon = var90
	var90 = var10_result1_upvr.Theme.IconEmphasis.Color
	tbl_3.clearIconColor3 = var90
	var90 = var10_result1_upvr.Theme.IconEmphasis.Transparency
	tbl_3.clearIconTransparency = var90
	var90 = IconSize_upvr.Small
	tbl_3.clearButtonSize = var90
	var90 = any_join_result1_upvr_2.textChangedCallback
	tbl_3.textChangedCallback = var90
	var90 = any_join_result1_upvr_2.onSelectCallback
	tbl_3.onSelectCallback = var90
	function tbl_3.focusChangedCallback(arg1_5, arg2) -- Line 110
		--[[ Upvalues[4]:
			[1]: any_join_result1_upvr_2 (readonly)
			[2]: any_useState_result2_upvr_4 (readonly)
			[3]: var10_result1_upvr (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
		]]
		if any_join_result1_upvr_2.focusChangedCallback then
			any_join_result1_upvr_2.focusChangedCallback(arg1_5, arg2)
		end
		if arg1_5 then
			any_useState_result2_upvr_4(var10_result1_upvr.Theme.SecondaryOnHover.Color)
			any_useState_result2_upvr_2(var10_result1_upvr.Theme.SecondaryOnHover.Transparency)
		else
			any_useState_result2_upvr_4(var10_result1_upvr.Theme.Divider.Color)
			any_useState_result2_upvr_2(var10_result1_upvr.Theme.Divider.Transparency)
		end
	end
	-- KONSTANTERROR: [514] 343. Error Block 59 end (CF ANALYSIS FAILED)
end