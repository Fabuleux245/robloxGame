-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:18
-- Luau version 6, Types version 3
-- Time taken: 0.010698 seconds

local Parent = script.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Interactable_upvr = UIBlox.Core.Control.Interactable
local RobloxTranslator = require(Parent.RobloxTranslator)
local Flags = require(script.Parent.Flags)
local any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr = Flags.GetFFlagEnableAdGuiDropdownScaling()
local var10_upvw
if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr then
	var10_upvw = Flags.GetAdGuiInteractivityPixelsPerStud() / 50
end
local function _(arg1) -- Line 25, Named "applyScalingUDim"
	--[[ Upvalues[2]:
		[1]: any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr (readonly)
		[2]: var10_upvw (read and write)
	]]
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		return UDim.new(arg1.Scale, arg1.Offset * var10_upvw)
	end
	return arg1
end
local function _(arg1) -- Line 33, Named "applyScalingUDim2"
	--[[ Upvalues[2]:
		[1]: any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr (readonly)
		[2]: var10_upvw (read and write)
	]]
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		return UDim2.new(arg1.X.Scale, arg1.X.Offset * var10_upvw, arg1.Y.Scale, arg1.Y.Offset * var10_upvw)
	end
	return arg1
end
local function _(arg1) -- Line 41, Named "applyScalingNumber"
	--[[ Upvalues[2]:
		[1]: any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr (readonly)
		[2]: var10_upvw (read and write)
	]]
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		return arg1 * var10_upvw
	end
	return arg1
end
local icons_actions_info_upvr = Images["icons/actions/info"]
local any_FormatByKey_result1_upvr_2 = RobloxTranslator:FormatByKey("CoreScripts.Ads.Label.WhyThisAd")
local function WhyThisAdRow_upvr(arg1) -- Line 58, Named "WhyThisAdRow"
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: Interactable_upvr (readonly)
		[3]: any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr (readonly)
		[4]: var10_upvw (read and write)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: icons_actions_info_upvr (readonly)
		[7]: any_FormatByKey_result1_upvr_2 (readonly)
	]]
	local module_2 = {
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
		[Roact_upvr.Event.Activated] = arg1.onWhyThisAdActivated;
	}
	local function onStateChanged() -- Line 63
	end
	module_2.onStateChanged = onStateChanged
	local module = {}
	local tbl_6 = {}
	local udim_3 = UDim.new(0, 10)
	local var17
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var17 = UDim.new(udim_3.Scale, udim_3.Offset * var10_upvw)
	else
		var17 = udim_3
	end
	tbl_6.CornerRadius = var17
	module.UICorner = Roact_upvr.createElement("UICorner", tbl_6)
	local tbl_11 = {}
	local udim_10 = UDim.new(0, 16)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var17 = UDim.new(udim_10.Scale, udim_10.Offset * var10_upvw)
	else
		var17 = udim_10
	end
	tbl_11.PaddingTop = var17
	local udim_13 = UDim.new(0, 8)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var17 = UDim.new(udim_13.Scale, udim_13.Offset * var10_upvw)
	else
		var17 = udim_13
	end
	tbl_11.PaddingBottom = var17
	local udim_11 = UDim.new(0, 16)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var17 = UDim.new(udim_11.Scale, udim_11.Offset * var10_upvw)
	else
		var17 = udim_11
	end
	tbl_11.PaddingLeft = var17
	local udim_6 = UDim.new(0, 48)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var17 = UDim.new(udim_6.Scale, udim_6.Offset * var10_upvw)
	else
		var17 = udim_6
	end
	tbl_11.PaddingRight = var17
	module.UIPadding = Roact_upvr.createElement("UIPadding", tbl_11)
	local tbl_9 = {}
	var17 = Enum.FillDirection.Horizontal
	tbl_9.FillDirection = var17
	var17 = Enum.HorizontalAlignment.Left
	tbl_9.HorizontalAlignment = var17
	var17 = Enum.VerticalAlignment.Center
	tbl_9.VerticalAlignment = var17
	local udim_12 = UDim.new(0, 16)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var17 = UDim.new(udim_12.Scale, udim_12.Offset * var10_upvw)
	else
		var17 = udim_12
	end
	tbl_9.Padding = var17
	module.UIListLayout = Roact_upvr.createElement("UIListLayout", tbl_9)
	local tbl_10 = {}
	var17 = icons_actions_info_upvr
	tbl_10.Image = var17
	local udim2_3 = UDim2.fromOffset(24, 24)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var17 = UDim2.new(udim2_3.X.Scale, udim2_3.X.Offset * var10_upvw, udim2_3.Y.Scale, udim2_3.Y.Offset * var10_upvw)
	else
		var17 = udim2_3
	end
	tbl_10.Size = var17
	var17 = 1
	tbl_10.BackgroundTransparency = var17
	module.Icon = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_10)
	local tbl_4 = {}
	var17 = any_FormatByKey_result1_upvr_2
	tbl_4.Text = var17
	var17 = Color3.new(1, 1, 1)
	tbl_4.TextColor3 = var17
	var17 = 1
	tbl_4.BackgroundTransparency = var17
	var17 = Enum.Font.GothamMedium
	tbl_4.Font = var17
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var17 = 24 * var10_upvw
	else
		var17 = 24
	end
	tbl_4.TextSize = var17
	var17 = false
	tbl_4.TextScaled = var17
	var17 = true
	tbl_4.TextWrapped = var17
	var17 = Enum.AutomaticSize.XY
	tbl_4.AutomaticSize = var17
	module.TextLabel = Roact_upvr.createElement("TextLabel", tbl_4)
	return Roact_upvr.createElement(Interactable_upvr, module_2, module)
