-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:23
-- Luau version 6, Types version 3
-- Time taken: 0.005126 seconds

local Parent = script.Parent.Parent.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent
local UIBloxConfig_upvr = require(Parent_3.UIBloxConfig)
local React_upvr = require(Parent_2.React)
local Foundation_upvr = require(Parent_2.Foundation)
local tbl_3_upvr = {
	iconLabelGap = 6;
	actionTextSpacingLeading = 12;
}
local tbl_2_upvr = {
	hasProgress = false;
	animationTriggerTime = 0.3;
	animationKeyHoldingTime = 1.5;
	animationCoolDownTime = 0.75;
}
local getIconSize_upvr = require(Parent.ImageSet.getIconSize)
local IconSize_upvr = require(Parent.ImageSet.Enum.IconSize)
local KeyLabel_upvr = require(Parent.Menu.KeyLabel.KeyLabel)
local ImageSetComponent_upvr = require(Parent_3.Core.ImageSet.ImageSetComponent)
local ProgressIconAnimated_upvr = require(script.Parent.ProgressIconAnimated)
local function renderIcon_upvr(arg1, arg2) -- Line 41, Named "renderIcon"
	--[[ Upvalues[8]:
		[1]: Foundation_upvr (readonly)
		[2]: UIBloxConfig_upvr (readonly)
		[3]: getIconSize_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: KeyLabel_upvr (readonly)
		[7]: ImageSetComponent_upvr (readonly)
		[8]: ProgressIconAnimated_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local itemProps = arg1.itemProps
	local Hooks = Foundation_upvr.Hooks
	local var24
	if UIBloxConfig_upvr.useTokenizedShortcutBar then
		Hooks = Hooks.useTokens().Size.Size_600
	else
		Hooks = getIconSize_upvr(IconSize_upvr.Medium)
	end
	local hasProgress = itemProps.hasProgress
	if hasProgress then
	end
	local icon = itemProps.icon
	if typeof(icon) ~= "EnumItem" then
		var24 = false
	else
		var24 = true
	end
	if typeof(icon) == "table" then
		if 0 >= #icon then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
	if var24 or true then
	end
	if var24 then
		local _ = {
			keyCode = icon;
			iconThemeKey = "IconEmphasis";
		}
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
			for i, v in icon do
				({
					Layout = React_upvr.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder;
						FillDirection = Enum.FillDirection.Horizontal;
						VerticalAlignment = Enum.VerticalAlignment.Center;
					});
				})["KeyLabel"..i] = React_upvr.createElement(KeyLabel_upvr, {
					keyCode = v;
					LayoutOrder = i;
					iconThemeKey = "IconEmphasis";
				})
				local _
			end
			local _ = {
				Size = UDim2.fromScale(0, 0);
				AutomaticSize = Enum.AutomaticSize.XY;
				BackgroundTransparency = 1;
			}
		else
		end
	end
	local module = {
		LayoutOrder = arg1.layoutOrder;
	}
	local var36 = Hooks
	module.Size = UDim2.fromOffset(var36, Hooks)
	module.AutomaticSize = Enum.AutomaticSize.X
	module.BorderSizePixel = 0
	module.BackgroundTransparency = 1
	local module_2 = {}
	if hasProgress then
		var36 = React_upvr.createElement(ProgressIconAnimated_upvr, itemProps)
	else
		var36 = nil
	end
	module_2.ProgressIcon = var36
	if hasProgress then
	else
	end
	module_2.Image = React_upvr.createElement(ImageSetComponent_upvr.Label, {
		Size = UDim2.fromScale(1, 1);
		Image = icon;
		ImageColor3 = arg2.Theme.TextEmphasis.Color;
		ImageTransparency = arg2.Theme.TextEmphasis.Transparency;
		BackgroundTransparency = 1;
	})
	return React_upvr.createElement("Frame", module, module_2)
end
local Object_upvr = require(Parent_2.LuauPolyfill).Object
local useStyle_upvr = require(Parent_3.Core.Style.useStyle)
local GenericTextLabel_upvr = require(Parent_3.Core.Text.GenericTextLabel.GenericTextLabel)
return function(arg1) -- Line 117, Named "Shortcut"
	--[[ Upvalues[9]:
		[1]: Object_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: Foundation_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: GenericTextLabel_upvr (readonly)
		[8]: renderIcon_upvr (readonly)
		[9]: UIBloxConfig_upvr (readonly)
	]]
	local any_assign_result1_2 = Object_upvr.assign({}, tbl_3_upvr, arg1)
	local any_assign_result1 = Object_upvr.assign({}, tbl_2_upvr, any_assign_result1_2.publicProps)
	local var39_result1 = useStyle_upvr()
	local module_3 = {}
	local any_createElement_result1 = React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		Padding = UDim.new(0, any_assign_result1_2.iconLabelGap);
	})
	module_3.UIListLayout = any_createElement_result1
	local var48
	if any_assign_result1.actionText then
		any_createElement_result1 = React_upvr.createElement
		local tbl = {}
		var48 = 1
		tbl.LayoutOrder = var48
		var48 = UDim2.fromOffset(0, 0)
		tbl.Size = var48
		var48 = 0
		tbl.BorderSizePixel = var48
		var48 = 1
		tbl.BackgroundTransparency = var48
		var48 = Enum.AutomaticSize.XY
		tbl.AutomaticSize = var48
		var48 = {}
		var48.Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, any_assign_result1_2.actionTextSpacingLeading);
		})
		var48.Label = React_upvr.createElement(GenericTextLabel_upvr, {
			Size = UDim2.fromOffset(0, 0);
			AutomaticSize = Enum.AutomaticSize.XY;
			Text = any_assign_result1.actionText;
			colorStyle = var39_result1.Theme.TextEmphasis;
			fontStyle = var39_result1.Font.SubHeader1;
			BackgroundTransparency = 1;
		})
		any_createElement_result1 = any_createElement_result1("Frame", tbl, var48)
	else
		any_createElement_result1 = nil
	end
	module_3.ActionText = any_createElement_result1
	module_3.Icon = renderIcon_upvr({
		layoutOrder = 2;
		itemProps = any_assign_result1;
	}, var39_result1)
	local tbl_4 = {}
	var48 = 3
	tbl_4.LayoutOrder = var48
	var48 = UDim2.fromOffset(0, 0)
	tbl_4.Size = var48
	var48 = Enum.AutomaticSize.XY
	tbl_4.AutomaticSize = var48
	var48 = any_assign_result1.text
	tbl_4.Text = var48
	if UIBloxConfig_upvr.useTokenizedShortcutBar then
		var48 = Foundation_upvr.Hooks.useTokens().FontSize.FontSize_50
	else
		var48 = nil
	end
	tbl_4.TextSize = var48
	var48 = var39_result1.Theme.TextEmphasis
	tbl_4.colorStyle = var48
	var48 = var39_result1.Font.SubHeader1
	tbl_4.fontStyle = var48
	var48 = 1
	tbl_4.BackgroundTransparency = var48
	module_3.LabelText = React_upvr.createElement(GenericTextLabel_upvr, tbl_4)
	return React_upvr.createElement("Frame", {
		LayoutOrder = any_assign_result1_2.index;
		Size = UDim2.fromOffset(0, 0);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
	}, module_3)
end