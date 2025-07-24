-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:29
-- Luau version 6, Types version 3
-- Time taken: 0.007984 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent_3 = Parent_2.Parent
local Core = Parent_3.Core
local Parent = Parent_3.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local Images_upvr = require(Parent_2.ImageSet.Images)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local udim_upvr = UDim.new(0, 8)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ItemSplitTile")
any_extend_result1.validateProps = t.strictInterface({
	itemName = t.optional(t.string);
	priceText = t.optional(t.string);
	isOwned = t.optional(t.boolean);
	hasBackground = t.optional(t.boolean);
	isHovered = t.optional(t.boolean);
	onActivated = t.optional(t.callback);
	thumbnail = t.optional(t.string);
})
any_extend_result1.defaultProps = {
	itemName = "--";
	priceText = "--";
	hasBackground = true;
	isHovered = false;
}
function any_extend_result1.init(arg1) -- Line 68
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1:setState({
		controlState = ControlState_upvr.Initialize;
	})
	function arg1.onStateChanged(arg1_2, arg2) -- Line 73
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_5 = {}
		tbl_5.controlState = arg2
		arg1:setState(tbl_5)
	end
end
local LoadableImage_upvr = require(Parent_3.App.Loading.LoadableImage)
function any_extend_result1.renderImageFrame(arg1, arg2, arg3, arg4, arg5) -- Line 80
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetComponent_upvr (readonly)
		[3]: udim_upvr (readonly)
		[4]: LoadableImage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 70 start (CF ANALYSIS FAILED)
	local var18
	if not arg4 then
	end
	if typeof(arg2) ~= "table" then
	else
	end
	local tbl_2 = {}
	if arg3 then
		var18 = 0.5
		-- KONSTANTWARNING: GOTO [26] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 70 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 21. Error Block 79 start (CF ANALYSIS FAILED)
	var18 = 0
	tbl_2.Position = UDim2.fromScale(0, var18)
	if arg4 then
		var18 = 1
	else
		var18 = 0.5
	end
	tbl_2.Size = UDim2.fromScale(1, var18)
	tbl_2.ClipsDescendants = true
	tbl_2.BackgroundTransparency = 1
	-- KONSTANTERROR: [25] 21. Error Block 79 end (CF ANALYSIS FAILED)
