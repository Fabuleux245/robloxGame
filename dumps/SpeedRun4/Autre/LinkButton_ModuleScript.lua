-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:02
-- Luau version 6, Types version 3
-- Time taken: 0.009827 seconds

local App = script:FindFirstAncestor("App")
local Parent_2 = App.Parent
local Core = Parent_2.Core
local Parent = Parent_2.Parent
local t = require(Parent.t)
local Roact_upvr = require(Parent.Roact)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("LinkButton")
any_extend_result1_upvr.debugProps = require(Parent.enumerate)("debugProps", {"getTextSize", "controlState"})
any_extend_result1_upvr.validateProps = t.strictInterface({
	onStateChanged = t.optional(t.callback);
	isDisabled = t.optional(t.boolean);
	fontStyle = t.optional(t.string);
	colorStyleDefault = t.optional(t.string);
	colorStyleHover = t.optional(t.string);
	hoverBackgroundEnabled = t.optional(t.boolean);
	underlineAlwaysEnabled = t.optional(t.boolean);
	userInteractionEnabled = t.optional(t.boolean);
	onActivated = t.optional(t.callback);
	anchorPoint = t.optional(t.Vector2);
	layoutOrder = t.optional(t.number);
	position = t.optional(t.UDim2);
	size = t.optional(t.UDim2);
	text = t.optional(t.string);
	minPaddingX = t.optional(t.number);
	minPaddingY = t.optional(t.number);
	selectionCursorKind = t.optional(t.userdata);
	[any_extend_result1_upvr.debugProps.getTextSize] = t.optional(t.callback);
	[any_extend_result1_upvr.debugProps.controlState] = t.optional(ControlState_upvr.isEnumValue);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	buttonRef = t.optional(t.union(t.callback, t.table));
})
any_extend_result1_upvr.defaultProps = {
	anchorPoint = Vector2.new(0, 0);
	layoutOrder = 0;
	position = UDim2.new(0, 0, 0, 0);
	size = UDim2.fromScale(0, 0);
	text = "";
	fontStyle = "Header2";
	colorStyleDefault = "TextLink";
	colorStyleHover = "TextLink";
	hoverBackgroundEnabled = false;
	underlineAlwaysEnabled = false;
	isDisabled = false;
	userInteractionEnabled = true;
	minPaddingX = 8;
	minPaddingY = 11;
	[any_extend_result1_upvr.debugProps.getTextSize] = require(Core.Text.GetTextSize);
	[any_extend_result1_upvr.debugProps.controlState] = nil;
}
function any_extend_result1_upvr.init(arg1) -- Line 111
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1:setState({
		controlState = ControlState_upvr.Initialize;
	})
	function arg1.applyRichTextUnderline(arg1_2) -- Line 116
		return "<u>"..arg1_2.."</u>"
	end
	function arg1.onStateChanged(arg1_3, arg2) -- Line 120
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.controlState = arg2
		arg1:setState(tbl_4)
		if arg1.props.onStateChanged then
			arg1.props.onStateChanged(arg1_3, arg2)
		end
	end
end
local withSelectionCursorProvider_upvr = require(App.SelectionImage.withSelectionCursorProvider)
function any_extend_result1_upvr.render(arg1) -- Line 130
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_4) -- Line 131
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursorProvider(arg1_4)
	end)
