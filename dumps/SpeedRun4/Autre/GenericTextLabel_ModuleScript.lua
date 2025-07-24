-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:25
-- Luau version 6, Types version 3
-- Time taken: 0.003821 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("GenericTextLabel")
any_extend_result1.validateProps = t.interface({
	maxSize = t.optional(t.Vector2);
	fontStyle = t.union(require(Parent_2.Core.Style.Validator.validateFontInfo), require(Parent_2.Core.Style.Validator.validateTypographyInfo));
	colorStyle = t.union(require(Parent_2.Core.Style.Validator.validateColorInfo), require(Parent_2.Core.Style.Validator.validateColorToken));
	fluidSizing = t.optional(t.boolean);
	openTypeFeatures = t.optional(t.string);
})
any_extend_result1.defaultProps = {
	maxSize = Vector2.new(10000, 10000);
	fluidSizing = false;
	openTypeFeatures = nil;
}
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local UIBloxConfig_upvr = require(Parent_2.UIBloxConfig)
local GetTextSize_upvr = require(Parent_2.Core.Text.GetTextSize)
local Cryo_upvr = require(Parent.Cryo)
function any_extend_result1.render(arg1) -- Line 48
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: UIBloxConfig_upvr (readonly)
		[3]: GetTextSize_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: Roact_upvr (readonly)
	]]
	local Text_upvr = arg1.props.Text
	local fluidSizing_upvr = arg1.props.fluidSizing
	return withStyle_upvr(function(arg1_2) -- Line 52
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: Text_upvr (readonly)
			[3]: UIBloxConfig_upvr (copied, readonly)
			[4]: GetTextSize_upvr (copied, readonly)
			[5]: Cryo_upvr (copied, readonly)
			[6]: Roact_upvr (copied, readonly)
			[7]: fluidSizing_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local fontStyle = arg1.props.fontStyle
		local colorStyle = arg1.props.colorStyle
		local var17
		if not colorStyle.Color then
		end
		var17 = fontStyle.RelativeMinSize
		if var17 then
			var17 = fontStyle.RelativeMinSize
		else
		end
		if fontStyle.RelativeSize then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var17 = arg1_2.Font.BaseSize * fontStyle.RelativeSize
		else
			var17 = fontStyle.FontSize
		end
		if arg1.props.Size == nil then
			if arg1.props.TextTruncate == Enum.TextTruncate.AtEnd then
			end
			local var18
			if UIBloxConfig_upvr.fixGenericTextLabelTextBound and arg1.props.LineHeight then
				var18 = var17 * arg1.props.LineHeight
			else
				var18 = var17
			end
			local GetTextSize_upvr_result1 = GetTextSize_upvr(Text_upvr.."...", var18, fontStyle.Font, arg1.props.maxSize)
		end
		if arg1.props.AutomaticSize == nil or arg1.props.AutomaticSize == Enum.AutomaticSize.None then
		else
		end
		local tbl = {
			[Roact_upvr.Children] = Cryo_upvr.None;
			fluidSizing = Cryo_upvr.None;
			fontStyle = Cryo_upvr.None;
			openTypeFeatures = Cryo_upvr.None;
			colorStyle = Cryo_upvr.None;
			maxSize = Cryo_upvr.None;
			Size = nil;
			Text = Text_upvr;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.Font = fontStyle.Font
		tbl.TextSize = arg1.props.TextSize or var17
		tbl.AutomaticSize = arg1.props.AutomaticSize or nil
		tbl.TextColor3 = colorStyle.Color3
		tbl.TextTransparency = colorStyle.Transparency
		if arg1.props.TextWrapped == nil then
		else
		end
		tbl.TextWrapped = arg1.props.TextWrapped
		tbl.TextScaled = fluidSizing_upvr
		tbl.BackgroundTransparency = 1
		tbl.RichText = arg1.props.RichText
		local var21
		if UIBloxConfig_upvr.enableOpenTypeSupport and arg1.props.openTypeFeatures then
			var21 = Cryo_upvr.Dictionary.join(var21, {
				OpenTypeFeatures = arg1.props.openTypeFeatures;
			})
		end
		local module = {}
		local var24 = fluidSizing_upvr
		if var24 then
			var24 = Roact_upvr.createElement
			var24 = var24("UITextSizeConstraint", {
				MaxTextSize = var17;
				MinTextSize = fontStyle.FontSize;
			} or nil)
		end
		module.UITextSizeConstraint = var24
		var24 = arg1.props[Roact_upvr.Children]
		local var26 = var24
		if not var26 then
			var26 = {}
		end
		return Roact_upvr.createElement("TextLabel", var21, Cryo_upvr.Dictionary.join(module, var26))
	end)
end
return any_extend_result1