end
local icons_actions_feedback_upvr = Images["icons/actions/feedback"]
local any_FormatByKey_result1_upvr = RobloxTranslator:FormatByKey("CoreScripts.Ads.Label.ReportAd")
local function ReportAdRow_upvr(arg1) -- Line 98, Named "ReportAdRow"
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: Interactable_upvr (readonly)
		[3]: any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr (readonly)
		[4]: var10_upvw (read and write)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: icons_actions_feedback_upvr (readonly)
		[7]: any_FormatByKey_result1_upvr (readonly)
	]]
	local module_3 = {}
	local tbl_12 = {}
	local udim = UDim.new(0, 10)
	local var34
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var34 = UDim.new(udim.Scale, udim.Offset * var10_upvw)
	else
		var34 = udim
	end
	tbl_12.CornerRadius = var34
	module_3.UICorner = Roact_upvr.createElement("UICorner", tbl_12)
	local tbl_3 = {}
	local udim_7 = UDim.new(0, 8)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var34 = UDim.new(udim_7.Scale, udim_7.Offset * var10_upvw)
	else
		var34 = udim_7
	end
	tbl_3.PaddingTop = var34
	local udim_5 = UDim.new(0, 16)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var34 = UDim.new(udim_5.Scale, udim_5.Offset * var10_upvw)
	else
		var34 = udim_5
	end
	tbl_3.PaddingBottom = var34
	local udim_9 = UDim.new(0, 16)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var34 = UDim.new(udim_9.Scale, udim_9.Offset * var10_upvw)
	else
		var34 = udim_9
	end
	tbl_3.PaddingLeft = var34
	local udim_8 = UDim.new(0, 48)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var34 = UDim.new(udim_8.Scale, udim_8.Offset * var10_upvw)
	else
		var34 = udim_8
	end
	tbl_3.PaddingRight = var34
	module_3.UIPadding = Roact_upvr.createElement("UIPadding", tbl_3)
	local tbl_8 = {}
	var34 = Enum.FillDirection.Horizontal
	tbl_8.FillDirection = var34
	var34 = Enum.HorizontalAlignment.Left
	tbl_8.HorizontalAlignment = var34
	var34 = Enum.VerticalAlignment.Center
	tbl_8.VerticalAlignment = var34
	local udim_2 = UDim.new(0, 16)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var34 = UDim.new(udim_2.Scale, udim_2.Offset * var10_upvw)
	else
		var34 = udim_2
	end
	tbl_8.Padding = var34
	module_3.UIListLayout = Roact_upvr.createElement("UIListLayout", tbl_8)
	local tbl_2 = {}
	var34 = icons_actions_feedback_upvr
	tbl_2.Image = var34
	local udim2 = UDim2.fromOffset(24, 24)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var34 = UDim2.new(udim2.X.Scale, udim2.X.Offset * var10_upvw, udim2.Y.Scale, udim2.Y.Offset * var10_upvw)
	else
		var34 = udim2
	end
	tbl_2.Size = var34
	var34 = 1
	tbl_2.BackgroundTransparency = var34
	module_3.Icon = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_2)
	local tbl_5 = {}
	var34 = any_FormatByKey_result1_upvr
	tbl_5.Text = var34
	var34 = Color3.new(1, 1, 1)
	tbl_5.TextColor3 = var34
	var34 = 1
	tbl_5.BackgroundTransparency = var34
	var34 = Enum.Font.GothamMedium
	tbl_5.Font = var34
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var34 = 24 * var10_upvw
	else
		var34 = 24
	end
	tbl_5.TextSize = var34
	var34 = false
	tbl_5.TextScaled = var34
	var34 = true
	tbl_5.TextWrapped = var34
	var34 = Enum.AutomaticSize.XY
	tbl_5.AutomaticSize = var34
	module_3.TextLabel = Roact_upvr.createElement("TextLabel", tbl_5)
	return Roact_upvr.createElement(Interactable_upvr, {
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
		[Roact_upvr.Event.Activated] = arg1.onReportAdActivated;
		onStateChanged = function() -- Line 103, Named "onStateChanged"
		end;
	}, module_3)
