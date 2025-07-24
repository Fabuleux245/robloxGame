-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:20
-- Luau version 6, Types version 3
-- Time taken: 0.003852 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local React_upvr = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local function _(arg1) -- Line 34
	return arg1 + (1 - arg1) * 0.5
end
local function KeyLabelIcon_upvr(arg1, arg2) -- Line 38, Named "KeyLabelIcon"
	--[[ Upvalues[4]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Text_upvr (readonly)
	]]
	local useTokens_upvr_result1 = useTokens_upvr()
	local module_4 = {
		LayoutOrder = 1;
	}
	local tbl = {}
	local Color3_3 = useTokens_upvr_result1.Color.ActionStandard.Background.Color3
	tbl.Color3 = Color3_3
	if arg2 then
		local Transparency_3 = useTokens_upvr_result1.Color.ActionStandard.Background.Transparency
		Color3_3 = Transparency_3 + (1 - Transparency_3) * 0.5
	else
		Color3_3 = useTokens_upvr_result1.Color.ActionStandard.Background.Transparency
	end
	tbl.Transparency = Color3_3
	module_4.backgroundStyle = tbl
	module_4.tag = "size-1000-700 row align-x-center align-y-center radius-medium"
	local module = {}
	local tbl_6 = {}
	tbl_6.Text = arg1
	local tbl_3 = {}
	local Color3_2 = useTokens_upvr_result1.Color.ActionStandard.Foreground.Color3
	tbl_3.Color3 = Color3_2
	if arg2 then
		local Transparency_2 = useTokens_upvr_result1.Color.ActionStandard.Foreground.Transparency
		Color3_2 = Transparency_2 + (1 - Transparency_2) * 0.5
	else
		Color3_2 = useTokens_upvr_result1.Color.ActionStandard.Foreground.Transparency
	end
	tbl_3.Transparency = Color3_2
	tbl_6.textStyle = tbl_3
	tbl_6.tag = "text-title-small"
	module.HotkeyText = React_upvr.createElement(Text_upvr, tbl_6)
	return React_upvr.createElement(View_upvr, module_4, module)
end
local FIntRelocateMobileMenuButtonsVariant_upvr = require(RobloxGui.Modules.Settings.Flags.FIntRelocateMobileMenuButtonsVariant)
local Utility_upvr = require(RobloxGui.Modules.Settings.Utility)
local Responsive_upvr = require(CorePackages.Workspace.Packages.Responsive)
local Image_upvr = Foundation.Image
return React_upvr.memo(function(arg1) -- Line 72, Named "MenuButton"
	--[[ Upvalues[9]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: FIntRelocateMobileMenuButtonsVariant_upvr (readonly)
		[5]: Utility_upvr (readonly)
		[6]: Responsive_upvr (readonly)
		[7]: KeyLabelIcon_upvr (readonly)
		[8]: Image_upvr (readonly)
		[9]: Text_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
	local var5_result1 = useTokens_upvr()
	local var24
	if arg1.isEmphasized then
		var24 = var5_result1.Color.ActionSoftEmphasis.Background
	else
		var24 = var5_result1.Color.ActionStandard.Background
	end
	if arg1.isEmphasized then
		local Foreground = var5_result1.Color.ActionSoftEmphasis.Foreground
	else
	end
	local module_3 = {
		onActivated = arg1.onActivated;
		isDisabled = arg1.isDisabled;
		LayoutOrder = arg1.layoutOrder;
	}
	local tbl_4 = {}
	local Color3_4 = var24.Color3
	tbl_4.Color3 = Color3_4
	if arg1.isDisabled then
		local Transparency = var24.Transparency
		Color3_4 = Transparency + (1 - Transparency) * 0.5
	else
		Color3_4 = var24.Transparency
	end
	tbl_4.Transparency = Color3_4
	module_3.backgroundStyle = tbl_4
	module_3.tag = {
		["fill auto-x row align-y-center align-x-center gap-small radius-medium"] = true;
		["size-0-1200"] = not arg1.isSmall;
		["size-0-1000"] = arg1.isSmall;
		["bg-action-standard"] = not arg1.isEmphasized;
		["bg-action-soft-emphasis"] = arg1.isEmphasized;
	}
	local module_2 = {}
	if FIntRelocateMobileMenuButtonsVariant_upvr == 2 and Utility_upvr:IsSmallTouchScreen() then
		-- KONSTANTWARNING: GOTO [173] #108
	end
	-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [107] 67. Error Block 53 start (CF ANALYSIS FAILED)
	if arg1.lastInput == Responsive_upvr.Input.Pointer then
	elseif arg1.lastInput == Responsive_upvr.Input.Directional then
		local tbl_8 = {
			Image = arg1.gamepadButtonImageHint;
		}
		local tbl_2 = {}
		local Color3 = var5_result1.Color.ActionStandard.Foreground.Color3
		tbl_2.Color3 = Color3
		if arg1.isDisabled then
			Color3 = 0.5
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			Color3 = var5_result1.Color.ActionStandard.Foreground.Transparency
		end
		tbl_2.Transparency = Color3
		tbl_8.imageStyle = tbl_2
		tbl_8.tag = {
			["size-600"] = not arg1.isSmall;
			["size-500"] = arg1.isSmall;
		}
	else
	end
	module_2.Hint = nil
	local tbl_7 = {
		Text = arg1.text;
		LayoutOrder = 2;
	}
	local tbl_5 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_5.Color3 = var5_result1.Color.ActionStandard.Foreground.Color3
	if arg1.isDisabled then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	tbl_5.Transparency = var5_result1.Color.ActionStandard.Foreground.Transparency
	tbl_7.textStyle = tbl_5
	tbl_7.tag = {
		["auto-x"] = true;
		["text-title-medium"] = not arg1.isSmall;
		["text-title-small"] = arg1.isSmall;
		["content-action-standard"] = not arg1.isEmphasized;
		["content-action-soft-emphasis"] = arg1.isEmphasized;
	}
	module_2.ButtonText = React_upvr.createElement(Text_upvr, tbl_7)
	do
		return React_upvr.createElement(View_upvr, module_3, module_2)
	end
	-- KONSTANTERROR: [107] 67. Error Block 53 end (CF ANALYSIS FAILED)
end)