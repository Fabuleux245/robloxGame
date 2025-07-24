-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:03
-- Luau version 6, Types version 3
-- Time taken: 0.006607 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local FFlagLuaAppEdpSingleColumn_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpSingleColumn
local any_extend_result1 = Roact_upvr.PureComponent:extend("DetailsPageHeader")
any_extend_result1.defaultProps = {
	thumbnailHeight = 200;
	thumbnailAspectRatio = Vector2.new(1, 1);
	actionBarHeight = 48;
	actionBarWidth = 380;
}
local tbl_2 = {
	thumbnailImageUrl = t.optional(t.string);
	thumbnailAspectRatio = t.optional(t.Vector2);
	thumbnailHeight = t.optional(t.number);
	titleText = t.optional(t.string);
	subTitleText = t.optional(t.string);
	actionBarLabelText = t.optional(t.string);
	renderInfoContent = t.optional(t.callback);
	renderCustomHeader = t.optional(t.callback);
	headerBarBackgroundHeight = t.optional(t.number);
	sideMargin = t.optional(t.number);
	itemPadding = t.optional(t.number);
	bottomMargin = t.optional(t.number);
	gradientHeight = t.optional(t.number);
	thumbnailShadowHeight = t.optional(t.number);
	actionBarHeight = t.optional(t.number);
}
local any_optional_result1 = t.optional(t.number)
tbl_2.actionBarWidth = any_optional_result1
if FFlagLuaAppEdpSingleColumn_upvr then
	any_optional_result1 = t.optional(t.number)
else
	any_optional_result1 = nil
end
tbl_2.maxContentWidth = any_optional_result1
tbl_2.actionBarProps = t.optional(t.table)
tbl_2.deviceType = t.optional(t.string)
any_extend_result1.validateProps = t.strictInterface(tbl_2)
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1.renderThumbnail(arg1, arg2, arg3, arg4, arg5) -- Line 75
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: LoadableImage_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	local module = {}
	local any_createElement_result1 = Roact_upvr.createElement(LoadableImage_upvr, {
		cornerRadius = UDim.new(0, 8);
		Size = UDim2.fromScale(1, 1);
		Image = arg1.props.thumbnailImageUrl;
	})
	module.ThumbnailTile = any_createElement_result1
	if 0 < arg3 then
		any_createElement_result1 = Roact_upvr.createElement
		any_createElement_result1 = any_createElement_result1(ImageSetLabel_upvr, {
			Size = UDim2.new(1, 0, 0, 28);
			Position = UDim2.fromScale(0, 1);
			BackgroundTransparency = 1;
			Image = Images_upvr["component_assets/dropshadow_thumbnail_28"];
			ImageColor3 = arg2.Theme.DropShadow.Color;
			ImageTransparency = arg2.Theme.DropShadow.Transparency;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(32, 0, 33, 28);
		})
	else
		any_createElement_result1 = nil
	end
	module.DropShadow = any_createElement_result1
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.fromOffset(arg4, arg5);
		LayoutOrder = 1;
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.new(0, 0, 1, 0);
		BackgroundTransparency = 1;
	}, module)
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppBottomAlignDetailsHeaderInfoFrame", false)
local DetailsPageTitleContent_upvr = require(script.Parent.DetailsPageTitleContent)
local ActionBar_upvr = UIBlox.App.Button.ActionBar
function any_extend_result1.renderDesktopMode(arg1, arg2) -- Line 103
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: DetailsPageTitleContent_upvr (readonly)
		[4]: ActionBar_upvr (readonly)
		[5]: FFlagLuaAppEdpSingleColumn_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
	if arg1.props.thumbnailShadowHeight ~= nil then
	end
	local tbl_3 = {
		Size = UDim2.new(1, -((arg1.props.thumbnailHeight) * (arg1.props.thumbnailAspectRatio.X / arg1.props.thumbnailAspectRatio.Y) + (arg1.props.sideMargin or 48) * 2), 1, 0);
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 2;
	}
	if arg1.props.renderCustomHeader then
		-- KONSTANTWARNING: GOTO [354] #214
	end
	-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 49. Error Block 42 start (CF ANALYSIS FAILED)
	local _ = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
	}
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [97] #63
	end
	-- KONSTANTERROR: [76] 49. Error Block 42 end (CF ANALYSIS FAILED)
