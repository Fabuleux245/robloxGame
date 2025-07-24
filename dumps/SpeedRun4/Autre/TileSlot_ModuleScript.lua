-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:24
-- Luau version 6, Types version 3
-- Time taken: 0.011482 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Core = Parent_2.Core
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local Images = require(Parent.ImageSet.Images)
local tbl_upvr_2 = {
	[ControlState_upvr.Default] = "SecondaryDefault";
	[ControlState_upvr.Hover] = "SecondaryOnHover";
}
local tbl_8_upvr = {
	[ControlState_upvr.Default] = "SecondaryDefault";
	[ControlState_upvr.Hover] = "SecondaryDefault";
}
local tbl_6_upvr = {
	[ControlState_upvr.Default] = "TextDefault";
	[ControlState_upvr.Hover] = "TextEmphasis";
}
local tbl_3_upvr = {
	[ControlState_upvr.Default] = "TextEmphasis";
	[ControlState_upvr.Hover] = "TextEmphasis";
}
local tbl_10_upvr = {
	[ControlState_upvr.Default] = "BackgroundMuted";
}
local tbl_upvr = {
	[ControlState_upvr.Default] = "PlaceHolder";
}
local tbl_2_upvr = {
	[ControlState_upvr.Default] = "PlaceHolder";
}
local tbl_5_upvr = {
	[ControlState_upvr.Default] = "TextEmphasis";
}
local React_upvr = require(Parent_2.Parent.React)
local useStyle_upvr = require(Core.Style.useStyle)
local getContentStyle_upvr = require(Core.Button.getContentStyle)
local Interactable_upvr = require(Core.Control.Interactable)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local component_assets_circle_9_upvr = Images["component_assets/circle_9"]
local component_assets_circle_9_stroke_1_upvr = Images["component_assets/circle_9_stroke_1"]
local getIconSize_upvr = require(Parent.ImageSet.getIconSize)
local IconSize_upvr = require(Parent.ImageSet.Enum.IconSize)
local GenericTextLabel_upvr = require(Core.Text.GenericTextLabel.GenericTextLabel)
local ShimmerPanel_upvr = require(Parent_2.App.Loading.ShimmerPanel)
return function(arg1) -- Line 96, Named "TileSlot"
	--[[ Upvalues[20]:
		[1]: React_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: getContentStyle_upvr (readonly)
		[5]: tbl_8_upvr (readonly)
		[6]: tbl_upvr_2 (readonly)
		[7]: tbl_3_upvr (readonly)
		[8]: tbl_6_upvr (readonly)
		[9]: tbl_5_upvr (readonly)
		[10]: tbl_upvr (readonly)
		[11]: tbl_10_upvr (readonly)
		[12]: tbl_2_upvr (readonly)
		[13]: Interactable_upvr (readonly)
		[14]: ImageSetComponent_upvr (readonly)
		[15]: component_assets_circle_9_upvr (readonly)
		[16]: component_assets_circle_9_stroke_1_upvr (readonly)
		[17]: getIconSize_upvr (readonly)
		[18]: IconSize_upvr (readonly)
		[19]: GenericTextLabel_upvr (readonly)
		[20]: ShimmerPanel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(ControlState_upvr.Initialize)
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local var15_result1 = useStyle_upvr()
	local isDisabled = arg1.isDisabled
	local isLoading = arg1.isLoading
	local var36
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var36 = ControlState_upvr.Disabled
		return var36
	end
	if not isDisabled or not INLINED() then
		var36 = any_useState_result1
	end
	local isSelected = arg1.isSelected
	if not isSelected or not getContentStyle_upvr(tbl_8_upvr, var36, var15_result1) then
		local getContentStyle_upvr_result1_4 = getContentStyle_upvr(tbl_upvr_2, var36, var15_result1)
	end
	if not isSelected or not getContentStyle_upvr(tbl_3_upvr, var36, var15_result1) then
	end
	local getContentStyle_upvr_result1_3 = getContentStyle_upvr(tbl_5_upvr, var36, var15_result1)
	if not isSelected or not getContentStyle_upvr(tbl_upvr, var36, var15_result1) then
		local getContentStyle_upvr_result1_2 = getContentStyle_upvr(tbl_10_upvr, var36, var15_result1)
	end
	local getContentStyle_upvr_result1 = getContentStyle_upvr(tbl_2_upvr, var36, var15_result1)
	if arg1.thumbnail == nil then
	else
	end
	if arg1.displayText == nil then
		-- KONSTANTWARNING: GOTO [120] #98
	end
	local var42 = true
	local var43 = isDisabled or isLoading
	if var43 then
	end
	local module = {
		Size = UDim2.fromOffset(48, 48);
	}
	local position = arg1.position
	if not position then
		position = UDim2.fromScale(0, 0)
	end
	module.Position = position
	module.BackgroundTransparency = 1
	module.onStateChanged = React_upvr.useCallback(function(arg1_2, arg2) -- Line 104
		--[[ Upvalues[4]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
			[4]: arg1 (readonly)
		]]
		any_useState_result2_upvr(arg2)
		if arg2 == ControlState_upvr.Hover then
			any_useState_result2_upvr_2(true)
		else
			any_useState_result2_upvr_2(false)
		end
		if arg1.onStateChanged then
			arg1.onStateChanged(arg1_2, arg2)
		end
	end, {arg1.onStateChanged})
	if var43 or not React_upvr.useCallback(function() -- Line 100
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.onActivated(arg1.index)
	end, {arg1.onActivated, arg1.index}) then
	end
	module[React_upvr.Event.Activated] = nil
	local module_2 = {}
	local tbl_7 = {}
	local tbl = {
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		BackgroundTransparency = 1;
		Image = component_assets_circle_9_upvr;
	}
	if not var42 or not getContentStyle_upvr_result1_2.Color then
	end
	tbl.ImageColor3 = getContentStyle_upvr_result1.Color
	if not var42 or not getContentStyle_upvr_result1_2.Transparency then
	end
	tbl.ImageTransparency = getContentStyle_upvr_result1.Transparency
	tbl.ScaleType = Enum.ScaleType.Slice
	tbl.SliceCenter = Rect.new(4, 4, 5, 5)
	tbl.ZIndex = 1
	tbl_7.Background = React_upvr.createElement(ImageSetComponent_upvr.Label, tbl)
	if false then
		local _ = {
			Size = UDim2.fromScale(1, 1);
			Position = UDim2.fromScale(0, 0);
			BackgroundTransparency = 1;
			Image = component_assets_circle_9_stroke_1_upvr;
			ImageColor3 = getContentStyle_upvr_result1_4.Color;
			ImageTransparency = getContentStyle_upvr_result1_4.Transparency;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(4, 4, 5, 5);
			ZIndex = 2;
		}
		-- KONSTANTWARNING: GOTO [295] #221
	end
	tbl_7.Border = nil
	local var51
	local tbl_4 = {}
	var51 = 1
	tbl_4.Size = UDim2.fromScale(var51, 1)
	var51 = 0
	tbl_4.Position = UDim2.fromScale(var51, 0)
	tbl_4.BackgroundTransparency = 1
	tbl_4.ZIndex = 3
	local tbl_9 = {}
	if not isLoading and true then
		var51 = React_upvr.createElement
		var51 = var51(ImageSetComponent_upvr.Label, {
			Size = UDim2.fromOffset(getIconSize_upvr(IconSize_upvr.Medium), getIconSize_upvr(IconSize_upvr.Medium));
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Image = arg1.thumbnail;
			ImageColor3 = getContentStyle_upvr_result1_3.Color;
			ImageTransparency = getContentStyle_upvr_result1_3.Transparency;
			ZIndex = 3;
		})
	else
		var51 = nil
	end
	tbl_9.Thumbnail = var51
	if not isLoading and var42 then
		var51 = React_upvr.createElement
		var51 = var51(GenericTextLabel_upvr, {
			Size = UDim2.new(1, -24, 1, -24);
			BackgroundTransparency = 1;
			Text = arg1.displayText;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			fontStyle = var15_result1.Font.SubHeader1;
			colorStyle = getContentStyle_upvr(tbl_6_upvr, var36, var15_result1);
			ZIndex = 3;
		})
	else
		var51 = nil
	end
	tbl_9.Text = var51
	if isLoading then
		var51 = React_upvr.createElement
		var51 = var51(ShimmerPanel_upvr, {
			Size = UDim2.fromScale(1, 1);
		})
	else
		var51 = nil
	end
	tbl_9.LoadingShimmer = var51
	tbl_7.ButtonContentLayer = React_upvr.createElement("Frame", tbl_4, tbl_9)
	module_2.Button = React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}, tbl_7)
	return React_upvr.createElement(Interactable_upvr, module, module_2)
end