end
function any_extend_result1.renderTopContent(arg1, arg2) -- Line 119
	--[[ Upvalues[3]:
		[1]: Images_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
	local hasBackground_3 = arg1.props.hasBackground
	local var21 = not hasBackground_3
	local Theme_2 = arg2.Theme
	local var23 = Images_upvr[Theme_2.ItemBackgroundDefault.Image]
	local module_3 = {}
	local var25 = 1
	module_3.Size = UDim2.new(var25, 0, 1, 0)
	module_3.BackgroundTransparency = 1
	module_3.SizeConstraint = Enum.SizeConstraint.RelativeXX
	module_3.ZIndex = 2
	local module_2 = {}
	if arg1.props.thumbnail then
		var25 = Roact_upvr.createElement
		local tbl_3 = {}
		local any_renderImageFrame_result1 = arg1:renderImageFrame(var23, false, var21, arg2)
		tbl_3.TopImageFrame = any_renderImageFrame_result1
		if not var21 then
			any_renderImageFrame_result1 = arg1:renderImageFrame(var23, true, false, arg2)
		else
			any_renderImageFrame_result1 = nil
		end
		tbl_3.BottomImageFrame = any_renderImageFrame_result1
		var25 = var25("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}, tbl_3)
	else
		var25 = nil
	end
	module_2.BackgroundImage = var25
	local tbl = {
		TopImageFrame = arg1:renderImageFrame(arg1.props.thumbnail, false, var21, arg2);
	}
	if not var21 then
		-- KONSTANTWARNING: GOTO [134] #99
	end
	-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [133] 98. Error Block 28 start (CF ANALYSIS FAILED)
	tbl.BottomImageFrame = nil
	local var32
	var32 = var32("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, tbl)
	module_2.ItemImage = var32
	if arg1.props.isHovered and not hasBackground_3 then
		var32 = Roact_upvr.createElement
		var32 = var32(ImageSetComponent_upvr.Label, {
			ZIndex = 0;
			Position = UDim2.new(0.5, 0, 0.5, 2);
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 12);
			Image = Images_upvr["component_assets/dropshadow_24_6"];
			ImageColor3 = Theme_2.DropShadow.Color;
			ImageTransparency = Theme_2.DropShadow.Transparency;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(18, 18, 18, 18);
		})
	else
		var32 = nil
	end
	module_2.HoverShadow = var32
	do
		return Roact_upvr.createElement("Frame", module_3, module_2)
	end
	-- KONSTANTERROR: [133] 98. Error Block 28 end (CF ANALYSIS FAILED)
end
local udim_upvr_3 = UDim.new(0, 12)
local udim_upvr_2 = UDim.new(0, 8)
local ItemSplitTileFooter_upvr = require(Parent_3.App.Tile.ItemSplitTile.ItemSplitTileFooter)
function any_extend_result1.renderBottomContent(arg1, arg2) -- Line 169
	--[[ Upvalues[5]:
		[1]: ControlState_upvr (readonly)
		[2]: udim_upvr_3 (readonly)
		[3]: udim_upvr_2 (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ItemSplitTileFooter_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
	local hasBackground_2 = arg1.props.hasBackground
	local state = arg1.state
	if arg1.props.isHovered or state.controlState == ControlState_upvr.Pressed or hasBackground_2 then
		state = udim_upvr_3
	else
		state = udim_upvr_2
	end
	local tbl_7 = {
		Size = UDim2.new(1, 0, 0, math.ceil(arg2.Font.BaseSize * arg2.Font.Header2.RelativeSize) * 3 + udim_upvr_2.Offset + state.Offset * 2);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}
	;({}).UIListLayout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = udim_upvr_2;
	})
	if hasBackground_2 then
		-- KONSTANTWARNING: GOTO [105] #72
	end
	-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [104] 71. Error Block 46 start (CF ANALYSIS FAILED)
	;({}).PaddingLeft = nil
	if hasBackground_2 then
		-- KONSTANTWARNING: GOTO [111] #77
	end
	-- KONSTANTERROR: [104] 71. Error Block 46 end (CF ANALYSIS FAILED)
end
local Interactable_upvr = require(Core.Control.Interactable)
function any_extend_result1.renderTileContent(arg1, arg2) -- Line 237
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: udim_upvr (readonly)
		[3]: Interactable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local hasBackground = arg1.props.hasBackground
	local Theme_3 = arg2.Theme
	local var44
	if hasBackground then
		var44 = Theme_3.BackgroundUIDefault.Color
	else
		var44 = nil
	end
	if hasBackground then
	else
	end
	local module_4 = {
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = udim_upvr;
		});
		Panel = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}, {
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			TopContentPlaceholder = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				SizeConstraint = Enum.SizeConstraint.RelativeXX;
				BackgroundTransparency = 1;
				LayoutOrder = 1;
			});
			BottomContent = arg1:renderBottomContent(arg2);
		});
		TopContent = arg1:renderTopContent(arg2);
	}
	local tbl_4 = {
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = udim_upvr;
		});
	}
	local tbl_6 = {
		Size = UDim2.new(1, -2, 1, -2);
		Position = UDim2.fromOffset(1, 1);
		BackgroundTransparency = 1;
	}
	if not hasBackground then
	else
	end
	tbl_6.SizeConstraint = nil
	tbl_4.BorderFrame = Roact_upvr.createElement("Frame", tbl_6, {
		UIStroke = Roact_upvr.createElement("UIStroke", {
			Color = Theme_3.Divider.Color;
			Transparency = Theme_3.Divider.Transparency;
			Thickness = 1;
		});
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = udim_upvr;
		});
	})
	module_4.TileOverlay = Roact_upvr.createElement(Interactable_upvr, {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		onStateChanged = arg1.onStateChanged;
		[Roact_upvr.Event.Activated] = arg1.props.onActivated;
		ZIndex = 3;
	}, tbl_4)
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundColor3 = var44;
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		ZIndex = 1;
	}, module_4)
end
local withStyle_upvr = require(Core.Style.withStyle)
function any_extend_result1.render(arg1) -- Line 300
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	local isHovered_upvr = arg1.props.isHovered
	local hasBackground_upvr = arg1.props.hasBackground
	return withStyle_upvr(function(arg1_3) -- Line 304
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: isHovered_upvr (readonly)
			[4]: hasBackground_upvr (readonly)
			[5]: ImageSetComponent_upvr (copied, readonly)
			[6]: Images_upvr (copied, readonly)
		]]
		local Theme = arg1_3.Theme
		local module = {
			UISizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
				MinSize = Vector2.new(146, 233);
			});
			TileContent = arg1:renderTileContent(arg1_3);
		}
		local var67
		if isHovered_upvr and hasBackground_upvr then
			var67 = Roact_upvr.createElement
			var67 = var67(ImageSetComponent_upvr.Label, {
				ZIndex = 0;
				Position = UDim2.new(0.5, 0, 0.5, 2);
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 10, 1, 12);
				Image = Images_upvr["component_assets/dropshadow_24_6"];
				ImageColor3 = Theme.DropShadow.Color;
				ImageTransparency = Theme.DropShadow.Transparency;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(18, 18, 18, 18);
			})
		else
			var67 = nil
		end
		module.HoverShadow = var67
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}, module)
	end)
end
return any_extend_result1