-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:48
-- Luau version 6, Types version 3
-- Time taken: 0.004217 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox_upvr = require(Parent.UIBlox)
local Images = UIBlox_upvr.App.ImageSet.Images
local tbl_upvr = {
	Image = Images["squircles/fill"];
	SliceCenter = Rect.new(8, 8, 9, 9);
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("SearchTopBar")
any_extend_result1.defaultProps = {
	cancelText = "CancelPlaceholder";
	searchPlaceholderText = "PlaceholderText";
	initialInputText = nil;
	filterBoxPaddingTop = 6;
	filterBoxPaddingBottom = 6;
	filterBoxPaddingLeft = 0;
	filterBoxPaddingRight = 0;
	captureFocusOnMount = false;
	resetOnMount = function() -- Line 42, Named "resetOnMount"
	end;
	cancelCallback = nil;
	shouldShowCancel = true;
	textChangedCallback = nil;
	LayoutOrder = 1;
	onSelectCallback = function() -- Line 47, Named "onSelectCallback"
	end;
}
local memoize_upvr = require(Parent.AppCommonLib).memoize
local Text_upvr = require(Parent.AppCommonLib).Text
function any_extend_result1.init(arg1) -- Line 50
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: memoize_upvr (readonly)
		[3]: Text_upvr (readonly)
	]]
	arg1.inputBoxRef = Roact_upvr.createRef()
	arg1.props.onSelectCallback()
	arg1.getTextWidth = memoize_upvr(function(arg1_2, arg2, arg3) -- Line 54
		--[[ Upvalues[1]:
			[1]: Text_upvr (copied, readonly)
		]]
		return Text_upvr.GetTextWidth(arg1_2, arg2, arg3)
	end)
end
function any_extend_result1.didMount(arg1) -- Line 59
	arg1.props.resetOnMount()
end
local TextButton_upvr = UIBlox_upvr.App.Button.TextButton
local ImageSetLabel_upvr = UIBlox_upvr.Core.ImageSet.ImageSetLabel
local IconSize_upvr = UIBlox_upvr.App.Constant.IconSize
local icons_common_search_upvr = Images["icons/common/search"]
local CallbackInputBox_upvr = require(AppChat.SocialLibraries).Components.CallbackInputBox
local icons_actions_edit_clear_small_upvr = Images["icons/actions/edit/clear_small"]
function any_extend_result1.render(arg1) -- Line 63
	--[[ Upvalues[9]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: TextButton_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: IconSize_upvr (readonly)
		[7]: icons_common_search_upvr (readonly)
		[8]: CallbackInputBox_upvr (readonly)
		[9]: icons_actions_edit_clear_small_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_3) -- Line 64
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: TextButton_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: tbl_upvr (copied, readonly)
			[6]: IconSize_upvr (copied, readonly)
			[7]: icons_common_search_upvr (copied, readonly)
			[8]: CallbackInputBox_upvr (copied, readonly)
			[9]: icons_actions_edit_clear_small_upvr (copied, readonly)
		]]
		local cancelText = arg1.props.cancelText
		local Header2 = arg1_3.Font.Header2
		local udim2 = UDim2.new(1, 0, 1, 0)
		if arg1.props.shouldShowCancel then
			udim2 = UDim2.new(1, -arg1.getTextWidth(cancelText, Header2.Font, arg1_3.Font.BaseSize * Header2.RelativeSize) - 12, 1, 0)
		end
		local Body = arg1_3.Font.Body
		local module = {
			layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 4);
			});
		}
		local any_createElement_result1 = Roact_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, arg1.props.filterBoxPaddingTop);
			PaddingBottom = UDim.new(0, arg1.props.filterBoxPaddingBottom);
			PaddingLeft = UDim.new(0, arg1.props.filterBoxPaddingLeft);
			PaddingRight = UDim.new(0, arg1.props.filterBoxPaddingRight);
		})
		module.padding = any_createElement_result1
		if arg1.props.shouldShowCancel then
			any_createElement_result1 = Roact_upvr.createElement
			any_createElement_result1 = any_createElement_result1(TextButton_upvr, {
				text = cancelText;
				layoutOrder = 2;
				onActivated = arg1.props.cancelCallback;
			})
		else
			any_createElement_result1 = nil
		end
		module.cancel = any_createElement_result1
		module.filterBoxBackground = Roact_upvr.createElement(ImageSetLabel_upvr, {
			Size = udim2;
			Image = tbl_upvr.Image;
			ImageColor3 = arg1_3.Theme.UIDefault.Color;
			ImageTransparency = arg1_3.Theme.UIDefault.Transparency;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = tbl_upvr.SliceCenter;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			LayoutOrder = 1;
		}, {
			layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 4);
			});
			padding = Roact_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 12);
				PaddingRight = UDim.new(0, 12);
			});
			filterBoxIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Size = UDim2.new(0, IconSize_upvr.Small, 0, IconSize_upvr.Small);
				Image = icons_common_search_upvr;
				ImageColor3 = arg1_3.Theme.IconEmphasis.Color;
				ImageTransparency = arg1_3.Theme.IconEmphasis.Transparency;
				LayoutOrder = 1;
			});
			filterBoxContainer = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, -(IconSize_upvr.Small + 4), 1, 0);
				LayoutOrder = 2;
			}, {
				filterBox = Roact_upvr.createElement(CallbackInputBox_upvr, {
					initialInputText = arg1.props.initialInputText;
					inputTextColor3 = arg1_3.Theme.TextEmphasis.Color;
					inputTextFont = Body.Font;
					inputTextSize = arg1_3.Font.BaseSize * Body.RelativeSize;
					inputTextTransparency = arg1_3.Theme.TextEmphasis.Transparency;
					inputTextXAlignment = Enum.TextXAlignment.Left;
					placeholderText = arg1.props.searchPlaceholderText;
					placeholderTextColor3 = arg1_3.Theme.TextDefault.Color;
					placeholderTextTransparency = arg1_3.Theme.TextDefault.Transparency;
					captureFocusOnMount = arg1.props.captureFocusOnMount;
					clearIcon = icons_actions_edit_clear_small_upvr;
					clearIconColor3 = arg1_3.Theme.IconEmphasis.Color;
					clearIconTransparency = arg1_3.Theme.IconEmphasis.Transparency;
					clearButtonSize = IconSize_upvr.Small;
					clearButtonDisabled = false;
					textChangedCallback = arg1.props.textChangedCallback;
					onSelectCallback = arg1.props.onSelectCallback;
					inputBoxRef = arg1.inputBoxRef;
				});
			});
		})
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = arg1_3.Tokens.Global.Color.None.Transparency;
			BackgroundColor3 = arg1_3.Theme.BackgroundDefault.Color;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 1, 0);
			LayoutOrder = arg1.props.LayoutOrder;
		}, module)
	end)
end
return any_extend_result1