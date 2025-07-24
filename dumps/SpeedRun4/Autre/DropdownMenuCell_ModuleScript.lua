-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:07
-- Luau version 6, Types version 3
-- Time taken: 0.010609 seconds

local Parent_2 = script.Parent.Parent
local Parent_3 = Parent_2.Parent
local Parent = Parent_3.Parent
local Core = Parent_3.Core
local Roact_upvr = require(Parent.Roact)
local t_upvr = require(Parent.t)
local Cryo_upvr = require(Parent.Cryo)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local validateImage = require(Core.ImageSet.Validator.validateImage)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("DropdownMenuCell")
local function getColorFromMap_upvr(arg1, arg2) -- Line 37, Named "getColorFromMap"
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	local var11 = arg1[arg2]
	if not var11 then
		var11 = arg1[ControlState_upvr.Default]
	end
	return {
		Color = var11.Color;
		Transparency = var11.Transparency;
	}
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 45, Named "getButtonStyle"
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	local arg1_result1 = arg1(arg2, arg3, arg4)
	if arg3 ~= ControlState_upvr.Disabled and arg3 ~= ControlState_upvr.Pressed and arg5 then
		arg1_result1.Transparency = 0.5 * arg1_result1.Transparency + 0.5
	end
	return arg1_result1
end
local function _(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 53, Named "getButtonContentStyle"
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	local arg1_result1_2 = arg1(arg2, arg3, arg4)
	if arg3 ~= ControlState_upvr.Disabled and arg3 ~= ControlState_upvr.Pressed and (arg5 or not arg6) then
		arg1_result1_2.Transparency = 0.5 * arg1_result1_2.Transparency + 0.5
	end
	return arg1_result1_2
end
function any_extend_result1_upvr.init(arg1) -- Line 65
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1:setState({
		controlState = ControlState_upvr.Initialize;
	})
	function arg1.onStateChanged(arg1_2, arg2) -- Line 70
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_3 = {}
		tbl_3.controlState = arg2
		arg1:setState(tbl_3)
		if arg1.props.onStateChanged then
			arg1.props.onStateChanged(arg1_2, arg2)
		end
	end
end
local any_union_result1 = t_upvr.union(t_upvr.interface({
	[ControlState_upvr.Default] = t_upvr.string;
}), t_upvr.interface({
	[ControlState_upvr.Default] = require(Core.Style.Validator.validateColorInfo);
}))
any_extend_result1_upvr.validateProps = t_upvr.interface({
	icon = t_upvr.optional(validateImage);
	text = t_upvr.optional(t_upvr.string);
	textFont = t_upvr.optional(require(Core.Style.Validator.validateTypographyInfo));
	buttonImage = validateImage;
	buttonStateColorMap = any_union_result1;
	contentStateColorMap = any_union_result1;
	textStateColorMap = t_upvr.optional(any_union_result1);
	iconStateColorMap = t_upvr.optional(any_union_result1);
	isDisabled = t_upvr.optional(t_upvr.boolean);
	isActivated = t_upvr.optional(t_upvr.boolean);
	hasContent = t_upvr.optional(t_upvr.boolean);
	isLoading = t_upvr.optional(t_upvr.boolean);
	onActivated = t_upvr.callback;
	onStateChanged = t_upvr.optional(t_upvr.callback);
	userInteractionEnabled = t_upvr.optional(t_upvr.boolean);
	iconSize = t_upvr.optional(t_upvr.number);
	containerPadding = t_upvr.optional(t_upvr.strictInterface({
		left = t_upvr.number;
		right = t_upvr.number;
	}));
	iconTextSpacing = t_upvr.optional(t_upvr.number);
	border = t_upvr.optional(t_upvr.strictInterface({
		cornerRadius = t_upvr.number;
		size = t_upvr.number;
	}));
	enableTokenOverride = t_upvr.optional(t_upvr.boolean);
	selectionOrder = t_upvr.optional(t_upvr.number);
	selectionCursor = t_upvr.optional(t_upvr.any);
})
any_extend_result1_upvr.defaultProps = {
	isDisabled = false;
	isLoading = false;
	SliceCenter = Rect.new(8, 8, 9, 9);
	iconSize = require(Parent_2.Constant.IconSize).Regular;
	containerPadding = {
		left = 12;
		right = 20;
	};
	iconTextSpacing = 5;
	border = {
		cornerRadius = 8;
		size = 1;
	};
	enableTokenOverride = false;
}
local withStyle_upvr = require(Core.Style.withStyle)
local withSelectionCursorProvider_upvr = require(Parent_2.SelectionImage.withSelectionCursorProvider)
local CursorKind_upvr = require(Parent_2.SelectionImage.CursorKind)
local getContentStyle_upvr = require(Core.Button.getContentStyle)
local ShimmerPanel_upvr = require(Parent_2.Loading.ShimmerPanel)
local GenericTextLabel_upvr = require(Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local Interactable_upvr = require(Core.Control.Interactable)
function any_extend_result1_upvr.render(arg1) -- Line 183
	--[[ Upvalues[13]:
		[1]: withStyle_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
		[3]: t_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
		[5]: getColorFromMap_upvr (readonly)
		[6]: getContentStyle_upvr (readonly)
		[7]: ControlState_upvr (readonly)
		[8]: Roact_upvr (readonly)
		[9]: ShimmerPanel_upvr (readonly)
		[10]: GenericTextLabel_upvr (readonly)
		[11]: ImageSetComponent_upvr (readonly)
		[12]: Cryo_upvr (readonly)
		[13]: Interactable_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 184
		--[[ Upvalues[13]:
			[1]: withSelectionCursorProvider_upvr (copied, readonly)
			[2]: t_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: CursorKind_upvr (copied, readonly)
			[5]: getColorFromMap_upvr (copied, readonly)
			[6]: getContentStyle_upvr (copied, readonly)
			[7]: ControlState_upvr (copied, readonly)
			[8]: Roact_upvr (copied, readonly)
			[9]: ShimmerPanel_upvr (copied, readonly)
			[10]: GenericTextLabel_upvr (copied, readonly)
			[11]: ImageSetComponent_upvr (copied, readonly)
			[12]: Cryo_upvr (copied, readonly)
			[13]: Interactable_upvr (copied, readonly)
		]]
		return withSelectionCursorProvider_upvr(function(arg1_4) -- Line 185
			--[[ Upvalues[13]:
				[1]: t_upvr (copied, readonly)
				[2]: arg1_3 (readonly)
				[3]: arg1 (copied, readonly)
				[4]: CursorKind_upvr (copied, readonly)
				[5]: getColorFromMap_upvr (copied, readonly)
				[6]: getContentStyle_upvr (copied, readonly)
				[7]: ControlState_upvr (copied, readonly)
				[8]: Roact_upvr (copied, readonly)
				[9]: ShimmerPanel_upvr (copied, readonly)
				[10]: GenericTextLabel_upvr (copied, readonly)
				[11]: ImageSetComponent_upvr (copied, readonly)
				[12]: Cryo_upvr (copied, readonly)
				[13]: Interactable_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			assert(t_upvr.table(arg1_3), "Style provider is missing.")
			local controlState = arg1.state.controlState
			local text = arg1.props.text
			local icon = arg1.props.icon
			local iconSize = arg1.props.iconSize
			local containerPadding = arg1.props.containerPadding
			local isLoading = arg1.props.isLoading
			local contentStateColorMap = arg1.props.contentStateColorMap
			local var44
			if isLoading then
				var44 = true
			end
			local var45
			if not arg1.props.selectionCursor and arg1_4 then
				var45 = CursorKind_upvr.RoundedRectNoInset
			end
			var45 = nil
			if arg1.props.enableTokenOverride then
				var45 = getColorFromMap_upvr
			else
				var45 = getContentStyle_upvr
			end
			local var46
			if controlState ~= ControlState_upvr.Disabled and controlState ~= ControlState_upvr.Pressed and arg1.props.isActivated then
				var46.Transparency = 0.5 * var46.Transparency + 0.5
			end
			local var47 = var46
			if text then
				var46 = arg1.props.isActivated
				local var45_result1_2 = var45(arg1.props.textStateColorMap or contentStateColorMap, controlState, arg1_3)
				if controlState ~= ControlState_upvr.Disabled and controlState ~= ControlState_upvr.Pressed and (var46 or not arg1.props.hasContent) then
					var45_result1_2.Transparency = 0.5 * var45_result1_2.Transparency + 0.5
				end
			end
			if icon then
				var46 = arg1_3
				local var45_result1 = var45(arg1.props.iconStateColorMap or contentStateColorMap, controlState, var46)
				if controlState ~= ControlState_upvr.Disabled and controlState ~= ControlState_upvr.Pressed then
					if not arg1.props.isActivated then
					else
						var45_result1.Transparency = 0.5 * var45_result1.Transparency + 0.5
					end
				end
				local var50 = var45_result1
			end
			var46 = arg1.props
			var46 = nil
			if arg1.props.enableTokenOverride then
				var46 = arg1.props.textFont
			else
				var46 = arg1_3.Font.Header2
			end
			if icon ~= nil then
			else
			end
			if isLoading then
				({}).isLoadingShimmer = Roact_upvr.createElement(ShimmerPanel_upvr, {
					Size = UDim2.fromScale(1, 1);
				})
			else
				local var53
				if not arg1.props[Roact_upvr.Children] then
					local tbl = {}
					local tbl_7 = {}
					var53 = 1
					tbl_7.Size = UDim2.fromScale(var53, 1)
					tbl_7.BackgroundTransparency = 1
					local tbl_6 = {}
					var53 = Roact_upvr.createElement
					var53 = var53("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						HorizontalAlignment = Enum.HorizontalAlignment.Left;
						SortOrder = Enum.SortOrder.LayoutOrder;
					})
					tbl_6.UIListLayout = var53
					var53 = Roact_upvr.createElement
					var53 = var53("UIPadding", {
						PaddingLeft = UDim.new(0, containerPadding.left);
					})
					tbl_6.Padding = var53
					if text then
						var53 = Roact_upvr.createElement
						var53 = var53(GenericTextLabel_upvr, {
							BackgroundTransparency = 1;
							Text = text;
							fontStyle = var46;
							colorStyle = var45_result1_2;
							LayoutOrder = 1;
							Size = UDim2.new(1, -containerPadding.right, 1, 0);
							TextTruncate = Enum.TextTruncate.AtEnd;
							TextXAlignment = Enum.TextXAlignment.Left;
							TextWrapped = false;
						})
					else
						var53 = nil
					end
					tbl_6.Text = var53
					tbl.TextContainer = Roact_upvr.createElement("Frame", tbl_7, tbl_6)
					local tbl_5 = {
						UIListLayout = Roact_upvr.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal;
							VerticalAlignment = Enum.VerticalAlignment.Center;
							HorizontalAlignment = Enum.HorizontalAlignment.Right;
							SortOrder = Enum.SortOrder.LayoutOrder;
						});
						Padding = Roact_upvr.createElement("UIPadding", {
							PaddingRight = UDim.new(0, containerPadding.right);
						});
					}
					local function INLINED() -- Internal function, doesn't exist in bytecode
						tbl_4.LayoutOrder = 2
						tbl_4.ImageTransparency = var50.Transparency
						tbl_4.ImageColor3 = var50.Color
						tbl_4.Image = icon
						tbl_4.BackgroundTransparency = 1
						tbl_4.Size = UDim2.fromOffset(iconSize, iconSize)
						local tbl_4 = {}
						return Roact_upvr.createElement(ImageSetComponent_upvr.Label, tbl_4)
					end
					if not icon or not INLINED() then
					end
					tbl_5.Icon = nil
					tbl.IconContainer = Roact_upvr.createElement("Frame", {
						Size = UDim2.fromScale(1, 1);
						BackgroundTransparency = 1;
					}, tbl_5)
				end
			end
			local tbl_2 = {
				isActivated = Cryo_upvr.None;
				hasContent = Cryo_upvr.None;
				icon = Cryo_upvr.None;
				text = Cryo_upvr.None;
				textFont = Cryo_upvr.None;
				buttonImage = Cryo_upvr.None;
				buttonStateColorMap = Cryo_upvr.None;
				contentStateColorMap = Cryo_upvr.None;
				textStateColorMap = Cryo_upvr.None;
				iconStateColorMap = Cryo_upvr.None;
				iconSize = Cryo_upvr.None;
				containerPadding = Cryo_upvr.None;
				iconTextSpacing = Cryo_upvr.None;
				border = Cryo_upvr.None;
				enableTokenOverride = Cryo_upvr.None;
				onActivated = Cryo_upvr.None;
				isLoading = Cryo_upvr.None;
				[Roact_upvr.Children] = Cryo_upvr.None;
				isDisabled = var44;
				onStateChanged = arg1.onStateChanged;
				userInteractionEnabled = arg1.props.userInteractionEnabled;
				ScaleType = Enum.ScaleType.Slice;
				BackgroundTransparency = 1;
				AutoButtonColor = false;
				selectionCursor = Cryo_upvr.None;
				SelectionImageObject = arg1_4(var45);
				SelectionOrder = arg1.props.selectionOrder;
				[Roact_upvr.Event.Activated] = arg1.props.onActivated;
			}
			local var66
			local var67
			local var68
			if arg1.props.enableTokenOverride then
				local size = arg1.props.border.size
				var68 = UDim2.new(1, -2 * size, 1, -2 * size)
				var67 = {
					UIStroke = Roact_upvr.createElement("UIStroke", {
						Color = var47.Color;
						Transparency = var47.Transparency;
						Thickness = size;
					});
					UICorner = Roact_upvr.createElement("UICorner", {
						CornerRadius = UDim.new(0, arg1.props.border.cornerRadius);
					});
				}
				var66 = Cryo_upvr.Dictionary.join(arg1.props, tbl_2)
			else
				var68 = UDim2.new(1, 0, 1, 0)
				var67 = {}
				var66 = Cryo_upvr.Dictionary.join(arg1.props, {
					Image = var46.buttonImage;
					ImageColor3 = var47.Color;
					ImageTransparency = var47.Transparency;
				}, tbl_2)
			end
			return Roact_upvr.createElement(Interactable_upvr, var66, {
				ButtonContent = Roact_upvr.createElement("Frame", {
					Size = var68;
					BackgroundTransparency = 1;
				}, Cryo_upvr.Dictionary.join(var67, tbl));
			})
		end)
	end)
end
local useStyle_upvr = require(Parent_3.Core.Style.useStyle)
local StyleDefaults_upvr = require(script.Parent.StyleDefaults)
return function(arg1) -- Line 380
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: StyleDefaults_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: any_extend_result1_upvr (readonly)
	]]
	local var79 = arg1
	if arg1.enableTokenOverride then
		var79 = Cryo_upvr.Dictionary.join(StyleDefaults_upvr.getDropdownMenuCellDefaultTokens(useStyle_upvr()), arg1)
	end
	return Roact_upvr.createElement(any_extend_result1_upvr, var79)
end