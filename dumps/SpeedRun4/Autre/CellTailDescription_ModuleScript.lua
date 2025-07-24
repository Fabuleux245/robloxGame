-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:12
-- Luau version 6, Types version 3
-- Time taken: 0.005377 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local Core = Parent_2.Core
local Parent_3 = Parent_2.Parent
local t = require(Parent_3.t)
local Roact_upvr = require(Parent_3.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("CellTailDescription")
any_extend_result1.validateProps = t.strictInterface({
	text = t.optional(t.string);
	textColor = t.optional(require(Core.Style.Validator.validateColorInfo));
	textFont = t.optional(t.union(require(Core.Style.Validator.validateFontInfo), require(Core.Style.Validator.validateTypographyInfo)));
	renderTextOverride = t.optional(t.callback);
	showArrow = t.optional(t.boolean);
	infoIcon = t.optional(t.string);
})
any_extend_result1.defaultProps = {
	showArrow = false;
	infoIcon = nil;
}
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1.init(arg1) -- Line 40
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: GenericTextLabel_upvr (readonly)
	]]
	function arg1.getDescription(arg1_2, arg2, arg3, arg4, arg5) -- Line 41
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: GenericTextLabel_upvr (copied, readonly)
		]]
		local var12
		if arg1_2 then
			if arg5 then
				var12 = arg5()
			end
			if not var12 then
				local tbl_2 = {}
				tbl_2.LayoutOrder = arg4
				tbl_2.AutomaticSize = Enum.AutomaticSize.XY
				tbl_2.Text = arg1_2
				tbl_2.colorStyle = arg2
				tbl_2.fontStyle = arg3
				tbl_2.BackgroundTransparency = 1
				var12 = Roact_upvr.createElement(GenericTextLabel_upvr, tbl_2)
			end
		end
		return var12
	end
end
local withStyle_upvr = require(Core.Style.withStyle)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local getIconSize_upvr = require(Parent.ImageSet.getIconSize)
local IconSize_upvr = require(Parent.ImageSet.Enum.IconSize)
local Images_upvr = require(Parent.ImageSet.Images)
function any_extend_result1.render(arg1) -- Line 65
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
		[4]: getIconSize_upvr (readonly)
		[5]: IconSize_upvr (readonly)
		[6]: Images_upvr (readonly)
	]]
	local text_upvr = arg1.props.text
	local var20_upvr
	if arg1.props.infoIcon == nil then
		var20_upvr = false
	else
		var20_upvr = true
	end
	if not text_upvr and not arg1.props.showArrow and not var20_upvr then
		return nil
	end
	local renderTextOverride_upvr = arg1.props.renderTextOverride
	local showArrow_upvr = arg1.props.showArrow
	return withStyle_upvr(function(arg1_3) -- Line 75
		--[[ Upvalues[10]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: text_upvr (readonly)
			[4]: renderTextOverride_upvr (readonly)
			[5]: showArrow_upvr (readonly)
			[6]: ImageSetComponent_upvr (copied, readonly)
			[7]: getIconSize_upvr (copied, readonly)
			[8]: IconSize_upvr (copied, readonly)
			[9]: Images_upvr (copied, readonly)
			[10]: var20_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local textColor = arg1.props.textColor
		if not textColor then
			textColor = arg1_3.Theme.TextDefault
		end
		local textFont = arg1.props.textFont
		if not textFont then
			textFont = arg1_3.Font.Body
		end
		local module = {
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 8);
			});
			Description = arg1.getDescription(text_upvr, textColor, textFont, 1, renderTextOverride_upvr);
		}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			tbl.ImageTransparency = arg1_3.Theme.TextEmphasis.Transparency
			tbl.ImageColor3 = arg1_3.Theme.TextEmphasis.Color
			tbl.Image = Images_upvr["icons/navigation/pushRight_small"]
			tbl.BackgroundTransparency = 1
			tbl.Size = UDim2.fromOffset(getIconSize_upvr(IconSize_upvr.Small), getIconSize_upvr(IconSize_upvr.Small))
			tbl.LayoutOrder = 2
			local tbl = {}
			return Roact_upvr.createElement(ImageSetComponent_upvr.Label, tbl)
		end
		if not showArrow_upvr or not INLINED() then
		end
		module.RightArrow = nil
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			tbl_3.BackgroundTransparency = 1
			tbl_3.BorderSizePixel = 0
			tbl_3.ImageTransparency = arg1_3.Theme.IconEmphasis.Transparency
			tbl_3.ImageColor3 = arg1_3.Theme.IconEmphasis.Color
			tbl_3.Image = arg1.props.infoIcon
			tbl_3.Size = UDim2.fromOffset(getIconSize_upvr(IconSize_upvr.Small), getIconSize_upvr(IconSize_upvr.Small))
			tbl_3.LayoutOrder = 2
			local tbl_3 = {}
			return Roact_upvr.createElement(ImageSetComponent_upvr.Label, tbl_3)
		end
		if not var20_upvr or not INLINED_2() then
		end
		module.InfoIcon = nil
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			AutomaticSize = Enum.AutomaticSize.XY;
		}, module)
	end)
end
return any_extend_result1