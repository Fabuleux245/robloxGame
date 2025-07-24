-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:33
-- Luau version 6, Types version 3
-- Time taken: 0.007003 seconds

local Parent_2 = script.Parent.Parent
local dependencies = require(Parent_2.dependencies)
local UIBlox = dependencies.UIBlox
local type_upvr = require(Parent_2.type)
local Parent = Parent_2.Parent
local Images = UIBlox.App.ImageSet.Images
local UserLibConstants_upvr = dependencies.UserLibConstants
local function var7_upvr(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: type_upvr (readonly)
		[2]: UserLibConstants_upvr (readonly)
	]]
	if arg1 == type_upvr.SENDERThumbnailTypeEnum.Game then
		return UserLibConstants_upvr.RbxthumbTypes.GameIcon
	end
	if arg1 == type_upvr.SENDERThumbnailTypeEnum.User then
		return UserLibConstants_upvr.RbxthumbTypes.AvatarHeadShot
	end
	if arg1 == type_upvr.SENDERThumbnailTypeEnum.Group then
		return UserLibConstants_upvr.RbxthumbTypes.GroupIcon
	end
	if arg1 == type_upvr.SENDERThumbnailTypeEnum.Asset then
		return UserLibConstants_upvr.RbxthumbTypes.Asset
	end
	if arg1 == type_upvr.SENDERThumbnailTypeEnum.Bundle then
		return UserLibConstants_upvr.RbxthumbTypes.BundleThumbnail
	end
	return UserLibConstants_upvr.RbxthumbTypes.GameIcon
end
local function _(arg1) -- Line 43
	--[[ Upvalues[1]:
		[1]: type_upvr (readonly)
	]]
	local var10
	if arg1.idType ~= type_upvr.SENDERThumbnailTypeEnum.User then
		var10 = false
	else
		var10 = true
	end
	return var10
end
local useNotificationCardState_upvr = require(Parent_2.context.useNotificationCardState)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local getRbxthumbWithTypeSizeAndOptions_upvr = dependencies.getRbxthumbWithTypeSizeAndOptions
local GetFFlagEnableToastIconSupport_upvr = require(Parent.SharedFlags).GetFFlagEnableToastIconSupport
local constants_upvr = require(Parent.NotificationsCommon).constants
local React_upvr = dependencies.React
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_common_safety_upvr = Images["icons/common/safety"]
local icons_graphic_logomark_gradient_xlarge_upvr = Images["icons/graphic/logomark-gradient_xlarge"]
local ImagePile_upvr = dependencies.AppBlox.ImagePile
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
return function() -- Line 47
	--[[ Upvalues[13]:
		[1]: useNotificationCardState_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: type_upvr (readonly)
		[4]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[5]: var7_upvr (readonly)
		[6]: GetFFlagEnableToastIconSupport_upvr (readonly)
		[7]: constants_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: ImageSetLabel_upvr (readonly)
		[10]: icons_common_safety_upvr (readonly)
		[11]: icons_graphic_logomark_gradient_xlarge_upvr (readonly)
		[12]: ImagePile_upvr (readonly)
		[13]: LoadableImage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var12_result1_2 = useNotificationCardState_upvr("thumbnail")
	local var68
	if var12_result1_2 == nil or #var12_result1_2 == 0 then
		return nil
	end
	local useStyle_upvr_result1_2 = useStyle_upvr()
	local tbl_3 = {}
	var68 = false
	for i, v in ipairs(var12_result1_2) do
		local var74
		if v.idType ~= type_upvr.SENDERThumbnailTypeEnum.User then
			var74 = false
		else
			var74 = true
		end
		if not var74 then
			var68 = true
		end
		var74 = tostring(v.id)
		tbl_3[var74] = getRbxthumbWithTypeSizeAndOptions_upvr(v.id, var7_upvr(v.idType), 150)
	end
	if GetFFlagEnableToastIconSupport_upvr() then
		local _1 = var12_result1_2[1]
		var74 = type_upvr
		v = var74.SENDERThumbnailTypeEnum
		i = v.Icon
		if _1.idType == i then
			v = constants_upvr
			i = v.SafetyThumbnailId
			if _1.id == i then
				i = React_upvr
				i = "Frame"
				v = {}
				var74 = 1
				v.BackgroundTransparency = var74
				var74 = UDim2.fromScale(1, 1)
				v.Size = var74
				var74 = Enum.SizeConstraint.RelativeXX
				v.SizeConstraint = var74
				var74 = 0
				v.BorderSizePixel = var74
				var74 = {}
				var74.Icon = React_upvr.createElement(ImageSetLabel_upvr, {
					Size = UDim2.fromScale(1, 1);
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.5);
					LayoutOrder = 1;
					Image = icons_common_safety_upvr;
					BackgroundTransparency = 1;
					ImageColor3 = useStyle_upvr_result1_2.Theme.IconDefault.Color;
				})
				return i.createElement(i, v, var74)
			end
			i = React_upvr
			i = "Frame"
			v = {}
			var74 = 0
			v.BackgroundTransparency = var74
			var74 = UDim2.fromScale(1, 1)
			v.Size = var74
			var74 = Enum.SizeConstraint.RelativeXX
			v.SizeConstraint = var74
			var74 = useStyle_upvr_result1_2.Tokens.Global.Color.Black.Color3
			v.BackgroundColor3 = var74
			var74 = 0
			v.BorderSizePixel = var74
			var74 = {}
			var74.UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			})
			var74.Icon = React_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.fromScale(0.8, 0.8);
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				LayoutOrder = 1;
				Image = icons_graphic_logomark_gradient_xlarge_upvr;
				BackgroundTransparency = 1;
			})
			return i.createElement(i, v, var74)
		end
	end
	if not var68 then
		i = nil
		for _, v_2 in tbl_3, nil, i do
			table.insert({}, {
				Image = v_2;
				BackgroundColor3 = Color3.fromRGB(101, 102, 104);
			})
			local var81
		end
		i = {}
		i.images = var81
		i.imageBorderColor = useStyle_upvr_result1_2.Theme.BackgroundUIDefault.Color
		if 1 < #var81 then
		else
		end
		i.imageBorderThickness = 0
		return React_upvr.createElement(ImagePile_upvr, i)
	end
	local _1_3 = var12_result1_2[1]
	if _1_3 == nil then
		return nil
	end
	local module_2 = {}
	local tbl_7 = {
		BackgroundTransparency = 1;
		Image = getRbxthumbWithTypeSizeAndOptions_upvr(_1_3.id, var7_upvr(_1_3.idType), 150);
	}
	local var86 = 1
	tbl_7.Size = UDim2.fromScale(var86, 1)
	if _1_3.idType ~= type_upvr.SENDERThumbnailTypeEnum.User then
		var86 = false
	else
		var86 = true
	end
	if var86 then
		local _ = UDim.new(0.5, 0)
	else
	end
	tbl_7.cornerRadius = UDim.new(0, 8)
	tbl_7.showFailedStateWhenLoadingFailed = true
	tbl_7.useShimmerAnimationWhileLoading = true
	tbl_7.ZIndex = 1
	module_2.Thumbnail = React_upvr.createElement(LoadableImage_upvr, tbl_7)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BorderSizePixel = 0;
	}, module_2)
end