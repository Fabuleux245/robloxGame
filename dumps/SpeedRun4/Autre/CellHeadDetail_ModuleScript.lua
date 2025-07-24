-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:11
-- Luau version 6, Types version 3
-- Time taken: 0.003482 seconds

local Parent_2 = script.Parent.Parent.Parent
local Core = Parent_2.Core
local Parent = Parent_2.Parent
local t = require(Parent.t)
local validateColorInfo = require(Core.Style.Validator.validateColorInfo)
local validateFontInfo = require(Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(Core.Style.Validator.validateTypographyInfo)
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("CellHeadDetail")
any_extend_result1.validateProps = t.strictInterface({
	labelText = t.string;
	labelTextColor = t.optional(validateColorInfo);
	labelTextFont = t.optional(t.union(validateFontInfo, validateTypographyInfo));
	subLabelText = t.optional(t.string);
	subLabelTextColor = t.optional(validateColorInfo);
	subLabelTextFont = t.optional(t.union(validateFontInfo, validateTypographyInfo));
	openTypeFeatures = t.optional(t.string);
})
local withStyle_upvr = require(Core.Style.withStyle)
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1.render(arg1) -- Line 30
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: GenericTextLabel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 31
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: GenericTextLabel_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local labelTextColor = arg1.props.labelTextColor
		if not labelTextColor then
			labelTextColor = arg1_2.Theme.TextEmphasis
		end
		local labelTextFont = arg1.props.labelTextFont
		if not labelTextFont then
			labelTextFont = arg1_2.Font.Header2
		end
		local subLabelText = arg1.props.subLabelText
		local subLabelTextColor = arg1.props.subLabelTextColor
		if not subLabelTextColor then
			subLabelTextColor = arg1_2.Theme.TextDefault
		end
		local subLabelTextFont = arg1.props.subLabelTextFont
		if not subLabelTextFont then
			subLabelTextFont = arg1_2.Font.CaptionBody
		end
		local module = {
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
			});
			Label = Roact_upvr.createElement(GenericTextLabel_upvr, {
				LayoutOrder = 1;
				AutomaticSize = Enum.AutomaticSize.XY;
				Text = arg1.props.labelText;
				colorStyle = labelTextColor;
				fontStyle = labelTextFont;
				BackgroundTransparency = 1;
				TextXAlignment = Enum.TextXAlignment.Left;
			});
		}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			tbl.TextXAlignment = Enum.TextXAlignment.Left
			tbl.BackgroundTransparency = 1
			tbl.openTypeFeatures = arg1.props.openTypeFeatures
			tbl.fontStyle = subLabelTextFont
			tbl.colorStyle = subLabelTextColor
			tbl.Text = subLabelText
			tbl.AutomaticSize = Enum.AutomaticSize.XY
			tbl.LayoutOrder = 2
			local tbl = {}
			return Roact_upvr.createElement(GenericTextLabel_upvr, tbl)
		end
		if not subLabelText or not INLINED() then
		end
		module.SubLabel = nil
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			AutomaticSize = Enum.AutomaticSize.XY;
		}, module)
	end)
end
return any_extend_result1