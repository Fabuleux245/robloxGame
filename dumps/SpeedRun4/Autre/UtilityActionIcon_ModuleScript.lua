-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:04
-- Luau version 6, Types version 3
-- Time taken: 0.007088 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local tbl_6_upvr = {
	badgeVariant = require(Parent_2.App.Indicator.Enum.BadgeVariant).Alert;
	tooltipTarget = game:GetService("CoreGui");
	disableOutset = false;
	onMedia = false;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
local withHoverTooltip_upvr = require(Parent_2.App.Dialog.TooltipV2.Controllers).withHoverTooltip
local TooltipOrientation_upvr = require(Parent_2.App.Dialog.Tooltip.Enum.TooltipOrientation)
local StateLayer_upvr = require(Parent_2.Core.Control.StateLayer)
local Label_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent).Label
local Badge_upvr = require(Parent_2.App.Indicator.Badge)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 56, Named "UtilityActionIcon"
	--[[ Upvalues[9]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: withHoverTooltip_upvr (readonly)
		[6]: TooltipOrientation_upvr (readonly)
		[7]: StateLayer_upvr (readonly)
		[8]: Label_upvr (readonly)
		[9]: Badge_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_6_upvr, arg1)
	local tooltipText = any_join_result1_upvr.tooltipText
	local disableOutset_upvr = any_join_result1_upvr.disableOutset
	local onMedia_upvr = any_join_result1_upvr.onMedia
	local Tokens_upvr = useStyle_upvr().Tokens
	local Size_500_upvr = Tokens_upvr.Global.Size_500
	local var18_upvr
	if onMedia_upvr then
		var18_upvr = Tokens_upvr.Global.Color.White
	else
		var18_upvr = Tokens_upvr.Semantic.Color.Icon.Emphasis
	end
	if any_join_result1_upvr.iconColor then
	else
	end
	if onMedia_upvr then
	else
	end
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 82
		--[[ Upvalues[2]:
			[1]: disableOutset_upvr (readonly)
			[2]: Tokens_upvr (readonly)
		]]
		if disableOutset_upvr then
			return nil
		end
		return {
			top = UDim.new(0, Tokens_upvr.Global.Size_50);
			right = UDim.new(0, Tokens_upvr.Global.Size_50);
			bottom = UDim.new(0, Tokens_upvr.Global.Size_50);
			left = UDim.new(0, Tokens_upvr.Global.Size_50);
		}
	end, {disableOutset_upvr, Tokens_upvr})
	local module = {}
	if tooltipText then
	else
	end
	module.disabled = true
	module.preferredOrientation = TooltipOrientation_upvr.Bottom
	module.guiTarget = any_join_result1_upvr.tooltipTarget
	module.DEBUG_useTargetDirectly = any_join_result1_upvr._DEBUG_is_plugin
	module.DisplayOrder = 10
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 93
		--[[ Upvalues[2]:
			[1]: Size_500_upvr (readonly)
			[2]: any_useMemo_result1_upvr_2 (readonly)
		]]
		local udim = UDim.new(0, Size_500_upvr)
		if any_useMemo_result1_upvr_2 then
			return UDim2.new(udim + any_useMemo_result1_upvr_2.left + any_useMemo_result1_upvr_2.right, udim + any_useMemo_result1_upvr_2.top + any_useMemo_result1_upvr_2.bottom)
		end
		return UDim2.new(udim, udim)
	end, {Size_500_upvr, any_useMemo_result1_upvr_2})
	local anchorPoint_upvr = any_join_result1_upvr.anchorPoint
	local position_upvr = any_join_result1_upvr.position
	local layoutOrder_upvr = any_join_result1_upvr.layoutOrder
	local var33_upvr = "Standard"
	local onActivated_upvr = any_join_result1_upvr.onActivated
	local Medium_upvr = Tokens_upvr.Semantic.Icon.Size.Medium
	local icon_upvr = any_join_result1_upvr.icon
	local badgeValue_upvr = any_join_result1_upvr.badgeValue
	local udim2_upvr = UDim2.new(0.5, Tokens_upvr.Global.Size_25, 0.5, -Tokens_upvr.Global.Size_25)
	local vector2_upvr = Vector2.new(0, 1)
	local badgeVariant_upvr = any_join_result1_upvr.badgeVariant
	return withHoverTooltip_upvr({
		bodyText = tooltipText;
	}, module, function(arg1_2, arg2_2) -- Line 108
		--[[ Upvalues[23]:
			[1]: React_upvr (copied, readonly)
			[2]: any_useMemo_result1_upvr (readonly)
			[3]: anchorPoint_upvr (readonly)
			[4]: position_upvr (readonly)
			[5]: layoutOrder_upvr (readonly)
			[6]: arg2 (readonly)
			[7]: onMedia_upvr (readonly)
			[8]: Size_500_upvr (readonly)
			[9]: Tokens_upvr (readonly)
			[10]: StateLayer_upvr (copied, readonly)
			[11]: var33_upvr (readonly)
			[12]: any_useMemo_result1_upvr_2 (readonly)
			[13]: onActivated_upvr (readonly)
			[14]: Label_upvr (copied, readonly)
			[15]: Medium_upvr (readonly)
			[16]: icon_upvr (readonly)
			[17]: var18_upvr (readonly)
			[18]: badgeValue_upvr (readonly)
			[19]: Badge_upvr (copied, readonly)
			[20]: udim2_upvr (readonly)
			[21]: vector2_upvr (readonly)
			[22]: badgeVariant_upvr (readonly)
			[23]: any_join_result1_upvr (readonly)
		]]
		local module_3 = {
			Selectable = false;
			Size = any_useMemo_result1_upvr;
			AnchorPoint = anchorPoint_upvr;
			Position = position_upvr;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			LayoutOrder = layoutOrder_upvr;
		}
		module_3[React_upvr.Change.AbsoluteSize] = arg1_2
		local Change = React_upvr.Change
		module_3[Change.AbsolutePosition] = arg1_2
		module_3.ref = arg2
		local module_2 = {}
		local var44
		if onMedia_upvr then
			Change = React_upvr.createElement
			local tbl_2 = {
				Selectable = false;
			}
			var44 = Size_500_upvr
			tbl_2.Size = UDim2.fromOffset(var44, Size_500_upvr)
			var44 = 0.5
			tbl_2.AnchorPoint = Vector2.new(var44, 0.5)
			var44 = 0.5
			tbl_2.Position = UDim2.fromScale(var44, 0.5)
			tbl_2.BorderSizePixel = 0
			var44 = Tokens_upvr.Global.Color.Black
			tbl_2.BackgroundColor3 = var44.Color3
			tbl_2.BackgroundTransparency = 0.5
			tbl_2.ZIndex = 1
			local tbl_5 = {}
			var44 = React_upvr.createElement
			var44 = var44("UICorner", {
				CornerRadius = UDim.new(0, Tokens_upvr.Semantic.Radius.Circle);
			})
			tbl_5.UICorner = var44
			Change = Change("Frame", tbl_2, tbl_5)
		else
			Change = nil
		end
		module_2.Background = Change
		local tbl_4 = {}
		var44 = Size_500_upvr
		tbl_4.size = UDim2.fromOffset(var44, Size_500_upvr)
		var44 = 0.5
		tbl_4.anchorPoint = Vector2.new(var44, 0.5)
		var44 = 0.5
		tbl_4.position = UDim2.fromScale(var44, 0.5)
		var44 = 0
		tbl_4.cornerRadius = UDim.new(var44, Tokens_upvr.Semantic.Radius.Circle)
		tbl_4.zIndex = 2
		tbl_4.stateStyle = var33_upvr
		tbl_4.outset = any_useMemo_result1_upvr_2
		tbl_4.onStateChanged = arg2_2
		tbl_4.onActivated = onActivated_upvr
		module_2.StateLayer = React_upvr.createElement(StateLayer_upvr, tbl_4)
		local tbl_3 = {
			Selectable = false;
		}
		var44 = Medium_upvr
		tbl_3.Size = UDim2.fromOffset(var44, Medium_upvr)
		var44 = 0.5
		tbl_3.AnchorPoint = Vector2.new(var44, 0.5)
		var44 = 0.5
		tbl_3.Position = UDim2.fromScale(var44, 0.5)
		tbl_3.Image = icon_upvr
		var44 = var18_upvr
		tbl_3.ImageColor3 = var44.Color3
		var44 = var18_upvr
		tbl_3.ImageTransparency = var44.Transparency
		tbl_3.BackgroundTransparency = 1
		tbl_3.ZIndex = 3
		local tbl = {}
		var44 = React_upvr.createElement
		var44 = var44("UICorner", {
			CornerRadius = UDim.new(0, Tokens_upvr.Semantic.Radius.Circle);
		})
		tbl.UICorner = var44
		if badgeValue_upvr then
			var44 = React_upvr.createElement
			var44 = var44(Badge_upvr, {
				position = udim2_upvr;
				anchorPoint = vector2_upvr;
				value = badgeValue_upvr;
				badgeVariant = badgeVariant_upvr;
			})
		else
			var44 = nil
		end
		tbl.Badge = var44
		var44 = any_join_result1_upvr.children
		module_2.Icon = React_upvr.createElement(Label_upvr, tbl_3, tbl, var44)
		return React_upvr.createElement("Frame", module_3, module_2)
	end)
end)