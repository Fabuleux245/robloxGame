-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:56
-- Luau version 6, Types version 3
-- Time taken: 0.026080 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CorePackages = game:GetService("CorePackages")
local UserInputService_upvr_2 = game:GetService("UserInputService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local any_IsEnabled_result1 = require(RobloxGui.Modules.TenFootInterface):IsEnabled()
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local UIBlox_2 = require(CorePackages.Packages.UIBlox)
local FFlagRelocateMobileMenuButtons_upvr_2 = require(RobloxGui.Modules.Settings.Flags.FFlagRelocateMobileMenuButtons)
local FIntRelocateMobileMenuButtonsVariant_upvr_2 = require(RobloxGui.Modules.Settings.Flags.FIntRelocateMobileMenuButtonsVariant)
local any_GetGuiInset_result1_2, _ = game:GetService("GuiService"):GetGuiInset()
local module_10_upvr = {
	[Enum.FontSize.Size14] = Enum.FontSize.Size11;
	[Enum.FontSize.Size18] = Enum.FontSize.Size14;
	[Enum.FontSize.Size24] = Enum.FontSize.Size18;
	[Enum.FontSize.Size36] = Enum.FontSize.Size28;
	[Enum.FontSize.Size48] = Enum.FontSize.Size36;
}
local tbl_40_upvr = {
	MenuContainer = {
		Color = Color3.new(0, 0, 0);
		Transparency = 0.2;
	};
	IGM_TabSelection = {
		Color = Color3.new(1, 1, 1);
		Transparency = 0;
	};
	White = {
		Color = Color3.new(1, 1, 1);
		Transparency = 0;
	};
	IGM_Background = {
		Color = Color3.fromRGB(0, 0, 0);
		Transparency = 1;
	};
	IGM_Button = {
		Color = Color3.fromRGB(0, 0, 0);
		Transparency = 1;
	};
	IGM_ButtonNonInteractable = {
		Color = Color3.fromRGB(100, 100, 100);
		Transparency = 0;
	};
	IGM_ButtonHover = {
		Color = Color3.fromRGB(56, 57, 59);
		Transparency = 0;
	};
	IGM_Stroke = {
		Color = Color3.new(0.776, 0.776, 0.776);
		Transparency = 0;
	};
	IGM_Selected = {
		Color = Color3.fromRGB(217, 217, 217);
		Transparency = 0;
	};
	Player_RowSelection = {
		Color = Color3.new(0.396, 0.4, 0.408);
		Transparency = 0.9;
	};
}
local tbl_41_upvr = {
	Confirmation_Font = {
		Font = AppFonts.default:getBold();
		RelativeSize = module_10_upvr[Enum.FontSize.Size36];
		TextSize = 28.584000000000003;
	};
}
local tbl_25 = {
	Font = AppFonts.default:getMedium();
	RelativeSize = module_10_upvr[Enum.FontSize.Size24];
}
local getViewportSize_upvr = 17.468
tbl_25.TextSize = getViewportSize_upvr
tbl_41_upvr.Button_Font = tbl_25
local tbl_6 = {}
if any_IsEnabled_result1 then
	getViewportSize_upvr = module_10_upvr[Enum.FontSize.Size24]
else
	getViewportSize_upvr = module_10_upvr[Enum.FontSize.Size18]
end
tbl_6.RelativeSize = getViewportSize_upvr
tbl_41_upvr.Username = tbl_6
local tbl_20 = {}
if any_IsEnabled_result1 then
	getViewportSize_upvr = Enum.FontSize.Size24
else
	getViewportSize_upvr = Enum.FontSize.Size18
end
tbl_20.RelativeSize = getViewportSize_upvr
getViewportSize_upvr = AppFonts.default:getMedium()
tbl_20.Font = getViewportSize_upvr
tbl_41_upvr.DisplayName = tbl_20
local tbl_22 = {}
getViewportSize_upvr = AppFonts.default:getDefault()
tbl_22.Font = getViewportSize_upvr
tbl_41_upvr.Settings_Font = tbl_22
local tbl = {}
getViewportSize_upvr = AppFonts.default:getMedium()
tbl.Font = getViewportSize_upvr
getViewportSize_upvr = module_10_upvr[Enum.FontSize.Size18]
tbl.RelativeSize = getViewportSize_upvr
tbl_41_upvr.Help_Title_Font = tbl
local tbl_39 = {}
getViewportSize_upvr = AppFonts.default:getDefault()
tbl_39.Font = getViewportSize_upvr
getViewportSize_upvr = module_10_upvr[Enum.FontSize.Size18]
tbl_39.RelativeSize = getViewportSize_upvr
getViewportSize_upvr = 14.292000000000002
tbl_39.TextSize = getViewportSize_upvr
tbl_41_upvr.Help_Text_Font = tbl_39
local tbl_4 = {}
getViewportSize_upvr = AppFonts.default:getMedium()
tbl_4.Font = getViewportSize_upvr
tbl_41_upvr.Help_Gamepad_Font = tbl_4
local tbl_47 = {}
getViewportSize_upvr = AppFonts.default:getBold()
tbl_47.Font = getViewportSize_upvr
getViewportSize_upvr = module_10_upvr[Enum.FontSize.Size14]
tbl_47.RelativeSize = getViewportSize_upvr
tbl_41_upvr.Help_Touch_Font = tbl_47
local tbl_37 = {}
getViewportSize_upvr = AppFonts.default:getDefault()
tbl_37.Font = getViewportSize_upvr
getViewportSize_upvr = module_10_upvr[Enum.FontSize.Size24]
tbl_37.RelativeSize = getViewportSize_upvr
tbl_41_upvr.Game_Settings_Font = tbl_37
local tbl_31 = {}
getViewportSize_upvr = AppFonts.default:getDefault()
tbl_31.Font = getViewportSize_upvr
getViewportSize_upvr = 12.704
tbl_31.TextSize = getViewportSize_upvr
tbl_41_upvr.Conversation_Details_Font = tbl_31
local tbl_35 = {}
getViewportSize_upvr = AppFonts.default:getDefault()
tbl_35.Font = getViewportSize_upvr
getViewportSize_upvr = 17.468
tbl_35.TextSize = getViewportSize_upvr
tbl_41_upvr.Utility_Text_Font = tbl_35
local tbl_13 = {}
getViewportSize_upvr = AppFonts.default:getDefault()
tbl_13.Font = getViewportSize_upvr
getViewportSize_upvr = 12.704
tbl_13.TextSize = getViewportSize_upvr
tbl_41_upvr.Utility_Text_Small_Font = tbl_13
local tbl_34 = {}
getViewportSize_upvr = AppFonts.default:getDefault()
tbl_34.Font = getViewportSize_upvr
getViewportSize_upvr = 12.704
tbl_34.TextSize = getViewportSize_upvr
tbl_41_upvr.Utility_Row_Small_Font = tbl_34
local tbl_33 = {}
getViewportSize_upvr = AppFonts.default:getMedium()
tbl_33.Font = getViewportSize_upvr
if game:DefineFastFlag("IncreaseUtilityRowTextSizeConsole", false) and any_IsEnabled_result1 then
	getViewportSize_upvr = 19.056
else
	getViewportSize_upvr = 12.704
end
tbl_33.TextSize = getViewportSize_upvr
tbl_41_upvr.Utility_Row_Font = tbl_33
local tbl_32 = {}
getViewportSize_upvr = AppFonts.default:getSemibold()
tbl_32.Font = getViewportSize_upvr
getViewportSize_upvr = 19.056
tbl_32.TextSize = getViewportSize_upvr
tbl_41_upvr.Back_Button_Font = tbl_32
local tbl_2 = {}
getViewportSize_upvr = AppFonts.default:getSemibold()
tbl_2.Font = getViewportSize_upvr
tbl_41_upvr.Semibold_Font = tbl_2
local tbl_29 = {}
getViewportSize_upvr = AppFonts.default:getMedium()
tbl_29.Font = getViewportSize_upvr
tbl_41_upvr.Bold_Font = tbl_29
local tbl_7 = {}
local DarkTheme_upvr = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
function tbl_7.__index(arg1, arg2) -- Line 166
	--[[ Upvalues[1]:
		[1]: DarkTheme_upvr (readonly)
	]]
	return DarkTheme_upvr[arg2]
end
getViewportSize_upvr = tbl_40_upvr
setmetatable(getViewportSize_upvr, tbl_7)
local tbl_46_upvr = {}
getViewportSize_upvr = "IGM_Background"
tbl_46_upvr.SETTINGS_SHIELD = getViewportSize_upvr
getViewportSize_upvr = "IGM_Background"
tbl_46_upvr.SETTINGS_SHIELD_TRANSPARENCY = getViewportSize_upvr
getViewportSize_upvr = "White"
tbl_46_upvr.SELECTION_TEXT_COLOR_NORMAL = getViewportSize_upvr
getViewportSize_upvr = "White"
tbl_46_upvr.SELECTION_TEXT_COLOR_HIGHLIGHTED = getViewportSize_upvr
getViewportSize_upvr = "IGM_Background"
tbl_46_upvr.HubBarContainer = getViewportSize_upvr
getViewportSize_upvr = "IGM_Background"
tbl_46_upvr.HubBarContainerTransparency = getViewportSize_upvr
getViewportSize_upvr = "IGM_Background"
tbl_46_upvr.HubBarContainerHover = getViewportSize_upvr
getViewportSize_upvr = "IGM_Background"
tbl_46_upvr.HubBarHomeButton = getViewportSize_upvr
getViewportSize_upvr = "IGM_Background"
tbl_46_upvr.HubBarHomeButtonHover = getViewportSize_upvr
getViewportSize_upvr = "IGM_Background"
tbl_46_upvr.HubBarHomeButtonTransparency = getViewportSize_upvr
getViewportSize_upvr = "IGM_Background"
tbl_46_upvr.HubBarHomeButtonTransparencyHover = getViewportSize_upvr
getViewportSize_upvr = "Overlay"
tbl_46_upvr.DarkenBackground = getViewportSize_upvr
getViewportSize_upvr = "BackgroundDefault"
tbl_46_upvr.PlayerRowFrame = getViewportSize_upvr
getViewportSize_upvr = "Player_RowSelection"
tbl_46_upvr.PlayerRowSelection = getViewportSize_upvr
getViewportSize_upvr = "IGM_TabSelection"
tbl_46_upvr.TabSelection = getViewportSize_upvr
getViewportSize_upvr = "IGM_Button"
tbl_46_upvr.DefaultButton = getViewportSize_upvr
getViewportSize_upvr = "IGM_ButtonHover"
tbl_46_upvr.DefaultButtonHover = getViewportSize_upvr
getViewportSize_upvr = "SecondaryDefault"
tbl_46_upvr.DefaultButtonStroke = getViewportSize_upvr
getViewportSize_upvr = "SecondaryContent"
tbl_46_upvr.WhiteButtonText = getViewportSize_upvr
getViewportSize_upvr = "BackgroundUIContrast"
tbl_46_upvr.MenuContainer = getViewportSize_upvr
getViewportSize_upvr = "SystemPrimaryDefault"
tbl_46_upvr.ControlInputText = getViewportSize_upvr
getViewportSize_upvr = "Divider"
tbl_46_upvr.ControlInputStroke = getViewportSize_upvr
getViewportSize_upvr = "BackgroundDefault"
tbl_46_upvr.ControlInputBackground = getViewportSize_upvr
getViewportSize_upvr = "IGM_TabSelection"
tbl_46_upvr.ControlInputFocusedStroke = getViewportSize_upvr
getViewportSize_upvr = "BackgroundUIDefault"
tbl_46_upvr.InputActionBackground = getViewportSize_upvr
getViewportSize_upvr = "UIDefault"
tbl_46_upvr.IconButton = getViewportSize_upvr
getViewportSize_upvr = "BackgroundOnHover"
tbl_46_upvr.IconButtonHover = getViewportSize_upvr
getViewportSize_upvr = "Divider"
tbl_46_upvr.ImageButton = getViewportSize_upvr
getViewportSize_upvr = "BackgroundDefault"
tbl_46_upvr.RowFrameBackground = getViewportSize_upvr
getViewportSize_upvr = "BackgroundUIDefault"
tbl_46_upvr.DropdownListBg = getViewportSize_upvr
getViewportSize_upvr = "UIDefault"
tbl_46_upvr.DropdownListFocusBg = getViewportSize_upvr
getViewportSize_upvr = "IGM_Selected"
tbl_46_upvr.SELECTED_COLOR = getViewportSize_upvr
getViewportSize_upvr = "BackgroundUIDefault"
tbl_46_upvr.NON_SELECTED_COLOR = getViewportSize_upvr
getViewportSize_upvr = "UIEmphasis"
tbl_46_upvr.NotInteractableSelection = getViewportSize_upvr
getViewportSize_upvr = "Confirmation_Font"
tbl_46_upvr.Confirmation = getViewportSize_upvr
getViewportSize_upvr = "Button_Font"
tbl_46_upvr.Button = getViewportSize_upvr
getViewportSize_upvr = "Settings_Font"
tbl_46_upvr.SettingsHub = getViewportSize_upvr
getViewportSize_upvr = "Help_Title_Font"
tbl_46_upvr.HelpTitle = getViewportSize_upvr
getViewportSize_upvr = "Help_Text_Font"
tbl_46_upvr.HelpText = getViewportSize_upvr
getViewportSize_upvr = "Help_Gamepad_Font"
tbl_46_upvr.HelpGamepad = getViewportSize_upvr
getViewportSize_upvr = "Help_Touch_Font"
tbl_46_upvr.HelpTouch = getViewportSize_upvr
getViewportSize_upvr = "Game_Settings_Font"
tbl_46_upvr.GameSettings = getViewportSize_upvr
getViewportSize_upvr = "Conversation_Details_Font"
tbl_46_upvr.ConversationDetails = getViewportSize_upvr
getViewportSize_upvr = "Utility_Text_Font"
tbl_46_upvr.UtilityText = getViewportSize_upvr
getViewportSize_upvr = "Utility_Row_Font"
tbl_46_upvr.UtilityRow = getViewportSize_upvr
getViewportSize_upvr = "Utility_Row_Small_Font"
tbl_46_upvr.UtilityRowSmall = getViewportSize_upvr
getViewportSize_upvr = "Utility_Text_Small_Font"
tbl_46_upvr.UtilityTextSmall = getViewportSize_upvr
getViewportSize_upvr = "Back_Button_Font"
tbl_46_upvr.BackButton = getViewportSize_upvr
getViewportSize_upvr = "Semibold_Font"
tbl_46_upvr.Semibold = getViewportSize_upvr
getViewportSize_upvr = "Bold_Font"
tbl_46_upvr.Bold = getViewportSize_upvr
getViewportSize_upvr = "Utility_Text_Font"
tbl_46_upvr.ShareLinkTitle = getViewportSize_upvr
getViewportSize_upvr = "IGM_ButtonNonInteractable"
tbl_46_upvr.ButtonNonInteractable = getViewportSize_upvr
function getViewportSize_upvr() -- Line 243, Named "getViewportSize"
	if _G.__TESTEZ_RUNNING_TEST__ then
		return Vector2.new(1024, 1024)
	end
	if not workspace.CurrentCamera then
		return nil
	end
	if workspace.CurrentCamera.ViewportSize == Vector2.new(0, 0) or workspace.CurrentCamera.ViewportSize == Vector2.new(1, 1) then
		return nil
	end
	return workspace.CurrentCamera.ViewportSize
end
local function _() -- Line 263, Named "isPortrait"
	--[[ Upvalues[1]:
		[1]: getViewportSize_upvr (readonly)
	]]
	local getViewportSize_upvr_result1_2 = getViewportSize_upvr()
	local var144 = getViewportSize_upvr_result1_2
	if var144 then
		if getViewportSize_upvr_result1_2.X >= getViewportSize_upvr_result1_2.Y then
			var144 = false
		else
			var144 = true
		end
	end
	return var144
end
local getViewportSize_upvr_result1_7_upvw = getViewportSize_upvr()
if getViewportSize_upvr_result1_7_upvw and UserInputService_upvr_2.TouchEnabled then
	if getViewportSize_upvr_result1_7_upvw.Y >= 500 then
		if getViewportSize_upvr_result1_7_upvw.X >= 700 then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
end
local module_9_upvr = {
	PaddingTop = UDim.new(0, 0);
	PaddingLeft = UDim.new(0, 20);
	PaddingRight = UDim.new(0, 20);
	PaddingBottom = UDim.new(0, 14);
}
local module_3_upvr = {
	PaddingTop = UDim.new(0, 0);
	PaddingLeft = UDim.new(0, 12);
}
local udim_2 = UDim.new(0, 12)
module_3_upvr.PaddingRight = udim_2
if FFlagRelocateMobileMenuButtons_upvr_2 and (FIntRelocateMobileMenuButtonsVariant_upvr_2 == 1 or FIntRelocateMobileMenuButtonsVariant_upvr_2 == 3) then
	udim_2 = UDim.new(0, 24)
else
	udim_2 = UDim.new(0, 12)
end
module_3_upvr.PaddingBottom = udim_2
local module_12_upvr = {
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.new(0.5, 0, 0.5, 10);
	Size = UDim2.new(0, 0, 0, 0);
	AutomaticSize = Enum.AutomaticSize.XY;
}
local module_4_upvr = {
	AnchorPoint = Vector2.new(0.5, 1);
	Position = UDim2.new(0.5, 0, 1, 8);
	Size = UDim2.new(0, 0, 0, 0);
	AutomaticSize = Enum.AutomaticSize.XY;
}
local module_8_upvr = {
	AnchorPoint = Vector2.new(0.5, 0);
	Position = UDim2.new(0.5, 0, 0, any_GetGuiInset_result1_2.Y);
	Size = UDim2.new(1, -24, 0, 0);
	AutomaticSize = Enum.AutomaticSize.Y;
}
local module = {
	DefaultScrollBarThickness = 1;
	DefaultCornerRadius = UDim.new(0, 8);
	MenuContainerCornerRadius = UDim.new(0, 10);
	DefaultStokeThickness = 1;
}
local var156_upvw = true
function module.AlwaysShowBottomBar() -- Line 318
	--[[ Upvalues[2]:
		[1]: getViewportSize_upvr (readonly)
		[2]: var156_upvw (read and write)
	]]
	local getViewportSize_upvr_result1_6 = getViewportSize_upvr()
	if getViewportSize_upvr_result1_6 then
		if getViewportSize_upvr_result1_6.Y >= 500 then
			if getViewportSize_upvr_result1_6.X >= 700 then
			else
			end
		end
	end
	if false then
		return true
	end
	if var156_upvw then
		return false
	end
	return true
end
module.UIBloxThemeEnabled = true
module.ShowHomeButton = false
module.EnableVerticalBottomBar = false
module.UseBiggerText = false
function module.UseStickyBar() -- Line 272
	--[[ Upvalues[1]:
		[1]: getViewportSize_upvr (readonly)
	]]
	local getViewportSize_upvr_result1_4 = getViewportSize_upvr()
	if getViewportSize_upvr_result1_4 then
		if getViewportSize_upvr_result1_4.Y >= 500 then
			if getViewportSize_upvr_result1_4.X >= 700 then
			else
			end
		end
	end
	return false
end
module.EnableDarkenBackground = true
module.TabHeaderIconPadding = 5
function module.UseInspectAndBuyPanel() -- Line 341
	--[[ Upvalues[1]:
		[1]: var156_upvw (read and write)
	]]
	return var156_upvw
end
module.ExtraHubBottomPaddingMobile = 12
function module.HubPadding() -- Line 345
	--[[ Upvalues[7]:
		[1]: FFlagRelocateMobileMenuButtons_upvr_2 (readonly)
		[2]: FIntRelocateMobileMenuButtonsVariant_upvr_2 (readonly)
		[3]: getViewportSize_upvr (readonly)
		[4]: UserInputService_upvr_2 (readonly)
		[5]: module_3_upvr (readonly)
		[6]: module_9_upvr (readonly)
		[7]: var156_upvw (read and write)
	]]
	if FFlagRelocateMobileMenuButtons_upvr_2 and FIntRelocateMobileMenuButtonsVariant_upvr_2 ~= 0 then
		local function _() -- Line 348
			--[[ Upvalues[2]:
				[1]: getViewportSize_upvr (copied, readonly)
				[2]: UserInputService_upvr_2 (copied, readonly)
			]]
			local getViewportSize_upvr_result1_5 = getViewportSize_upvr()
			local var160 = getViewportSize_upvr_result1_5
			if var160 then
				var160 = UserInputService_upvr_2.TouchEnabled
				if var160 then
					var160 = true
					if getViewportSize_upvr_result1_5.Y >= 500 then
						if getViewportSize_upvr_result1_5.X >= 700 then
							var160 = false
						else
							var160 = true
						end
					end
				end
			end
			return var160
		end
		local getViewportSize_upvr_result1 = getViewportSize_upvr()
		local var162 = getViewportSize_upvr_result1
		if var162 then
			var162 = UserInputService_upvr_2.TouchEnabled
			if var162 then
				var162 = true
				if getViewportSize_upvr_result1.Y >= 500 then
					if getViewportSize_upvr_result1.X >= 700 then
						var162 = false
					else
						var162 = true
					end
				end
			end
		end
		if var162 then
			return module_3_upvr
		end
		return module_9_upvr
	end
	if var156_upvw then
		return module_3_upvr
	end
	return module_9_upvr
end
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
function module.MenuContainerPosition(arg1) -- Line 368
	--[[ Upvalues[6]:
		[1]: isInExperienceUIVREnabled_upvr (readonly)
		[2]: var156_upvw (read and write)
		[3]: getViewportSize_upvr (readonly)
		[4]: module_8_upvr (readonly)
		[5]: module_4_upvr (readonly)
		[6]: module_12_upvr (readonly)
	]]
	if isInExperienceUIVREnabled_upvr and arg1 and arg1:getMenuContainerPositionOverride() then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return arg1:getMenuContainerPositionOverride()
	end
	if var156_upvw then
		local getViewportSize_upvr_result1_3 = getViewportSize_upvr()
		if getViewportSize_upvr_result1_3 and getViewportSize_upvr_result1_3.Y >= 500 then
			if getViewportSize_upvr_result1_3.X >= 700 then
			else
			end
		end
		if false then
			return module_8_upvr
		end
		return module_4_upvr
	end
	return module_12_upvr
end
module.ExtraPageBottomPaddingMobile = 48
module.ButtonHeight = 36
module.LargeButtonHeight = 48
module.SelectorArrowButtonWidth = 32
module.VerticalMenuWidth = 92
module.Images = UIBlox_2.App.ImageSet.Images
module.getIconSize = UIBlox_2.App.ImageSet.getIconSize
module.IconSize = UIBlox_2.App.ImageSet.Enum.IconSize
module.SHIELD_INACTIVE_POSITION = UDim2.new(0, 0, 1, 36)
function module.viewportResized() -- Line 394
	--[[ Upvalues[4]:
		[1]: getViewportSize_upvr_result1_7_upvw (read and write)
		[2]: getViewportSize_upvr (readonly)
		[3]: var156_upvw (read and write)
		[4]: UserInputService_upvr_2 (readonly)
	]]
	getViewportSize_upvr_result1_7_upvw = getViewportSize_upvr()
	local var165 = getViewportSize_upvr_result1_7_upvw
	if var165 then
		var165 = UserInputService_upvr_2.TouchEnabled
		if var165 then
			var165 = true
			if getViewportSize_upvr_result1_7_upvw.Y >= 500 then
				if getViewportSize_upvr_result1_7_upvw.X >= 700 then
					var165 = false
				else
					var165 = true
				end
			end
		end
	end
	var156_upvw = var165
end
local Color3_fromRGB_result1_upvr = Color3.fromRGB(0, 0, 0)
function module.color(arg1, arg2) -- Line 400
	--[[ Upvalues[3]:
		[1]: tbl_46_upvr (readonly)
		[2]: tbl_40_upvr (readonly)
		[3]: Color3_fromRGB_result1_upvr (readonly)
	]]
	local var167 = tbl_46_upvr[arg1] or arg1
	if tbl_40_upvr[var167] then
		return tbl_40_upvr[var167].Color
	end
	local var168 = arg2
	if not var168 then
		var168 = Color3_fromRGB_result1_upvr
	end
	return var168
end
function module.transparency(arg1, arg2) -- Line 404
	--[[ Upvalues[2]:
		[1]: tbl_46_upvr (readonly)
		[2]: tbl_40_upvr (readonly)
	]]
	local var169 = tbl_46_upvr[arg1] or arg1
	if tbl_40_upvr[var169] then
		return tbl_40_upvr[var169].Transparency
	end
	return arg2 or 0
end
local any_getDefault_result1_upvr = AppFonts.default:getDefault()
function module.font(arg1, arg2) -- Line 408
	--[[ Upvalues[3]:
		[1]: any_getDefault_result1_upvr (readonly)
		[2]: tbl_46_upvr (readonly)
		[3]: tbl_41_upvr (readonly)
	]]
	if not arg2 then
		return any_getDefault_result1_upvr
	end
	local var171 = tbl_46_upvr[arg2] or arg2
	if tbl_41_upvr[var171] then
		return tbl_41_upvr[var171].Font
	end
	local var172 = arg1
	if not var172 then
		var172 = any_getDefault_result1_upvr
	end
	return var172
end
local var173_upvr = module_10_upvr[Enum.FontSize.Size24]
function module.fontSize(arg1, arg2) -- Line 415
	--[[ Upvalues[4]:
		[1]: module_10_upvr (readonly)
		[2]: tbl_46_upvr (readonly)
		[3]: tbl_41_upvr (readonly)
		[4]: var173_upvr (readonly)
	]]
	if not arg2 then
		return module_10_upvr[arg1]
	end
	local var174 = tbl_46_upvr[arg2] or arg2
	if tbl_41_upvr[var174] then
		return tbl_41_upvr[var174].RelativeSize
	end
	local var175 = arg1
	if not var175 then
		var175 = var173_upvr
	end
	return var175
end
function module.textSize(arg1, arg2) -- Line 422
	--[[ Upvalues[3]:
		[1]: var156_upvw (read and write)
		[2]: tbl_46_upvr (readonly)
		[3]: tbl_41_upvr (readonly)
	]]
	if not arg2 then
		return arg1 * 0.794 or 19
	end
	local var176
	if var156_upvw and var176 == "UtilityRow" then
		var176 = "UtilityRowSmall"
	elseif var156_upvw then
		if var176 == "UtilityText" then
			var176 = "UtilityTextSmall"
		end
	end
	var176 = tbl_46_upvr[var176] or var176
	if tbl_41_upvr[var176] and tbl_41_upvr[var176].TextSize then
		return tbl_41_upvr[var176].TextSize
	end
	return arg1 * 0.794 or 19
end
function module.hydrateLabel(arg1, arg2, arg3) -- Line 436
	--[[ Upvalues[3]:
		[1]: tbl_46_upvr (readonly)
		[2]: tbl_40_upvr (readonly)
		[3]: tbl_41_upvr (readonly)
	]]
	local var177 = tbl_46_upvr[arg2] or arg2
	if tbl_40_upvr[var177] then
		local var178 = tbl_40_upvr[var177]
		arg1.TextColor3 = var178.Color
		arg1.TextTransparency = var178.Transparency
	end
	if tbl_41_upvr[arg3] then
		local var179 = tbl_41_upvr[var177]
		arg1.Font = var179.RelativeSize * 19.2
		arg1.TextSize = var179.TextSize
	end
end
module.platformNameTextSize = 18
module.platformNameIconSize = UDim2.fromOffset(36, 36)
module.selectionCursor = tbl_40_upvr.SelectionCursor
return module