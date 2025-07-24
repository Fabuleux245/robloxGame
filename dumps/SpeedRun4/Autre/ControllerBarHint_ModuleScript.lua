-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:56
-- Luau version 6, Types version 3
-- Time taken: 0.001869 seconds

local Parent_3 = script.Parent.Parent
local Parent = Parent_3.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ControllerBarHint")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer);
	keyCode = t.enum(Enum.KeyCode);
	text = t.string;
	maxWidth = t.optional(t.number);
	hintTextSize = t.optional(t.number);
})
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local ControllerBarHintInternalPadding_upvr = require(script.Parent.BarConstants).ControllerBarHintInternalPadding
local KeyLabel_upvr = require(Parent_3.Menu.KeyLabel.KeyLabel)
local GenericTextLabel_upvr = require(Parent.Core.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1.render(arg1) -- Line 34
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ControllerBarHintInternalPadding_upvr (readonly)
		[4]: KeyLabel_upvr (readonly)
		[5]: GenericTextLabel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 35
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ControllerBarHintInternalPadding_upvr (copied, readonly)
			[4]: KeyLabel_upvr (copied, readonly)
			[5]: GenericTextLabel_upvr (copied, readonly)
		]]
		local Theme = arg1_2.Theme
		local module = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, ControllerBarHintInternalPadding_upvr);
			});
			ControllerBarHintIcon = Roact_upvr.createElement(KeyLabel_upvr, {
				keyCode = arg1.props.keyCode;
				LayoutOrder = 1;
				iconThemeKey = "IconEmphasis";
			});
		}
		local tbl = {
			TextSize = arg1.props.hintTextSize;
		}
		local var19
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var19 = Vector2.new(arg1.props.maxWidth)
			return var19
		end
		if not arg1.props.maxWidth or not INLINED() then
			var19 = nil
		end
		tbl.maxSize = var19
		var19 = 1
		tbl.BackgroundTransparency = var19
		var19 = 2
		tbl.LayoutOrder = var19
		var19 = arg1_2.Font.Header2
		tbl.fontStyle = var19
		var19 = Theme.TextEmphasis
		tbl.colorStyle = var19
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var19 = Enum.AutomaticSize.X
			return var19
		end
		if arg1.props.maxWidth or not INLINED_2() then
			var19 = nil
		end
		tbl.AutomaticSize = var19
		var19 = Theme.TextEmphasis.TextTransparency
		tbl.TextTransparency = var19
		if arg1.props.maxWidth then
			var19 = true
		else
			var19 = false
		end
		tbl.fluidSizing = var19
		var19 = arg1.props.text
		tbl.Text = var19
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var19 = Enum.TextTruncate.AtEnd
			return var19
		end
		if not arg1.props.maxWidth or not INLINED_3() then
			var19 = nil
		end
		tbl.TextTruncate = var19
		var19 = Enum.TextXAlignment.Left
		tbl.TextXAlignment = var19
		var19 = Enum.TextYAlignment.Center
		tbl.TextYAlignment = var19
		module.ControllerBarHintText = Roact_upvr.createElement(GenericTextLabel_upvr, tbl)
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = arg1.props.layoutOrder;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.X;
		}, module)
	end)
end
return any_extend_result1