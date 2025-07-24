-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:28
-- Luau version 6, Types version 3
-- Time taken: 0.008228 seconds

local Parent_3 = script.Parent
local Parent_4 = Parent_3.Parent.Parent
local Parent_2 = Parent_4.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("EducationalModal")
any_extend_result1.validateProps = t.strictInterface({
	bodyContents = t.array(t.strictInterface({
		icon = t.optional(t.union(t.string, t.table));
		text = t.string;
		layoutOrder = t.optional(t.integer);
		isSystemMenuIcon = t.optional(t.boolean);
	}));
	hasDoNotShow = t.optional(t.boolean);
	cancelText = t.string;
	confirmText = t.string;
	doNotShowText = t.optional(t.string);
	titleText = t.optional(t.string);
	titleBackgroundImageProps = t.strictInterface({
		image = t.string;
		imageHeight = t.number;
		text = t.optional(t.string);
	});
	screenSize = t.Vector2;
	onDismiss = t.callback;
	onCancel = t.callback;
	onConfirm = t.callback;
})
local Label_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent).Label
local getIconSize_upvr = require(Parent_4.ImageSet.getIconSize)
local IconSize_upvr = require(Parent_4.ImageSet.Enum.IconSize)
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
local function ContentItem_upvr(arg1) -- Line 68, Named "ContentItem"
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: Label_upvr (readonly)
		[3]: getIconSize_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: GenericTextLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local vector2 = Vector2.new(16, 16)
	local var16 = arg1.isSystemMenuIcon or false
	local var17 = var16
	if not var17 then
		var17 = arg1.icon
	end
	local stylePalette = arg1.stylePalette
	local Theme_2 = stylePalette.Theme
	local Font = stylePalette.Font
	local module_2 = {}
	if not var17 or not UDim2.new(0, 253, 0, vector2.Y) then
	end
	module_2.Size = UDim2.new(1, 0, 0, vector2.Y)
	if not var17 or not Enum.AutomaticSize.None then
	end
	module_2.AutomaticSize = Enum.AutomaticSize.Y
	module_2.BackgroundTransparency = 1
	module_2.LayoutOrder = arg1.layoutOrder
	local module = {}
	local tbl = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
	}
	if not var16 or not UDim.new(0, 10) then
	end
	tbl.Padding = UDim.new(0, 8)
	tbl.VerticalAlignment = Enum.VerticalAlignment.Center
	module.HorizontalLayout = Roact_upvr.createElement("UIListLayout", tbl)
	local tbl_14 = {}
	if not var16 or not UDim.new(0, 2) then
	end
	tbl_14.PaddingLeft = UDim.new(0, 0)
	module.Padding = Roact_upvr.createElement("UIPadding", tbl_14)
	local _
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl_10.Icon = Roact_upvr.createElement(Label_upvr, tbl_3)
		tbl_3.Image = "rbxasset://textures/ui/TopBar/coloredlogo.png"
		tbl_3.Size = UDim2.fromOffset(24, 24)
		tbl_3.AnchorPoint = Vector2.new(0.5, 0.5)
		tbl_3.Position = UDim2.fromScale(0.5, 0.5)
		tbl_3.BackgroundTransparency = 1
		tbl_3.ZIndex = 1
		local tbl_3 = {}
		local tbl_10 = {}
		tbl_8.LayoutOrder = 1
		tbl_8.Image = "rbxasset://textures/ui/TopBar/iconBase.png"
		tbl_8.Size = UDim2.fromOffset(32, 32)
		tbl_8.BackgroundTransparency = 1
		local tbl_8 = {}
		return Roact_upvr.createElement(Label_upvr, tbl_8, tbl_10)
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl_7.LayoutOrder = 1
		tbl_7.BackgroundTransparency = 1
		tbl_7.ImageTransparency = Theme_2.IconDefault.Transparency
		tbl_7.ImageColor3 = Theme_2.IconDefault.Color
		tbl_7.Size = UDim2.fromOffset(getIconSize_upvr(IconSize_upvr.Medium), getIconSize_upvr(IconSize_upvr.Medium))
		tbl_7.Image = arg1.icon
		local tbl_7 = {}
		return Roact_upvr.createElement(Label_upvr, tbl_7)
	end
	if not var16 or not INLINED() or not var17 or not INLINED_2() then
	end
	module.Icon = nil
	if arg1.text then
		local tbl_15 = {
			Size = UDim2.new(1, 0, 0, vector2.Y);
		}
		if not var17 or not Enum.AutomaticSize.None then
		end
		tbl_15.AutomaticSize = Enum.AutomaticSize.Y
		tbl_15.BackgroundTransparency = 1
		tbl_15.Text = arg1.text
		tbl_15.TextSize = Font.Body.RelativeSize * Font.BaseSize
		tbl_15.colorStyle = Theme_2.TextDefault
		tbl_15.TextTransparency = Theme_2.TextDefault.Transparency
		tbl_15.fontStyle = Font.Body
		if not var17 or not Enum.TextXAlignment.Left then
		end
		tbl_15.TextXAlignment = Enum.TextXAlignment.Center
		tbl_15.TextWrapped = true
		tbl_15.LayoutOrder = 2
	end
	module.Text = Roact_upvr.createElement(GenericTextLabel_upvr, tbl_15)
	return Roact_upvr.createElement("Frame", module_2, module)
