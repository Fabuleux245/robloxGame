-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:08
-- Luau version 6, Types version 3
-- Time taken: 0.008904 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local UIBloxConfig_upvr = require(Parent.UIBloxConfig)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ResponsiveCarousel")
any_extend_result1_upvr.validateProps = t.strictInterface({
	headerText = t.union(t.string, t.callback);
	headerHeight = t.optional(t.number);
	headerPadding = t.optional(t.number);
	buttonText = t.optional(t.string);
	onButtonClick = t.optional(t.callback);
	layoutOrder = t.optional(t.number);
	kind = t.optional(t.string);
	scrollable = t.optional(t.boolean);
	clipsDescendants = t.optional(t.boolean);
	selectable = t.optional(t.boolean);
	relativeHeight = t.optional(t.UDim);
	data = t.optional(t.any);
	getItem = t.optional(t.callback);
	getItemCount = t.optional(t.callback);
	renderItem = t.optional(t.callback);
	keyExtractor = t.optional(t.callback);
	getCellColspan = t.optional(t.callback);
	getCellOrder = t.optional(t.callback);
	onSeeAll = t.optional(t.callback);
	itemSize = t.optional(t.Vector2);
	itemList = t.optional(t.array(t.any));
	identifier = t.optional(t.callback);
	itemPadding = t.optional(t.number);
	carouselMargin = t.optional(t.number);
	innerPadding = t.optional(t.number);
	loadNext = t.optional(t.callback);
	scrollingFrameRef = t.optional(t.table);
	carouselRef = t.optional(t.table);
})
any_extend_result1_upvr.defaultProps = {
	kind = "default";
	headerHeight = 28;
	headerPadding = 12;
}
function any_extend_result1_upvr.init(arg1) -- Line 126
	function arg1.itemListCount(arg1_2, arg2) -- Line 127
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.scrollable then
			return #arg1_2
		end
		return math.min(#arg1_2, arg2.columns)
	end
end
local GetTextSize_upvr = require(Parent.Core.Text.GetTextSize)
local vector2_upvr = Vector2.new(math.huge, math.huge)
function any_extend_result1_upvr.getButtonSize(arg1, arg2) -- Line 136
	--[[ Upvalues[3]:
		[1]: UIBloxConfig_upvr (readonly)
		[2]: GetTextSize_upvr (readonly)
		[3]: vector2_upvr (readonly)
	]]
	if UIBloxConfig_upvr.useFoundationButton then
		return UDim2.fromOffset(0, arg1.props.headerHeight)
	end
	local CaptionHeader = arg2.Font.CaptionHeader
	return UDim2.fromOffset(GetTextSize_upvr(arg1.props.buttonText, CaptionHeader.RelativeSize * arg2.Font.BaseSize, CaptionHeader.Font, vector2_upvr).X + 16, arg1.props.headerHeight)
end
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local GenericTextLabel_upvr = require(Parent.Core.Text.GenericTextLabel.GenericTextLabel)
local Button_upvr = require(Parent.App.Button.Button)
local ButtonType_upvr = require(Parent.App.Button.Enum.ButtonType)
function any_extend_result1_upvr.renderHeader(arg1, arg2) -- Line 146
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: UIBloxConfig_upvr (readonly)
		[4]: GenericTextLabel_upvr (readonly)
		[5]: Button_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 147
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: UIBloxConfig_upvr (copied, readonly)
			[5]: GenericTextLabel_upvr (copied, readonly)
			[6]: Button_upvr (copied, readonly)
			[7]: ButtonType_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var18
		if not var18 then
			var18 = arg1.props.onSeeAll
			local var19
		end
		if var18 and arg1.props.buttonText then
			var19 = true
		else
			var19 = false
		end
		if var19 then
			local _ = arg1:getButtonSize(arg1_3)
		else
		end
		local module = {}
		local tbl_3 = {
			PaddingLeft = UDim.new(0, arg2.margin);
		}
		local udim = UDim.new(0, arg2.margin)
		tbl_3.PaddingRight = udim
		if UIBloxConfig_upvr.useFoundationButton then
			udim = UDim.new(0, 2)
		else
			udim = nil
		end
		tbl_3.PaddingTop = udim
		module.ResponsiveCarouselHeaderPadding = Roact_upvr.createElement("UIPadding", tbl_3)
		if 0 < arg2.width then
			local tbl_5 = {
				MaxSize = Vector2.new(arg2.width, arg1.props.headerHeight);
			}
			-- KONSTANTWARNING: GOTO [124] #90
		end
		module.ResponsiveCarouselHeaderMaxWidth = nil
		local tbl_4 = {}
		if UIBloxConfig_upvr.useFoundationButton then
		else
		end
		tbl_4.Size = UDim2.new(1, -UDim2.new().X.Offset - arg1.props.headerPadding, 1, 0)
		tbl_4.Text = arg1.props.headerText
		tbl_4.TextXAlignment = Enum.TextXAlignment.Left
		tbl_4.TextYAlignment = Enum.TextYAlignment.Center
		tbl_4.fontStyle = arg1_3.Font.Header1
		tbl_4.colorStyle = arg1_3.Theme.TextEmphasis
		tbl_4.TextTruncate = Enum.TextTruncate.AtEnd
		module.ResponsiveCarouselTitle = Roact_upvr.createElement(GenericTextLabel_upvr, tbl_4)
		if var19 then
			local tbl = {
				buttonType = ButtonType_upvr.Secondary;
			}
			if UIBloxConfig_upvr.useFoundationButton then
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			local udim2 = UDim2.new(1, -UDim2.new().X.Offset, 0, 0)
			tbl.position = udim2
			if UIBloxConfig_upvr.useFoundationButton then
				udim2 = Vector2.new(1, 0)
			else
				udim2 = nil
			end
			tbl.anchorPoint = udim2
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.size = UDim2.new()
			tbl.text = arg1.props.buttonText
			tbl.fontStyle = arg1_3.Font.CaptionHeader
			tbl.onActivated = var18
		else
		end
		module.ResponsiveCarouselSeeAll = nil
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, arg1.props.headerHeight);
			BackgroundTransparency = 1;
			LayoutOrder = arg2.layoutOrder;
		}, module)
	end)