end
local withStyle_upvr = require(Core.Style.withStyle)
local getContentStyle_upvr = require(Core.Button.getContentStyle)
local CleanRichTextTags_upvr = require(Core.Text.CleanRichTextTags)
local UIBloxConfig_upvr = require(Parent_2.UIBloxConfig)
local Focusable_upvr = require(Parent.RoactGamepad).Focusable
local Interactable_upvr = require(Core.Control.Interactable)
local GenericTextLabel_upvr = require(Core.Text.GenericTextLabel.GenericTextLabel)
local HoverButtonBackground_upvr = require(Core.Button.HoverButtonBackground)
function any_extend_result1_upvr.renderWithSelectionCursorProvider(arg1, arg2, arg3) -- Line 136
	--[[ Upvalues[11]:
		[1]: withStyle_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: ControlState_upvr (readonly)
		[4]: getContentStyle_upvr (readonly)
		[5]: CleanRichTextTags_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: UIBloxConfig_upvr (readonly)
		[8]: Focusable_upvr (readonly)
		[9]: Interactable_upvr (readonly)
		[10]: GenericTextLabel_upvr (readonly)
		[11]: HoverButtonBackground_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_5) -- Line 137
		--[[ Upvalues[12]:
			[1]: arg1 (readonly)
			[2]: any_extend_result1_upvr (copied, readonly)
			[3]: ControlState_upvr (copied, readonly)
			[4]: getContentStyle_upvr (copied, readonly)
			[5]: CleanRichTextTags_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: Roact_upvr (copied, readonly)
			[8]: UIBloxConfig_upvr (copied, readonly)
			[9]: Focusable_upvr (copied, readonly)
			[10]: Interactable_upvr (copied, readonly)
			[11]: GenericTextLabel_upvr (copied, readonly)
			[12]: HoverButtonBackground_upvr (copied, readonly)
		]]
		local var37
		if not var37 then
			var37 = arg1.state.controlState
		end
		local tbl_5 = {
			[ControlState_upvr.Default] = arg1.props.colorStyleDefault;
			[ControlState_upvr.Hover] = arg1.props.colorStyleHover;
		}
		local var39 = arg1_5.Font[arg1.props.fontStyle]
		local var40
		if arg1.props.underlineAlwaysEnabled == true and var37 == ControlState_upvr.Hover then
			getContentStyle_upvr(tbl_5, var37, arg1_5).Transparency = 0.3
		end
		local var41 = var39.RelativeSize * arg1_5.Font.BaseSize
		local text = arg1.props.text
		if arg1.props.underlineAlwaysEnabled or var37 == ControlState_upvr.Hover or var37 == ControlState_upvr.Pressed then
			text = arg1.applyRichTextUnderline(arg1.props.text)
		end
		local var43
		if arg1.props.selectionCursorKind ~= nil then
			var40 = arg1
			var43 = arg2(var40.props.selectionCursorKind)
		end
		local var44 = Roact_upvr
		var40 = UIBloxConfig_upvr
		if var40.enableLinkButtonGamepadSupport then
			var40 = Interactable_upvr
			var44 = Focusable_upvr[var40]
		else
			var44 = Interactable_upvr
		end
		local module_2 = {}
		var40 = arg1.props.anchorPoint
		module_2.AnchorPoint = var40
		var40 = arg1.props.layoutOrder
		module_2.LayoutOrder = var40
		var40 = arg1.props.position
		module_2.Position = var40
		var40 = arg1.props.size
		module_2.Size = var40
		var40 = arg1.props.isDisabled
		module_2.isDisabled = var40
		var40 = arg1.onStateChanged
		module_2.onStateChanged = var40
		var40 = arg1.props.userInteractionEnabled
		module_2.userInteractionEnabled = var40
		var40 = 1
		module_2.BackgroundTransparency = var40
		var40 = false
		module_2.AutoButtonColor = var40
		module_2.SelectionImageObject = var43
		var40 = Roact_upvr.Event.Activated
		module_2[var40] = arg1.props.onActivated
		var40 = Roact_upvr.Ref
		if UIBloxConfig_upvr.enableLinkButtonGamepadSupport then
			-- KONSTANTWARNING: GOTO [257] #171
		end
		module_2[var40] = nil
		if UIBloxConfig_upvr.enableLinkButtonGamepadSupport then
			var40 = arg1.props.NextSelectionLeft
			-- KONSTANTWARNING: GOTO [269] #180
		end
		var40 = nil
		module_2.NextSelectionLeft = var40
		if UIBloxConfig_upvr.enableLinkButtonGamepadSupport then
			var40 = arg1.props.NextSelectionRight
			-- KONSTANTWARNING: GOTO [282] #189
		end
		var40 = nil
		module_2.NextSelectionRight = var40
		if UIBloxConfig_upvr.enableLinkButtonGamepadSupport then
			var40 = arg1.props.NextSelectionUp
			-- KONSTANTWARNING: GOTO [295] #198
		end
		var40 = nil
		module_2.NextSelectionUp = var40
		if UIBloxConfig_upvr.enableLinkButtonGamepadSupport then
			var40 = arg1.props.NextSelectionDown
		else
			var40 = nil
		end
		module_2.NextSelectionDown = var40
		var40 = {}
		var40.sizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
			MinSize = Vector2.new(arg1.props[any_extend_result1_upvr.debugProps.getTextSize](CleanRichTextTags_upvr(arg1.props.text), var41, var39.Font, Vector2.new(10000, 0)).X + arg1.props.minPaddingX * 2, var41 + arg1.props.minPaddingY * 2);
		})
		local tbl = {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			BackgroundTransparency = 1;
			Text = text;
			fontStyle = var39;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.colorStyle = getContentStyle_upvr(tbl_5, var37, arg1_5)
		tbl.RichText = true
		var40.textLabel = Roact_upvr.createElement(GenericTextLabel_upvr, tbl)
		local hoverBackgroundEnabled = arg1.props.hoverBackgroundEnabled
		if hoverBackgroundEnabled then
			hoverBackgroundEnabled = false
			if var37 == ControlState_upvr.Hover then
				hoverBackgroundEnabled = Roact_upvr.createElement(HoverButtonBackground_upvr)
			end
		end
		var40.background = hoverBackgroundEnabled
		return var44.createElement(var44, module_2, var40)
	end)
end
return any_extend_result1_upvr