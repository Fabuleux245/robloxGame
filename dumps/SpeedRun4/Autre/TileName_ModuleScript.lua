-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:24
-- Luau version 6, Types version 3
-- Time taken: 0.004234 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ItemTileName")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.integer);
	maxHeight = t.intersection(t.number, t.numberMin(0));
	maxWidth = t.intersection(t.number, t.numberMin(0));
	name = t.optional(t.string);
	titleIcon = t.optional(t.table);
	nameTextColor = t.optional(t.Color3);
	nameTextTransparency = t.optional(t.number);
	richText = t.optional(t.boolean);
	hasVerifiedBadge = t.optional(t.boolean);
	useMaxHeight = t.optional(t.boolean);
	fluidSizing = t.optional(t.boolean);
	titleFontStyle = t.optional(t.union(require(Parent.Core.Style.Validator.validateFontInfo), require(Parent.Core.Style.Validator.validateTypographyInfo)));
	horizontalAlignment = t.optional(t.enum(Enum.HorizontalAlignment));
})
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local EmojiTextLabel_upvr = require(Parent.Core.Text.EmojiTextLabel.EmojiTextLabel)
local Emoji_upvr = require(Parent.Core.Emoji.Enum.Emoji)
local Images_upvr = require(Parent.App.ImageSet.Images)
local ImageTextLabel_upvr = require(Parent.Core.Text.ImageTextLabel.ImageTextLabel)
local ShimmerPanel_upvr = require(Parent.App.Loading.ShimmerPanel)
function any_extend_result1.render(arg1) -- Line 62
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: EmojiTextLabel_upvr (readonly)
		[4]: Emoji_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: ImageTextLabel_upvr (readonly)
		[7]: ShimmerPanel_upvr (readonly)
	]]
	local props_upvr = arg1.props
	if arg1.props.horizontalAlignment == Enum.HorizontalAlignment.Center then
		props_upvr = Enum.TextXAlignment.Center
	else
		props_upvr = nil
	end
	local name_upvr = arg1.props.name
	local maxWidth_upvr = arg1.props.maxWidth
	local maxHeight_upvr = arg1.props.maxHeight
	local hasVerifiedBadge_upvr = arg1.props.hasVerifiedBadge
	local richText_upvr = props_upvr.richText
	local fluidSizing_upvr = arg1.props.fluidSizing
	local LayoutOrder_upvr = arg1.props.LayoutOrder
	local titleIcon_upvr = arg1.props.titleIcon
	local useMaxHeight_upvr = arg1.props.useMaxHeight
	return withStyle_upvr(function(arg1_2) -- Line 76
		--[[ Upvalues[17]:
			[1]: arg1 (readonly)
			[2]: name_upvr (readonly)
			[3]: maxWidth_upvr (readonly)
			[4]: maxHeight_upvr (readonly)
			[5]: hasVerifiedBadge_upvr (readonly)
			[6]: Roact_upvr (copied, readonly)
			[7]: EmojiTextLabel_upvr (copied, readonly)
			[8]: richText_upvr (readonly)
			[9]: fluidSizing_upvr (readonly)
			[10]: Emoji_upvr (copied, readonly)
			[11]: LayoutOrder_upvr (readonly)
			[12]: titleIcon_upvr (readonly)
			[13]: Images_upvr (copied, readonly)
			[14]: ImageTextLabel_upvr (copied, readonly)
			[15]: props_upvr (readonly)
			[16]: useMaxHeight_upvr (readonly)
			[17]: ShimmerPanel_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme = arg1_2.Theme
		local Font = arg1_2.Font
		local titleFontStyle = arg1.props.titleFontStyle
		if not titleFontStyle then
			titleFontStyle = Font.Header2
		end
		if titleFontStyle.RelativeSize then
			local _ = Font.BaseSize * titleFontStyle.RelativeSize
		else
		end
		local var28
		if name_upvr ~= nil then
			var28 = maxHeight_upvr
			local tbl = {}
			var28 = arg1.props.nameTextColor
			if not var28 then
				var28 = Theme.TextEmphasis.Color
			end
			tbl.Color = var28
			if not arg1.props.nameTextTransparency then
			end
			tbl.Transparency = Theme.TextEmphasis.Transparency
			if hasVerifiedBadge_upvr then
				return Roact_upvr.createElement(EmojiTextLabel_upvr, {
					RichText = richText_upvr;
					maxSize = Vector2.new(maxWidth_upvr, var28);
					fluidSizing = fluidSizing_upvr;
					emoji = Emoji_upvr.Verified;
					fontStyle = titleFontStyle;
					colorStyle = tbl;
					Text = name_upvr;
					TextTruncate = Enum.TextTruncate.SplitWord;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Top;
					LayoutOrder = LayoutOrder_upvr;
				})
			end
			if not titleIcon_upvr or not (titleIcon_upvr.ImageRectSize / Images_upvr.ImagesResolutionScale) then
			end
			local module_2 = {}
			local function INLINED() -- Internal function, doesn't exist in bytecode
				tbl_3.Position = UDim2.new(0, 0, 0, 0)
				tbl_3.AnchorPoint = Vector2.new(0, 0)
				tbl_3.Size = UDim2.new(0, Vector2.new(0, 0).X, 0, Vector2.new(0, 0).Y)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_3.ImageTransparency = Theme.IconEmphasis.Transparency
				tbl_3.ImageColor3 = Theme.IconEmphasis.Color
				tbl_3.Image = titleIcon_upvr
				tbl_3.BackgroundTransparency = 1
				local tbl_3 = {}
				return tbl_3
			end
			if not titleIcon_upvr or not INLINED() then
			end
			module_2.imageProps = nil
			module_2.genericTextLabelProps = {
				fluidSizing = fluidSizing_upvr;
				fontStyle = titleFontStyle;
				colorStyle = tbl;
				Text = name_upvr;
				TextTruncate = Enum.TextTruncate.SplitWord;
				RichText = richText_upvr;
				TextXAlignment = props_upvr;
			}
			module_2.frameProps = {
				BackgroundTransparency = 1;
				LayoutOrder = LayoutOrder_upvr;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_2.maxSize = Vector2.new(maxWidth_upvr, var28)
			module_2.padding = 4
			module_2.useMaxHeight = useMaxHeight_upvr
			return Roact_upvr.createElement(ImageTextLabel_upvr, module_2)
		end
		local module = {
			FirstLine = Roact_upvr.createElement(ShimmerPanel_upvr, {
				Size = UDim2.new(1, 0, 0, titleFontStyle.FontSize);
			});
		}
		local tbl_2 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_2.Position = UDim2.new(0, 0, 0, titleFontStyle.FontSize + 4)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_2.Size = UDim2.new(0.4, 0, 0, titleFontStyle.FontSize)
		module.SecondLine = Roact_upvr.createElement(ShimmerPanel_upvr, tbl_2)
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = LayoutOrder_upvr;
			Size = UDim2.new(0, maxWidth_upvr, 0, maxHeight_upvr);
		}, module)
	end)
end
return any_extend_result1