-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:25
-- Luau version 6, Types version 3
-- Time taken: 0.008898 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TileThumbnail")
any_extend_result1.validateProps = t.strictInterface({
	hasRoundedCorners = t.optional(t.boolean);
	cornerRadius = t.optional(t.UDim);
	Image = t.optional(t.union(t.string, t.table));
	imageSize = t.optional(t.UDim2);
	imageColor = t.optional(t.Color3);
	imageTransparency = t.optional(t.number);
	isSelected = t.optional(t.boolean);
	multiSelect = t.optional(t.boolean);
	overlayComponents = t.optional(t.table);
	backgroundImage = t.optional(t.union(t.string, t.table));
	scaleType = t.optional(t.enum(Enum.ScaleType));
	onThumbnailLoaded = t.optional(t.callback);
})
any_extend_result1.defaultProps = {
	imageSize = UDim2.fromScale(1, 1);
	imageTransparency = 0;
	cornerRadius = UDim.new(0, 10);
	scaleType = Enum.ScaleType.Stretch;
}
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local LoadableImage_upvr = require(Parent_2.App.Loading.LoadableImage)
local TileSelectionOverlay_upvr = require(Parent_3.TileSelectionOverlay)
local TileUnselectedOverlay_upvr = require(Parent_3.TileUnselectedOverlay)
function any_extend_result1.render(arg1) -- Line 62
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
		[4]: LoadableImage_upvr (readonly)
		[5]: TileSelectionOverlay_upvr (readonly)
		[6]: TileUnselectedOverlay_upvr (readonly)
	]]
	local Image_upvr = arg1.props.Image
	local props_upvr = arg1.props
	if typeof(Image_upvr) ~= "table" then
		props_upvr = false
	else
		props_upvr = true
	end
	local backgroundImage_upvr = arg1.props.backgroundImage
	local imageColor_upvr = arg1.props.imageColor
	local imageTransparency_upvr = arg1.props.imageTransparency
	local imageSize_upvr = arg1.props.imageSize
	local scaleType_upvr = props_upvr.scaleType
	local hasRoundedCorners_upvr = arg1.props.hasRoundedCorners
	local cornerRadius_upvr = arg1.props.cornerRadius
	local overlayComponents_upvr = arg1.props.overlayComponents
	local isSelected_upvr = arg1.props.isSelected
	local multiSelect_upvr = arg1.props.multiSelect
	return withStyle_upvr(function(arg1_2) -- Line 77
		--[[ Upvalues[18]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetComponent_upvr (copied, readonly)
			[3]: backgroundImage_upvr (readonly)
			[4]: props_upvr (readonly)
			[5]: Image_upvr (readonly)
			[6]: imageColor_upvr (readonly)
			[7]: imageTransparency_upvr (readonly)
			[8]: imageSize_upvr (readonly)
			[9]: scaleType_upvr (readonly)
			[10]: hasRoundedCorners_upvr (readonly)
			[11]: cornerRadius_upvr (readonly)
			[12]: LoadableImage_upvr (copied, readonly)
			[13]: arg1 (readonly)
			[14]: overlayComponents_upvr (readonly)
			[15]: isSelected_upvr (readonly)
			[16]: TileSelectionOverlay_upvr (copied, readonly)
			[17]: multiSelect_upvr (readonly)
			[18]: TileUnselectedOverlay_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme_2 = arg1_2.Theme
		local module = {}
		local tbl_4 = {}
		local tbl_8 = {}
		local var54
		local function INLINED_7() -- Internal function, doesn't exist in bytecode
			tbl_18.UICorner = var54
			if not hasRoundedCorners_upvr or not INLINED_6() then
				var54 = nil
			end
			local function INLINED_6() -- Internal function, doesn't exist in bytecode
				var54 = var54("UICorner", tbl)
				tbl.CornerRadius = cornerRadius_upvr
				local tbl = {}
				var54 = Roact_upvr.createElement
				return var54
			end
			local tbl_18 = {}
			tbl_19.ScaleType = scaleType_upvr
			tbl_19.Size = imageSize_upvr
			tbl_19.Position = UDim2.fromScale(var54, 0.5)
			var54 = 0.5
			tbl_19.ImageTransparency = imageTransparency_upvr
			tbl_19.ImageColor3 = var56
			if not var56 then
				var54 = Theme_2.UIEmphasis
				var56 = var54.Color
			end
			local var56 = imageColor_upvr
			tbl_19.Image = Image_upvr
			tbl_19.BackgroundTransparency = 1
			tbl_19.AnchorPoint = Vector2.new(var54, 0.5)
			var54 = 0.5
			local tbl_19 = {}
			return Roact_upvr.createElement(ImageSetComponent_upvr.Label, tbl_19, tbl_18)
		end
		if not props_upvr or not INLINED_7() then
			local tbl_5 = {}
			var54 = 0.5
			tbl_5.AnchorPoint = Vector2.new(var54, 0.5)
			var54 = Theme_2.PlaceHolder
			tbl_5.BackgroundColor3 = var54.Color
			tbl_5.BackgroundTransparency = 1
			tbl_5.Image = Image_upvr
			var54 = 0.5
			tbl_5.Position = UDim2.fromScale(var54, 0.5)
			tbl_5.Size = imageSize_upvr
			var54 = hasRoundedCorners_upvr
			if not var54 or not cornerRadius_upvr then
			end
			tbl_5.cornerRadius = nil
			tbl_5.showFailedStateWhenLoadingFailed = true
			tbl_5.useShimmerAnimationWhileLoading = true
			tbl_5.ScaleType = scaleType_upvr
			var54 = arg1.props
			tbl_5.onLoaded = var54.onThumbnailLoaded
		end
		tbl_8.ImageSetImage = Roact_upvr.createElement(LoadableImage_upvr, tbl_5)
		local function INLINED_8() -- Internal function, doesn't exist in bytecode
			tbl_3.CornerRadius = cornerRadius_upvr
			local tbl_3 = {}
			return Roact_upvr.createElement("UICorner", tbl_3)
		end
		if not hasRoundedCorners_upvr or not INLINED_8() then
		end
		tbl_8.UICorner = nil
		tbl_4.BackgroundImage = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
			Image = backgroundImage_upvr;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(1, 1);
			ZIndex = 0;
		}, tbl_8)
		local function INLINED_9() -- Internal function, doesn't exist in bytecode
			tbl_16.CornerRadius = cornerRadius_upvr
			local tbl_16 = {}
			return Roact_upvr.createElement("UICorner", tbl_16)
		end
		if not hasRoundedCorners_upvr or not INLINED_9() then
		end
		tbl_4.UICorner = nil
		module.ImageContainer = Roact_upvr.createElement("Frame", {
			BackgroundColor3 = Theme_2.PlaceHolder.Color;
			BackgroundTransparency = Theme_2.PlaceHolder.Transparency;
			BorderSizePixel = 0;
			Size = UDim2.fromScale(1, 1);
			ZIndex = 0;
		}, tbl_4)
		if overlayComponents_upvr then
		end
		module.ComponentsFrame = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
			ZIndex = 1;
		}, overlayComponents_upvr)
		local var63
		if isSelected_upvr then
			local tbl_15 = {}
			var63 = 2
			tbl_15.ZIndex = var63
			local function INLINED_10() -- Internal function, doesn't exist in bytecode
				var63 = cornerRadius_upvr
				return var63
			end
			if not hasRoundedCorners_upvr or not INLINED_10() then
				var63 = nil
			end
			tbl_15.cornerRadius = var63
		end
		module.SelectionOverlay = Roact_upvr.createElement(TileSelectionOverlay_upvr, tbl_15)
		local var65 = multiSelect_upvr
		if var65 then
			var65 = not isSelected_upvr
			if var65 then
				var65 = Roact_upvr.createElement
				local tbl_10 = {}
				var63 = 2
				tbl_10.ZIndex = var63
				var65 = var65(TileUnselectedOverlay_upvr, tbl_10)
			end
		end
		module.UnselectedOverlay = var65
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
		}, module)
	end)
end
return any_extend_result1