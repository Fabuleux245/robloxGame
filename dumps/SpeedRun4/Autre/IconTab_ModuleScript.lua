-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:20
-- Luau version 6, Types version 3
-- Time taken: 0.003654 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent.Parent
local Parent_3 = Parent_2.Parent
local ControlState_upvr = require(Parent_2.Core.Control.Enum.ControlState)
local Constants_upvr = require(script.Parent.Constants)
local tbl_2_upvr = {
	controlState = ControlState_upvr.Default;
	selected = false;
	padding = {
		left = Constants_upvr.ICON_TAB_ITEM_PADDING_LEFT;
		right = Constants_upvr.ICON_TAB_ITEM_PADDING_RIGHT;
	};
}
local Object_upvr = require(Parent_3.LuauPolyfill).Object
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
local getIconSize_upvr = require(Parent_2.App.ImageSet.getIconSize)
local IconSize_upvr = require(Parent_2.App.ImageSet.Enum.IconSize)
local HorizontalContainer_upvr = require(script.Parent.HorizontalContainer)
local React_upvr = require(Parent_3.React)
local Label_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent).Label
local Placement_upvr = require(Parent.Enum.Placement)
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
return function(arg1) -- Line 45, Named "IconTab"
	--[[ Upvalues[12]:
		[1]: Object_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: ControlState_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: getIconSize_upvr (readonly)
		[6]: IconSize_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: HorizontalContainer_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: Label_upvr (readonly)
		[11]: Placement_upvr (readonly)
		[12]: GenericTextLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 65 start (CF ANALYSIS FAILED)
	local any_assign_result1 = Object_upvr.assign({}, tbl_2_upvr, arg1)
	local item = any_assign_result1.item
	local var19
	if any_assign_result1.controlState ~= ControlState_upvr.SelectedPressed then
	else
	end
	local selected = any_assign_result1.selected
	local var9_result1 = useStyle_upvr()
	if selected then
		var19 = var9_result1.Tokens
		local _ = var19.Semantic.Color.Icon.Emphasis
	else
		var19 = var9_result1.Tokens
	end
	local getIconSize_upvr_result1 = getIconSize_upvr(IconSize_upvr.Medium, var9_result1)
	var19 = Constants_upvr
	var19 = Constants_upvr.ICON_TAB_PADDING * 2
	var19 = true
	if item.icon ~= nil then
		if item.iconComponent ~= nil then
			var19 = false
		else
			var19 = true
		end
	end
	assert(var19, "icon or iconComponent cannot be assigned at same time")
	var19 = item.icon
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var19 = item.iconComponent
		return var19 ~= nil
	end
	if var19 ~= nil or INLINED() then
		var19 = Constants_upvr
	else
	end
	var19 = HorizontalContainer_upvr
	local tbl = {
		size = UDim2.new(0, 0, 0, Constants_upvr.ICON_TAB_HEIGHT);
		automaticSize = Enum.AutomaticSize.X;
		roundedBackgroundSize = UDim2.new(1, -(Constants_upvr.ICON_TAB_PADDING * 2), 0, var19.ICON_TAB_HEIGHT - var19);
		roundedBackgroundPosition = UDim2.fromOffset(Constants_upvr.ICON_TAB_PADDING, Constants_upvr.ICON_TAB_PADDING);
		roundedBackgroundColor = var9_result1.Theme.Divider.Color;
		roundedBackgroundTransparency = Constants_upvr.ICON_TAB_SELECTED_TRANSPARENCY;
		spacing = 0;
		padding = any_assign_result1.padding;
	}
	if item.showRoundedBackground ~= nil then
		-- KONSTANTWARNING: GOTO [157] #103
	end
	tbl.showRoundedBackground = selected
	if item.showOverlay ~= nil then
	else
	end
	tbl.showOverlay = true
	if item.icon ~= nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({
			Size = UDim2.new(0, getIconSize_upvr_result1, 0, getIconSize_upvr_result1);
			LayoutOrder = 1;
			Image = item.icon;
			BackgroundTransparency = 1;
			ScaleType = Enum.ScaleType.Fit;
			ImageColor3 = var19.Semantic.Color.Icon.Default.Color3;
		}).ImageTransparency = var19.Semantic.Color.Icon.Default.Transparency
		-- KONSTANTWARNING: GOTO [258] #170
	end
	-- KONSTANTERROR: [0] 1. Error Block 65 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [212] 138. Error Block 53 start (CF ANALYSIS FAILED)
	if item.iconComponent ~= nil then
		local tbl_4 = {
			Size = UDim2.new(0, getIconSize_upvr_result1, 0, getIconSize_upvr_result1);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}
		local tbl_3 = {
			placement = Placement_upvr.Bottom;
			selected = selected;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3.pressed = true
		tbl_3.hovered = false
		-- KONSTANTWARNING: GOTO [258] #170
	end
	-- KONSTANTERROR: [212] 138. Error Block 53 end (CF ANALYSIS FAILED)
end