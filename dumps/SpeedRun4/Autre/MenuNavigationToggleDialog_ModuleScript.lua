-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:29
-- Luau version 6, Types version 3
-- Time taken: 0.006190 seconds

local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTiltIconUnibarFocusNav_upvr = SharedFlags.FFlagTiltIconUnibarFocusNav
local Parent = script.Parent.Parent.Parent.Parent
local Chrome = Parent.Parent.Chrome
local var7_upvr = require(Chrome.Enabled)()
local var8_upvr
if not SharedFlags.FFlagChromeEnabledRequireGamepadConnectorFix or var7_upvr then
	var8_upvr = require(Parent.Components.GamepadConnector)
else
	var8_upvr = nil
	local var9_upvr
end
if not FFlagTiltIconUnibarFocusNav_upvr and var7_upvr then
	var9_upvr = require(Chrome.Service)
else
	var9_upvr = nil
end
local useDesignTokens_upvr = require(CorePackages.Workspace.Packages.Style).useDesignTokens
local FFlagLocalizeMenuNavigationToggleDialog_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.TopBar.Flags.FFlagLocalizeMenuNavigationToggleDialog)
local UserInputService_upvr = game:GetService("UserInputService")
local React_upvr = require(CorePackages.Packages.React)
local LocalizationService_upvr = game:GetService("LocalizationService")
local useExternalEvent_upvr = require(CorePackages.Packages.UIBlox).Core.Hooks.useExternalEvent
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local GetTextSize_upvr = require(CorePackages.Workspace.Packages.Style).GetTextSize
local FFlagHideTopBarConsole_upvr = SharedFlags.FFlagHideTopBarConsole
local useObservableValue_upvr = require(Chrome.ChromeShared.Hooks.useObservableValue)
local any_GetFFlagConnectGamepadChrome_result1_upvr = SharedFlags.GetFFlagConnectGamepadChrome()
return function(arg1) -- Line 43, Named "MenuNavigationToggleDialog"
	--[[ Upvalues[15]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: FFlagLocalizeMenuNavigationToggleDialog_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: LocalizationService_upvr (readonly)
		[6]: useExternalEvent_upvr (readonly)
		[7]: Localization_upvr (readonly)
		[8]: GetTextSize_upvr (readonly)
		[9]: var7_upvr (readonly)
		[10]: FFlagTiltIconUnibarFocusNav_upvr (readonly)
		[11]: FFlagHideTopBarConsole_upvr (readonly)
		[12]: useObservableValue_upvr (readonly)
		[13]: var8_upvr (readonly)
		[14]: any_GetFFlagConnectGamepadChrome_result1_upvr (readonly)
		[15]: var9_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10_result1 = useDesignTokens_upvr()
	local CaptionHeader_upvr = var10_result1.Semantic.Typography.CaptionHeader
	local Space_200 = var10_result1.Global.Space_200
	local Space_75 = var10_result1.Global.Space_75
	local Size_300 = var10_result1.Global.Size_300
	local Contrast = var10_result1.Semantic.Color.BackgroundUi.Contrast
	local Color3 = var10_result1.Semantic.Color.Text.Emphasis.Color3
	local var28_upvw
	if FFlagLocalizeMenuNavigationToggleDialog_upvr and game:GetEngineFeature("GetImageForKeyCode") then
		var28_upvw = Enum.KeyCode.ButtonSelect
	else
	end
	local var29_upvw
	var28_upvw = nil
	if FFlagLocalizeMenuNavigationToggleDialog_upvr then
		local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(LocalizationService_upvr.RobloxLocaleId)
		useExternalEvent_upvr(LocalizationService_upvr:GetPropertyChangedSignal("RobloxLocaleId"), function() -- Line 62
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: LocalizationService_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(LocalizationService_upvr.RobloxLocaleId)
		end)
		local any_useMemo_result1, any_useMemo_result2 = React_upvr.useMemo(function() -- Line 72
			--[[ Upvalues[2]:
				[1]: Localization_upvr (copied, readonly)
				[2]: any_useState_result1_upvr (readonly)
			]]
			local any_new_result1 = Localization_upvr.new(any_useState_result1_upvr)
			local pcall_result1, pcall_result2 = pcall(any_new_result1.Format, any_new_result1, "CoreScripts.InGameMenu.VirtualCursorHintPreIcon")
			local var37 = any_new_result1
			local pcall_result1_2, pcall_result2_2 = pcall(any_new_result1.Format, var37, "CoreScripts.InGameMenu.VirtualCursorHintPostIcon")
			if pcall_result1 then
				var37 = pcall_result2
			else
				var37 = "Some experiences require pressing"
			end
			if pcall_result1_2 then
				return var37, pcall_result2_2
			end
			return var37, "to toggle menu navigation"
		end, {any_useState_result1_upvr})
		var29_upvw = any_useMemo_result1
		var28_upvw = any_useMemo_result2
	else
		any_useState_result1_upvr = {}
		local var43 = any_useState_result1_upvr
		any_useState_result2_upvr = "Some experiences require pressing "
		var43.VirtualCursorHintPreIcon = any_useState_result2_upvr
		any_useState_result2_upvr = " to toggle menu navigation"
		var43.VirtualCursorHintPostIcon = any_useState_result2_upvr
		var29_upvw = var43.VirtualCursorHintPreIcon
		var28_upvw = var43.VirtualCursorHintPostIcon
	end
	any_useState_result2_upvr = React_upvr
	var43 = any_useState_result2_upvr.useMemo
	function any_useState_result2_upvr() -- Line 96
		--[[ Upvalues[4]:
			[1]: GetTextSize_upvr (copied, readonly)
			[2]: var29_upvw (read and write)
			[3]: CaptionHeader_upvr (readonly)
			[4]: var28_upvw (read and write)
		]]
		return GetTextSize_upvr(var29_upvw, CaptionHeader_upvr.FontSize, CaptionHeader_upvr.Font, Vector2.new(math.huge, math.huge)), GetTextSize_upvr(var28_upvw, CaptionHeader_upvr.FontSize, CaptionHeader_upvr.Font, Vector2.new(math.huge, math.huge))
	end
	local tbl_2 = {CaptionHeader_upvr.FontSize, CaptionHeader_upvr.Font, var29_upvw, var28_upvw}
	var43 = var43(any_useState_result2_upvr, tbl_2)
	local var43_result1, var43_result2 = var43(any_useState_result2_upvr, tbl_2)
	if var7_upvr then
		if FFlagTiltIconUnibarFocusNav_upvr then
			if FFlagHideTopBarConsole_upvr then
			else
			end
		elseif any_GetFFlagConnectGamepadChrome_result1_upvr then
			-- KONSTANTWARNING: GOTO [166] #121
		end
	else
	end
	local var48
	local module = {}
	var48 = Contrast.Color3
	module.BackgroundColor3 = var48
	var48 = Contrast.Transparency
	module.BackgroundTransparency = var48
	var48 = Enum.AutomaticSize.XY
	module.AutomaticSize = var48
	var48 = Vector2.new(0.5, 0.5)
	module.AnchorPoint = var48
	var48 = arg1.Position
	module.Position = var48
	if var7_upvr and FFlagTiltIconUnibarFocusNav_upvr then
		if nil == nil then
			var48 = false
		else
			var48 = true
		end
	elseif var7_upvr and any_GetFFlagConnectGamepadChrome_result1_upvr then
		var48 = nil
	else
		var48 = true
	end
	module.Visible = var48
	var48 = {}
	var48.Corner = React_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, var10_result1.Semantic.Radius.Medium);
	})
	local tbl = {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	}
	if FFlagLocalizeMenuNavigationToggleDialog_upvr then
	else
	end
	tbl.Padding = nil
	var48.Layout = React_upvr.createElement("UIListLayout", tbl)
	var48.LeftText = React_upvr.createElement("TextLabel", {
		Size = UDim2.fromOffset(var43_result1.X, var43_result1.Y);
		Text = var29_upvw;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
		TextColor3 = Color3;
		Font = CaptionHeader_upvr.Font;
		TextSize = CaptionHeader_upvr.FontSize;
		TextWrapped = false;
		BackgroundTransparency = 1;
		LayoutOrder = 0;
	})
	var48.Icon = React_upvr.createElement("ImageLabel", {
		Size = UDim2.fromOffset(Size_300, Size_300);
		BackgroundTransparency = 1;
		LayoutOrder = 100;
		Image = "rbxasset://textures/ui/Controls/DesignSystem/ButtonSelect@2x.png";
	})
	var48.RightText = React_upvr.createElement("TextLabel", {
		Size = UDim2.fromOffset(var43_result2.X, var43_result2.Y);
		Text = var28_upvw;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
		TextColor3 = Color3;
		Font = CaptionHeader_upvr.Font;
		TextSize = CaptionHeader_upvr.FontSize;
		TextWrapped = false;
		BackgroundTransparency = 1;
		LayoutOrder = 200;
	})
	var48.Padding = React_upvr.createElement("UIPadding", {
		PaddingTop = UDim.new(0, Space_75);
		PaddingBottom = UDim.new(0, Space_75);
		PaddingLeft = UDim.new(0, Space_200);
		PaddingRight = UDim.new(0, Space_200);
	})
	return React_upvr.createElement("Frame", module, var48)
end