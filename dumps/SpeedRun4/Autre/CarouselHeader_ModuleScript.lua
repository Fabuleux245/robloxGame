-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:06
-- Luau version 6, Types version 3
-- Time taken: 0.003396 seconds

local Parent = script.Parent.Parent.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local Core = Parent_3.Core
local any_extend_result1 = Roact_upvr.PureComponent:extend("CarouselHeader")
any_extend_result1.validateProps = t.strictInterface({
	headerText = t.optional(t.string);
	onSeeAll = t.optional(t.callback);
	carouselMargin = t.optional(t.number);
	layoutOrder = t.optional(t.number);
})
any_extend_result1.defaultProps = {
	headerText = "";
	carouselMargin = 0;
}
local withStyle_upvr = require(Parent_3.Core.Style.withStyle)
local GetTextSize_upvr = require(Parent_3.Core.Text.GetTextSize)
local getIconSize_upvr = require(Parent.ImageSet.getIconSize)
local IconSize_upvr = require(Parent.ImageSet.Enum.IconSize)
local Interactable_upvr = require(Core.Control.Interactable)
local GenericTextLabel_upvr = require(Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local icons_navigation_pushRight_small_upvr = require(Parent.ImageSet.Images)["icons/navigation/pushRight_small"]
function any_extend_result1.render(arg1) -- Line 48
	--[[ Upvalues[9]:
		[1]: withStyle_upvr (readonly)
		[2]: GetTextSize_upvr (readonly)
		[3]: getIconSize_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: Interactable_upvr (readonly)
		[7]: GenericTextLabel_upvr (readonly)
		[8]: ImageSetComponent_upvr (readonly)
		[9]: icons_navigation_pushRight_small_upvr (readonly)
	]]
	local headerText_upvr = arg1.props.headerText
	local layoutOrder_upvr = arg1.props.layoutOrder
	local carouselMargin_upvr = arg1.props.carouselMargin
	local onSeeAll_upvr = arg1.props.onSeeAll
	return withStyle_upvr(function(arg1_2) -- Line 55
		--[[ Upvalues[12]:
			[1]: GetTextSize_upvr (copied, readonly)
			[2]: headerText_upvr (readonly)
			[3]: getIconSize_upvr (copied, readonly)
			[4]: IconSize_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: layoutOrder_upvr (readonly)
			[7]: Interactable_upvr (copied, readonly)
			[8]: carouselMargin_upvr (readonly)
			[9]: onSeeAll_upvr (readonly)
			[10]: GenericTextLabel_upvr (copied, readonly)
			[11]: ImageSetComponent_upvr (copied, readonly)
			[12]: icons_navigation_pushRight_small_upvr (copied, readonly)
		]]
		local Header1 = arg1_2.Font.Header1
		local var11_result1 = GetTextSize_upvr(headerText_upvr, Header1.RelativeSize * arg1_2.Font.BaseSize, Header1.Font, Vector2.new(10000, 10000))
		local module = {}
		local tbl = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 4);
			});
			HeaderText = Roact_upvr.createElement(GenericTextLabel_upvr, {
				Text = headerText_upvr;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Center;
				LayoutOrder = 1;
				fontStyle = Header1;
				colorStyle = arg1_2.Theme.TextEmphasis;
			});
		}
		local var31
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var31 = var31(ImageSetComponent_upvr.Label, tbl_2)
			tbl_2.LayoutOrder = 2
			tbl_2.ImageTransparency = arg1_2.Theme.TextEmphasis.Transparency
			tbl_2.ImageColor3 = arg1_2.Theme.TextEmphasis.Color
			tbl_2.Image = icons_navigation_pushRight_small_upvr
			tbl_2.BackgroundTransparency = 1
			tbl_2.Size = UDim2.fromOffset(getIconSize_upvr(IconSize_upvr.Small), getIconSize_upvr(IconSize_upvr.Small))
			local tbl_2 = {}
			var31 = Roact_upvr.createElement
			return var31
		end
		if not onSeeAll_upvr or not INLINED() then
			var31 = nil
		end
		tbl.SeeAllArrow = var31
		module.CarouselHeaderButton = Roact_upvr.createElement(Interactable_upvr, {
			Position = UDim2.fromOffset(carouselMargin_upvr, 0);
			Size = UDim2.fromOffset(var11_result1.X + 4 + getIconSize_upvr(IconSize_upvr.Small), var11_result1.Y);
			AutoButtonColor = false;
			BackgroundTransparency = 1;
			[Roact_upvr.Event.Activated] = onSeeAll_upvr;
			onStateChanged = function() -- Line 77, Named "onStateChanged"
			end;
		}, tbl)
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, var11_result1.Y);
			BackgroundTransparency = 1;
			LayoutOrder = layoutOrder_upvr;
		}, module)
	end)
end
return any_extend_result1