end
local any_GetEnablePlatformUiUnificationFixes_result1_upvr = Flags.GetEnablePlatformUiUnificationFixes()
function AdDropdownMenu(arg1) -- Line 138
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: any_GetEnablePlatformUiUnificationFixes_result1_upvr (readonly)
		[3]: any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr (readonly)
		[4]: var10_upvw (read and write)
		[5]: WhyThisAdRow_upvr (readonly)
		[6]: ReportAdRow_upvr (readonly)
	]]
	local module_4 = {}
	local showDropDownMenu = arg1.showDropDownMenu
	module_4.Visible = showDropDownMenu
	if any_GetEnablePlatformUiUnificationFixes_result1_upvr then
		showDropDownMenu = arg1.Position
		if not showDropDownMenu then
			showDropDownMenu = UDim2.new(0.5, 0, 0.5, 0)
			-- KONSTANTWARNING: GOTO [29] #24
		end
	else
		showDropDownMenu = UDim2.new(0.5, 0, 0.5, 0)
	end
	module_4.Position = showDropDownMenu
	showDropDownMenu = Color3.new(0, 0, 0)
	module_4.BackgroundColor3 = showDropDownMenu
	showDropDownMenu = arg1.transparency
	module_4.BackgroundTransparency = showDropDownMenu
	if any_GetEnablePlatformUiUnificationFixes_result1_upvr then
		showDropDownMenu = arg1.AnchorPoint
		if not showDropDownMenu then
			showDropDownMenu = Vector2.new(0.5, 0.5)
			-- KONSTANTWARNING: GOTO [59] #46
		end
	else
		showDropDownMenu = Vector2.new(0.5, 0.5)
	end
	module_4.AnchorPoint = showDropDownMenu
	local udim2_2 = UDim2.new(0.24, 0, 0.12, 0)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		showDropDownMenu = UDim2.new(udim2_2.X.Scale, udim2_2.X.Offset * var10_upvw, udim2_2.Y.Scale, udim2_2.Y.Offset * var10_upvw)
	else
		showDropDownMenu = udim2_2
	end
	module_4.Size = showDropDownMenu
	local var49
	showDropDownMenu = Enum.AutomaticSize.XY
	module_4.AutomaticSize = showDropDownMenu
	showDropDownMenu = {}
	local tbl = {}
	local udim_4 = UDim.new(0, 10)
	if any_GetFFlagEnableAdGuiDropdownScaling_result1_upvr and var10_upvw then
		var49 = UDim.new(udim_4.Scale, udim_4.Offset * var10_upvw)
	else
		var49 = udim_4
	end
	tbl.CornerRadius = var49
	showDropDownMenu.UICorner = Roact_upvr.createElement("UICorner", tbl)
	local tbl_7 = {}
	var49 = Enum.FillDirection.Vertical
	tbl_7.FillDirection = var49
	var49 = Enum.HorizontalAlignment.Left
	tbl_7.HorizontalAlignment = var49
	var49 = Enum.VerticalAlignment.Center
	tbl_7.VerticalAlignment = var49
	showDropDownMenu.UIListLayout = Roact_upvr.createElement("UIListLayout", tbl_7)
	showDropDownMenu[1] = WhyThisAdRow_upvr(arg1)
	showDropDownMenu[2] = ReportAdRow_upvr(arg1)
	return Roact_upvr.createElement("Frame", module_4, showDropDownMenu)
end
return AdDropdownMenu