end
local FFlagLuaAppFixDetailsPageThumbnailRenderInPhone_upvr = require(Parent.SharedFlags).FFlagLuaAppFixDetailsPageThumbnailRenderInPhone
function any_extend_result1.renderisPhone(arg1, arg2) -- Line 246
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: FFlagLuaAppFixDetailsPageThumbnailRenderInPhone_upvr (readonly)
	]]
	local thumbnailHeight = arg1.props.thumbnailHeight
	local var25 = arg1.props.sideMargin or 24
	if arg1.props.renderCustomHeader then
		return {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, var25);
				PaddingRight = UDim.new(0, var25);
				PaddingBottom = UDim.new(0, 16);
			});
			ContentFrame = Roact_upvr.createElement("Frame", {
				Size = UDim2.fromScale(1, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				AnchorPoint = Vector2.new(0, 1);
				Position = UDim2.fromScale(0, 1);
				BackgroundTransparency = 1;
			}, {
				Content = arg1.props.renderCustomHeader();
			});
		}
	end
	local module_3 = {}
	local any_createElement_result1_3 = Roact_upvr.createElement("UIPadding", {
		PaddingLeft = UDim.new(0, var25);
		PaddingRight = UDim.new(0, var25);
		PaddingBottom = UDim.new(0, 16);
	})
	module_3.Padding = any_createElement_result1_3
	if FFlagLuaAppFixDetailsPageThumbnailRenderInPhone_upvr then
		any_createElement_result1_3 = arg1:renderThumbnail(arg2, 0, (thumbnailHeight) * (arg1.props.thumbnailAspectRatio.X / arg1.props.thumbnailAspectRatio.Y), thumbnailHeight)
	else
		any_createElement_result1_3 = arg1:renderThumbnail
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		any_createElement_result1_3 = any_createElement_result1_3(arg2, (thumbnailHeight) * (arg1.props.thumbnailAspectRatio.X / arg1.props.thumbnailAspectRatio.Y), thumbnailHeight)
	end
	module_3.ThumbnailTileFrame = any_createElement_result1_3
	return module_3
end
local DeviceType_upvr = require(Parent.RobloxAppEnums).DeviceType
local withStyle_upvr = UIBlox.Core.Style.withStyle
function any_extend_result1.render(arg1) -- Line 284
	--[[ Upvalues[3]:
		[1]: DeviceType_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	local var35_upvr
	if arg1.props.deviceType ~= DeviceType_upvr.Phone then
		var35_upvr = false
	else
		var35_upvr = true
	end
	local thumbnailHeight_upvr = arg1.props.thumbnailHeight
	local var37_upvr = arg1.props.headerBarBackgroundHeight or 80
	local gradientHeight_upvr = arg1.props.gradientHeight
	if not gradientHeight_upvr then
		gradientHeight_upvr = thumbnailHeight_upvr + 16 - var37_upvr + 44
	end
	local bottomMargin_upvr = arg1.props.bottomMargin
	return withStyle_upvr(function(arg1_2) -- Line 294
		--[[ Upvalues[7]:
			[1]: Roact_upvr (copied, readonly)
			[2]: gradientHeight_upvr (readonly)
			[3]: var37_upvr (readonly)
			[4]: var35_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: thumbnailHeight_upvr (readonly)
			[7]: bottomMargin_upvr (readonly)
		]]
		local Theme = arg1_2.Theme
		local module_2 = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				VerticalAlignment = Enum.VerticalAlignment.Bottom;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
			});
			GradientBar = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, gradientHeight_upvr);
				BackgroundColor3 = Theme.BackgroundDefault.Color;
				AnchorPoint = Vector2.new(0, 1);
				BorderSizePixel = 0;
				LayoutOrder = 1;
			}, {
				Gradient = Roact_upvr.createElement("UIGradient", {
					Rotation = 270;
					Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.5, 0.25), NumberSequenceKeypoint.new(1, 1)});
				});
			});
		}
		local var50
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var50 = arg1:renderisPhone(arg1_2, thumbnailHeight_upvr)
			return var50
		end
		if not var35_upvr or not INLINED() then
			var50 = arg1:renderDesktopMode(arg1_2, thumbnailHeight_upvr)
		end
		local any_createElement_result1_2 = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, var37_upvr);
			Position = UDim2.fromScale(0, 1);
			AnchorPoint = Vector2.new(0, 1);
			BackgroundColor3 = Theme.BackgroundDefault.Color;
			BackgroundTransparency = Theme.BackgroundDefault.Transparency;
			BorderSizePixel = 0;
			LayoutOrder = 2;
		}, var50)
		module_2.BackgroundBar = any_createElement_result1_2
		if bottomMargin_upvr then
			any_createElement_result1_2 = Roact_upvr.createElement
			local tbl = {}
			var50 = UDim2.new(1, 0, 0, bottomMargin_upvr)
			tbl.Size = var50
			var50 = 1
			tbl.BackgroundTransparency = var50
			var50 = 3
			tbl.LayoutOrder = var50
			any_createElement_result1_2 = any_createElement_result1_2("Frame", tbl)
		else
			any_createElement_result1_2 = nil
		end
		module_2.Padding = any_createElement_result1_2
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
		}, module_2)
	end)
end
return any_extend_result1