end
local function _(arg1, arg2, arg3, arg4) -- Line 197, Named "getCellHeight"
	return UDim.new(arg4.Scale / arg1, ((arg2 - 2 * arg3) / arg1 - arg2) * arg4.Scale + arg4.Offset)
end
local withGridConfig_DEPRECATED_upvr = require(Parent.Core.Layout.Grid.withGridConfig_DEPRECATED)
local ResponsiveRow_upvr = require(Parent.Core.Layout.Responsive.ResponsiveRow)
function any_extend_result1_upvr.render(arg1) -- Line 204
	--[[ Upvalues[3]:
		[1]: withGridConfig_DEPRECATED_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ResponsiveRow_upvr (readonly)
	]]
	return withGridConfig_DEPRECATED_upvr({
		columns = 1;
		gutter = 0;
		margin = 0;
		width = -1;
		relativeHeight = false;
	}, arg1.props.kind)(function(arg1_4) -- Line 211
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ResponsiveRow_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var33
		if not var33 and arg1.props.itemSize then
			var33 = UDim.new(0, arg1.props.itemSize.Y)
		end
		if not var33 and arg1_4.relativeHeight then
			var33 = arg1_4.relativeHeight
		end
		if var33 then
			local columns = arg1_4.columns
			local gutter = arg1_4.gutter
			local var36 = var33 + UDim.new(0, arg1.props.headerHeight + arg1.props.headerPadding)
			local _ = UDim.new(var36.Scale / columns, ((gutter - 2 * arg1_4.margin) / columns - gutter) * var36.Scale + var36.Offset)
		else
		end
		local module_3 = {
			Size = UDim2.new(UDim.new(1, 0), UDim.new(0, 0));
		}
		local RelativeXX = Enum.SizeConstraint.RelativeXX
		module_3.SizeConstraint = RelativeXX
		if var33 then
			RelativeXX = Enum.AutomaticSize.None
		else
			RelativeXX = Enum.AutomaticSize.Y
		end
		module_3.AutomaticSize = RelativeXX
		module_3.BackgroundTransparency = 1
		module_3.LayoutOrder = arg1.props.layoutOrder
		module_3[Roact_upvr.Ref] = arg1.props.carouselRef
		local module_2 = {Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, arg1.props.headerPadding);
		})}
		if type(arg1.props.headerText) == "function" then
			-- KONSTANTWARNING: GOTO [193] #129
		end
		module_2.ResponsiveCarouselHeader = arg1:renderHeader({
			layoutOrder = 1;
			margin = arg1_4.margin;
			width = arg1_4.width;
		})
		local tbl_2 = {
			layoutOrder = 2;
			zIndex = 2;
			kind = arg1.props.kind;
			scrollable = arg1.props.scrollable;
			clipsDescendants = arg1.props.clipsDescendants;
			selectable = arg1.props.selectable;
			relativeHeight = var33;
		}
		if arg1.props.data ~= nil then
		else
		end
		tbl_2.data = arg1.props.itemList
		tbl_2.getItem = arg1.props.getItem
		if not arg1.props.getItemCount then
			if arg1.props.data == nil and arg1.props.itemList then
			else
			end
		end
		tbl_2.getItemCount = nil
		tbl_2.renderItem = arg1.props.renderItem
		if not arg1.props.keyExtractor then
		end
		tbl_2.keyExtractor = arg1.props.identifier
		tbl_2.getCellColspan = arg1.props.getCellColspan
		tbl_2.getCellOrder = arg1.props.getCellOrder
		tbl_2.scrollingFrameRef = arg1.props.scrollingFrameRef
		module_2.ResponsiveCarouselRow = Roact_upvr.createElement(ResponsiveRow_upvr, tbl_2)
		return Roact_upvr.createElement("Frame", module_3, module_2)
	end)
end
local Object_upvr = require(Parent_2.LuauPolyfill).Object
local any_forwardRef_result1 = Roact_upvr.forwardRef(function(arg1, arg2) -- Line 272
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	local module_4 = {}
	module_4.carouselRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Object_upvr.assign({}, arg1, module_4))
end)
any_forwardRef_result1.validateProps = any_extend_result1_upvr.validateProps
return any_forwardRef_result1