end
function any_extend_result1.init(arg1) -- Line 133
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		shouldNotShowAgain = false;
	}
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(Vector2.new(0, 0))
	arg1.contentSize = any_createBinding_result1
	arg1.changeContentSize = any_createBinding_result2
	function arg1.toggleDoNotShow() -- Line 139
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState(function(arg1_2) -- Line 140
			return {
				shouldNotShowAgain = not arg1_2.shouldNotShowAgain;
			}
		end)
	end
	function arg1.onDismiss() -- Line 147
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onDismiss(arg1.state.shouldNotShowAgain)
	end
	function arg1.onCancel() -- Line 150
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onCancel(arg1.state.shouldNotShowAgain)
	end
	function arg1.onConfirm() -- Line 153
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onConfirm(arg1.state.shouldNotShowAgain)
	end
end
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local Checkbox_upvr = require(Parent_2.App.InputButton.Checkbox)
local PartialPageModal_upvr = require(Parent_3.PartialPageModal)
local ButtonType_upvr = require(Parent_2.App.Button.Enum.ButtonType)
local FitFrameVertical_upvr = require(Parent.FitFrame).FitFrameVertical
function any_extend_result1.render(arg1) -- Line 158
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ContentItem_upvr (readonly)
		[4]: Checkbox_upvr (readonly)
		[5]: PartialPageModal_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
		[7]: FitFrameVertical_upvr (readonly)
	]]
	local props_upvr = arg1.props
	local hasDoNotShow_upvr = props_upvr.hasDoNotShow
	return withStyle_upvr(function(arg1_3) -- Line 162
		--[[ Upvalues[9]:
			[1]: props_upvr (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ContentItem_upvr (copied, readonly)
			[4]: hasDoNotShow_upvr (readonly)
			[5]: Checkbox_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: PartialPageModal_upvr (copied, readonly)
			[8]: ButtonType_upvr (copied, readonly)
			[9]: FitFrameVertical_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var56 = 0
		local tbl_13 = {}
		for i, v in ipairs(props_upvr.bodyContents) do
			local tbl_9 = {
				key = tostring(i);
				icon = v.icon;
				text = v.text;
				layoutOrder = i;
				isSystemMenuIcon = v.isSystemMenuIcon;
			}
			tbl_9.stylePalette = arg1_3
			table.insert(tbl_13, Roact_upvr.createElement(ContentItem_upvr, tbl_9))
			var56 += 1
		end
		local Theme = arg1_3.Theme
		if hasDoNotShow_upvr then
			i = {}
			v = UDim2.new(1, 0, 0, 50)
			i.Size = v
			v = var56 + 1
			i.LayoutOrder = v
			v = 1
			i.BackgroundTransparency = v
			v = {}
			v.UIListLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				Padding = UDim.new(0, 21);
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			})
			v.Divider = Roact_upvr.createElement("Frame", {
				LayoutOrder = 1;
				BackgroundColor3 = Theme.Divider.Color;
				BackgroundTransparency = Theme.Divider.Transparency;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 0, 1);
			})
			v.DoNotShowCheckbox = Roact_upvr.createElement(Checkbox_upvr, {
				text = props_upvr.doNotShowText;
				onActivated = arg1.toggleDoNotShow;
				isSelected = arg1.state.shouldNotShowAgain;
				layoutOrder = 2;
			})
			i = tbl_13
			v = Roact_upvr.createElement("Frame", i, v)
			table.insert(i, v)
		end
		local module_3 = {
			title = props_upvr.titleText;
			titleBackgroundImageProps = props_upvr.titleBackgroundImageProps;
			screenSize = props_upvr.screenSize;
			bottomPadding = 50;
		}
		local tbl_2 = {}
		local tbl_12 = {}
		local tbl_11 = {}
		local tbl_5 = {}
		local var71 = false
		tbl_5.isDisabled = var71
		if hasDoNotShow_upvr then
			var71 = arg1.onCancel
		else
			var71 = props_upvr.onCancel
		end
		tbl_5.onActivated = var71
		tbl_5.text = props_upvr.cancelText
		tbl_11.props = tbl_5
		local tbl_6 = {
			buttonType = ButtonType_upvr.PrimarySystem;
		}
		local tbl_4 = {}
		local var74 = false
		tbl_4.isDisabled = var74
		if hasDoNotShow_upvr then
			var74 = arg1.onConfirm
		else
			var74 = props_upvr.onConfirm
		end
		tbl_4.onActivated = var74
		tbl_4.text = props_upvr.confirmText
		tbl_6.props = tbl_4
		tbl_12[1] = tbl_11
		tbl_12[2] = tbl_6
		tbl_2.buttons = tbl_12
		module_3.buttonStackProps = tbl_2
		if hasDoNotShow_upvr then
		else
		end
		module_3.onCloseClicked = props_upvr.onDismiss
		return Roact_upvr.createElement(PartialPageModal_upvr, module_3, {
			BodyContents = Roact_upvr.createElement(FitFrameVertical_upvr, {
				BackgroundTransparency = 1;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				width = UDim.new(1, 0);
				contentPadding = UDim.new(0, 28);
				margin = {
					top = 36;
					bottom = 36;
				};
				[Roact_upvr.Change.AbsoluteSize] = function(arg1_4) -- Line 244
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1.changeContentSize(arg1_4.AbsoluteSize)
				end;
			}, tbl_13);
		})
	end)
end
return any_extend_result1