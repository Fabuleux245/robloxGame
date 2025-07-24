-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:57
-- Luau version 6, Types version 3
-- Time taken: 0.014029 seconds

local Parent_3 = script.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("HeaderBar")
local tbl_13 = {}
local IconButton_upvr = require(Parent_2.App.Button.IconButton)
local IconSize_upvr = require(Parent_3.ImageSet.Enum.IconSize)
local Images_upvr = require(Parent_3.ImageSet.Images)
function tbl_13.backButton(arg1) -- Line 25
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: IconButton_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	return function(arg1_2) -- Line 26
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module_4 = {
			size = UDim2.fromOffset(0, 0);
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/navigation/pushBack"];
		}
		module_4.onActivated = arg1
		return Roact_upvr.createElement(IconButton_upvr, module_4)
	end
end
any_extend_result1.renderLeft = tbl_13
any_extend_result1.validateProps = t.strictInterface({
	title = t.optional(t.string);
	margin = t.optional(t.number);
	contentPaddingRight = t.optional(t.UDim);
	barHeight = t.optional(t.number);
	renderRight = t.optional(t.callback);
	renderLeft = t.optional(t.callback);
	renderCenter = t.optional(t.callback);
	backgroundTransparency = t.optional(t.number);
	onHeaderActivated = t.optional(t.callback);
	memoKey = t.optional(t.number);
	isSecondary = t.optional(t.boolean);
	shouldHideSecondaryLeftItem = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	barHeight = 48;
	title = "";
	isSecondary = false;
}
local getPageMargin_upvr = require(Parent_3.Container.getPageMargin)
function any_extend_result1.init(arg1) -- Line 82
	--[[ Upvalues[2]:
		[1]: getPageMargin_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	arg1.state = {
		margin = 0;
	}
	function arg1.onResize(arg1_3) -- Line 87
		--[[ Upvalues[2]:
			[1]: getPageMargin_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		arg1:setState({
			margin = getPageMargin_upvr(arg1_3.AbsoluteSize.X);
		})
	end
	arg1.ref = Roact_upvr.createRef()
end
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
local GetTextSize_upvr = require(Parent_2.Core.Text.GetTextSize)
local ThreeSectionBar_upvr = require(Parent_2.Core.Bar.ThreeSectionBar)
function any_extend_result1.render(arg1) -- Line 96
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: GenericTextLabel_upvr (readonly)
		[4]: GetTextSize_upvr (readonly)
		[5]: ThreeSectionBar_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 97
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: GenericTextLabel_upvr (copied, readonly)
			[4]: GetTextSize_upvr (copied, readonly)
			[5]: ThreeSectionBar_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme_upvr_2 = arg1_4.Theme
		local Font_upvr_2 = arg1_4.Font
		local renderLeft = arg1.props.renderLeft
		local var54 = true
		if renderLeft ~= nil then
			if renderLeft ~= Roact_upvr.None then
				var54 = false
			else
				var54 = true
			end
		end
		if var54 and 0 < string.len(arg1.props.title) then
			local function _(arg1_6) -- Line 108
				--[[ Upvalues[5]:
					[1]: Roact_upvr (copied, readonly)
					[2]: GenericTextLabel_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: Font_upvr_2 (readonly)
					[5]: Theme_upvr_2 (readonly)
				]]
				return Roact_upvr.createFragment({
					Text = Roact_upvr.createElement(GenericTextLabel_upvr, {
						fluidSizing = true;
						Text = arg1.props.title;
						TextTruncate = Enum.TextTruncate.AtEnd;
						TextXAlignment = Enum.TextXAlignment.Left;
						fontStyle = Font_upvr_2.Title;
						colorStyle = Theme_upvr_2.TextEmphasis;
					}, arg1_6[Roact_upvr.Children]);
				})
			end
		end
		local var60
		if arg1.props.isSecondary and not var54 and not arg1.props.shouldHideSecondaryLeftItem and 0 < string.len(arg1.props.title) then
			local Header2_upvr = Font_upvr_2.Header2
			local var61_upvr = Header2_upvr.RelativeSize * Font_upvr_2.BaseSize
			function var60() -- Line 131
				--[[ Upvalues[6]:
					[1]: Roact_upvr (copied, readonly)
					[2]: var61_upvr (readonly)
					[3]: arg1 (copied, readonly)
					[4]: Theme_upvr_2 (readonly)
					[5]: GenericTextLabel_upvr (copied, readonly)
					[6]: Header2_upvr (readonly)
				]]
				return Roact_upvr.createFragment({
					Text = Roact_upvr.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, var61_upvr);
						BackgroundTransparency = 1;
						Transparency = 1;
					}, {
						Layout = Roact_upvr.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder;
							FillDirection = Enum.FillDirection.Horizontal;
							VerticalAlignment = Enum.VerticalAlignment.Center;
							Padding = UDim.new(0, 12);
						});
						renderLeft = arg1.props.renderLeft(arg1.props);
						Divider = Roact_upvr.createElement("Frame", {
							BackgroundColor3 = Theme_upvr_2.Divider.Color;
							BackgroundTransparency = Theme_upvr_2.Divider.Transparency;
							BorderSizePixel = 0;
							Size = UDim2.new(0, 1, 1, 0);
							LayoutOrder = 1;
						});
						TextLabel = Roact_upvr.createElement(GenericTextLabel_upvr, {
							ClipsDescendants = true;
							Text = arg1.props.title;
							TextTruncate = Enum.TextTruncate.AtEnd;
							TextWrapped = false;
							TextXAlignment = Enum.TextXAlignment.Left;
							fontStyle = Header2_upvr;
							colorStyle = Theme_upvr_2.TextEmphasis;
							LayoutOrder = 2;
						});
					});
				})
			end
		end
		if var60 and arg1.props.renderCenter and arg1.props.renderRight then
			local var68
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not arg1.props.renderCenter and not var54 then
			var61_upvr = arg1.props
			Header2_upvr = var61_upvr.isSecondary
			if not Header2_upvr then
				Header2_upvr = Font_upvr_2.Header1
				local var69_upvr = Header2_upvr
				var61_upvr = var69_upvr.RelativeSize * Font_upvr_2.BaseSize
				local var70_upvr = var61_upvr
				var68 = arg1.props
				var68 = var70_upvr
			end
		end
		var70_upvr = Roact_upvr
		var69_upvr = var70_upvr.createElement
		var70_upvr = "Frame"
		local tbl_3 = {
			BackgroundTransparency = 1;
		}
		var68 = 1
		tbl_3.Size = UDim2.new(var68, 0, 0, arg1.props.barHeight)
		var68 = Roact_upvr.Change
		var68 = arg1.onResize
		tbl_3[var68.AbsoluteSize] = var68
		local tbl_11 = {}
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var68 = var68("TextButton", tbl_15)
			tbl_15.ZIndex = 0
			tbl_15[Roact_upvr.Event.Activated] = arg1.props.onHeaderActivated
			tbl_15.Selectable = false
			tbl_15.Size = UDim2.new(1, 0, 1, 0)
			tbl_15.BorderSizePixel = 0
			tbl_15.BackgroundTransparency = 1
			tbl_15.AutoButtonColor = false
			local tbl_15 = {}
			var68 = Roact_upvr.createElement
			return var68
		end
		if not arg1.props.onHeaderActivated or not INLINED_2() then
			var68 = nil
		end
		tbl_11.HeaderClickArea = var68
		var68 = Roact_upvr.createElement
		local tbl_5 = {}
		if not arg1.props.backgroundTransparency then
		end
		tbl_5.BackgroundTransparency = Theme_upvr_2.BackgroundDefault.Transparency
		tbl_5.BackgroundColor3 = Theme_upvr_2.BackgroundDefault.Color
		tbl_5.barHeight = arg1.props.barHeight
		if not arg1.props.margin then
		end
		tbl_5.marginLeft = arg1.state.margin
		if not arg1.props.margin then
		end
		tbl_5.marginRight = arg1.state.margin
		tbl_5.renderLeft = var60
		function tbl_5.renderCenter() -- Line 176
			--[[ Upvalues[6]:
				[1]: Roact_upvr (copied, readonly)
				[2]: GenericTextLabel_upvr (copied, readonly)
				[3]: var70_upvr (readonly)
				[4]: arg1 (copied, readonly)
				[5]: var69_upvr (readonly)
				[6]: Theme_upvr_2 (readonly)
			]]
			return Roact_upvr.createElement(GenericTextLabel_upvr, {
				ClipsDescendants = true;
				AutomaticSize = Enum.AutomaticSize.Y;
				Size = UDim2.new(1, 0, 0, var70_upvr);
				Text = arg1.props.title;
				TextTruncate = Enum.TextTruncate.AtEnd;
				TextWrapped = false;
				fontStyle = var69_upvr;
				colorStyle = Theme_upvr_2.TextEmphasis;
			})
		end
		tbl_5.estimatedCenterWidth = GetTextSize_upvr(var68.title, var68, var69_upvr.Font, Vector2.new(1000, 1000)).X
		local var77 = arg1
		if not var77.props.contentPaddingRight then
			if var54 then
				var77 = 0
			else
				var77 = 12
			end
		end
		tbl_5.contentPaddingRight = UDim.new(0, var77)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_5.renderRight = arg1.props.renderRight
		tbl_11.ThreeSectionBar = var68(ThreeSectionBar_upvr, tbl_5)
		var69_upvr = var69_upvr(var70_upvr, tbl_3, tbl_11)
		return var69_upvr
	end)
end
function any_extend_result1.didMount(arg1) -- Line 224
	if arg1.ref.current then
		arg1.onResize(arg1.ref.current)
	end
end
return any_extend_result1