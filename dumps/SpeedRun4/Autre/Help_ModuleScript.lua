-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:02
-- Luau version 6, Types version 3
-- Time taken: 0.030433 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Utility_upvr = require(RobloxGui_upvr.Modules.Settings.Utility)
local BuilderIcons_upvr = require(CorePackages.Packages.BuilderIcons)
RobloxGui_upvr:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local pcall_result1, pcall_result2 = pcall(function() -- Line 48
	return settings():GetFFlag("UseNotificationsLocalization")
end)
local GetFFlagFixIGMBottomBarVisibility_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.GetFFlagFixIGMBottomBarVisibility)
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local var10_upvr
if isInExperienceUIVREnabled_upvr then
	var10_upvr = game:GetService("LocalizationService")
end
if isInExperienceUIVREnabled_upvr then
	var10_upvr = require(RobloxGui_upvr.Modules.Settings.Resources.HelpConstants)
else
	var10_upvr = nil
end
local isSpatial_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local UserInputService_upvr = game:GetService("UserInputService")
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local Theme_upvr = require(RobloxGui_upvr.Modules.Settings.Theme)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local CachedPolicyService_upvr = require(CorePackages.Workspace.Packages.CachedPolicyService)
local any_IsEnabled_result1_upvr = require(RobloxGui_upvr.Modules.TenFootInterface):IsEnabled()
local var18_upvr = pcall_result1 and pcall_result2
local TextService_upvr = game:GetService("TextService")
local GuiService_upvr = game:GetService("GuiService")
local any_new_result1_upvw = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization.new(var10_upvr.RobloxLocaleId)
local GameSettings_upvr = UserSettings().GameSettings
local FFlagUIBloxMigrateBuilderIcon_upvr = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.FFlagUIBloxMigrateBuilderIcon
local uiblox_upvr = BuilderIcons_upvr.Migration.uiblox
local Initialize_result1_upvw = (function() -- Line 70, Named "Initialize"
	--[[ Upvalues[19]:
		[1]: RobloxGui_upvr (readonly)
		[2]: isInExperienceUIVREnabled_upvr (readonly)
		[3]: isSpatial_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: Create_upvr (readonly)
		[6]: Theme_upvr (readonly)
		[7]: RobloxTranslator_upvr (readonly)
		[8]: CachedPolicyService_upvr (readonly)
		[9]: any_IsEnabled_result1_upvr (readonly)
		[10]: var18_upvr (readonly)
		[11]: TextService_upvr (readonly)
		[12]: Utility_upvr (readonly)
		[13]: GuiService_upvr (readonly)
		[14]: var10_upvr (readonly)
		[15]: any_new_result1_upvw (read and write)
		[16]: GameSettings_upvr (readonly)
		[17]: FFlagUIBloxMigrateBuilderIcon_upvr (readonly)
		[18]: uiblox_upvr (readonly)
		[19]: BuilderIcons_upvr (readonly)
	]]
	local any_CreateNewPage_result1_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsPageFactory):CreateNewPage()
	any_CreateNewPage_result1_upvr.HelpPages = {}
	any_CreateNewPage_result1_upvr.HelpPageContents = {}
	any_CreateNewPage_result1_upvr.ActiveHelpScheme = nil
	local var26_upvw
	function any_CreateNewPage_result1_upvr.GetCurrentInputType(arg1) -- Line 79
		--[[ Upvalues[4]:
			[1]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[2]: isSpatial_upvr (copied, readonly)
			[3]: var26_upvw (read and write)
			[4]: UserInputService_upvr (copied, readonly)
		]]
		if isInExperienceUIVREnabled_upvr and isSpatial_upvr() then
			return "SpatialGamepad"
		end
		if var26_upvw == nil then
			local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
			if any_GetPlatform_result1 == Enum.Platform.XBoxOne or any_GetPlatform_result1 == Enum.Platform.WiiU then
				return "Gamepad"
			end
			if any_GetPlatform_result1 == Enum.Platform.Windows or any_GetPlatform_result1 == Enum.Platform.OSX then
				return "KeyboardMouse"
			end
			return "Touch"
		end
		if var26_upvw == Enum.UserInputType.Keyboard or var26_upvw == Enum.UserInputType.MouseMovement or var26_upvw == Enum.UserInputType.MouseButton1 or var26_upvw == Enum.UserInputType.MouseButton2 or var26_upvw == Enum.UserInputType.MouseButton3 or var26_upvw == Enum.UserInputType.MouseWheel then
			return "KeyboardMouse"
		end
		if var26_upvw == Enum.UserInputType.Touch then
			return "Touch"
		end
		if var26_upvw == Enum.UserInputType.Gamepad1 or var26_upvw == Enum.UserInputType.Gamepad2 or var26_upvw == Enum.UserInputType.Gamepad3 or var26_upvw == Enum.UserInputType.Gamepad4 then
			return "Gamepad"
		end
		return "KeyboardMouse"
	end
	local function createPCHelp_upvr(arg1) -- Line 111, Named "createPCHelp"
		--[[ Upvalues[5]:
			[1]: Create_upvr (copied, readonly)
			[2]: Theme_upvr (copied, readonly)
			[3]: UserInputService_upvr (copied, readonly)
			[4]: RobloxTranslator_upvr (copied, readonly)
			[5]: CachedPolicyService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local function createPCGroup(arg1_3, arg2) -- Line 112
			--[[ Upvalues[2]:
				[1]: Create_upvr (copied, readonly)
				[2]: Theme_upvr (copied, readonly)
			]]
			local var95 = Create_upvr("Frame")({
				Size = UDim2.new(0.3333333333333333, -4, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
				Name = "PCGroupFrame"..tostring(arg1_3);
			})
			local _ = {
				FillDirection = Enum.FillDirection.Vertical;
				Padding = UDim.new(0, 2);
				Parent = var95;
				SortOrder = Enum.SortOrder.LayoutOrder;
			}
			local tbl_19 = {
				Position = UDim2.new(0, 9, 0, 0);
				Size = UDim2.new(1, -9, 0, 30);
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
			}
			tbl_19.Text = arg1_3
			tbl_19.Font = Theme_upvr.font(Enum.Font.SourceSansBold, "HelpTitle")
			tbl_19.FontSize = Theme_upvr.fontSize(Enum.FontSize.Size18, "HelpTitle")
			tbl_19.TextColor3 = Color3.new(1, 1, 1)
			tbl_19.TextXAlignment = Enum.TextXAlignment.Left
			tbl_19.TextWrapped = true
			tbl_19.Name = "PCGroupTitle"..tostring(arg1_3)
			tbl_19.ZIndex = 2
			tbl_19.LayoutOrder = 1
			tbl_19.Parent = var95
			local var98 = Create_upvr("TextLabel")(tbl_19)
			local tbl_41 = {
				PaddingLeft = UDim.new(0, 9);
				Parent = var98;
			}
			tbl_41 = 0
			local var100 = tbl_41
			local Offset = var98.Size.Y.Offset
			for i = 1, #arg2 do
				for i_2, v in pairs(arg2[i]) do
					local var106 = Create_upvr("Frame")({
						Size = UDim2.new(1, 0, 0, 42);
						Position = UDim2.new(0, 0, 0, Offset + var100 * 44);
						BackgroundTransparency = Theme_upvr.transparency("InputActionBackground", 0.65);
						AutomaticSize = Enum.AutomaticSize.Y;
						LayoutOrder = i + 1;
						BorderSizePixel = 0;
						ZIndex = 2;
						Name = "ActionInputBinding"..tostring(i_2);
						Parent = var95;
					})
					var106.BackgroundColor3 = Theme_upvr.color("InputActionBackground")
					Create_upvr("UICorner")({
						CornerRadius = UDim.new(0, 3);
						Parent = var106;
					})
					Instance.new("UITextSizeConstraint", Create_upvr("TextLabel")({
						Size = UDim2.new(0.4, -9, 0, 42);
						AutomaticSize = Enum.AutomaticSize.Y;
						Position = UDim2.new(0, 9, 0, 0);
						BackgroundTransparency = 1;
						Text = i_2;
						Font = Theme_upvr.font(Enum.Font.SourceSansBold, "HelpTitle");
						FontSize = Theme_upvr.fontSize(Enum.FontSize.Size18, "HelpTitle");
						TextColor3 = Color3.new(1, 1, 1);
						TextXAlignment = Enum.TextXAlignment.Left;
						Name = i_2.."Label";
						ZIndex = 2;
						Parent = var106;
						TextWrapped = true;
					})).MaxTextSize = Theme_upvr.textSize(28)
					local _ = {
						Size = UDim2.new(0.5, 0, 0, 42);
						Position = UDim2.new(0.5, -4, 0, 0);
						BackgroundTransparency = 1;
						Text = v;
						Font = Theme_upvr.font(Enum.Font.SourceSans, "HelpText");
						FontSize = Theme_upvr.fontSize(Enum.FontSize.Size18, "HelpText");
						TextColor3 = Color3.new(1, 1, 1);
						TextXAlignment = Enum.TextXAlignment.Left;
						Name = v.."Label";
						ZIndex = 2;
						Parent = var106;
						TextWrapped = true;
						TextScaled = false;
						AutomaticSize = Enum.AutomaticSize.Y;
					}
					var100 += 1
				end
			end
			var95.Size = UDim2.new(var95.Size.X.Scale, var95.Size.X.Offset, 0, Offset + var100 * 44)
			return var95
		end
		local var110
		if UserInputService_upvr:GetPlatform() ~= Enum.Platform.OSX then
			var110 = false
		else
			var110 = true
		end
		local createPCGroup_result1_7 = createPCGroup("Character Movement", {{
			["Move Forward"] = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.W)..'/'..RobloxTranslator_upvr:FormatByKey("InGame.HelpMenu.UpArrow");
		}, {
			["Move Backward"] = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.S)..'/'..RobloxTranslator_upvr:FormatByKey("InGame.HelpMenu.DownArrow");
		}, {
			["Move Left"] = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.A)..'/'..RobloxTranslator_upvr:FormatByKey("InGame.HelpMenu.LeftArrow");
		}, {
			["Move Right"] = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.D)..'/'..RobloxTranslator_upvr:FormatByKey("InGame.HelpMenu.RightArrow");
		}, {
			Jump = "Space";
		}})
		createPCGroup_result1_7.Parent = arg1
		createPCGroup_result1_7.LayoutOrder = 1
		local var118 = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.One)..','..UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.Two)..','..UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.Three).."..."
		local createPCGroup_result1_2 = createPCGroup("Accessories", {{
			["Equip Tools"] = var118;
		}, {
			["Unequip Tools"] = var118;
		}, {
			["Drop Tool"] = "Backspace";
		}, {
			["Use Tool"] = "Left Mouse Button";
		}})
		createPCGroup_result1_2.Position = UDim2.new(0.3333333333333333, 4, 0, 0)
		createPCGroup_result1_2.Parent = arg1
		createPCGroup_result1_2.LayoutOrder = 2
		local tbl_31 = {}
		table.insert(tbl_31, {
			["UI Selection Toggle"] = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.BackSlash);
		})
		local var127 = not CachedPolicyService_upvr:IsSubjectToChinaPolicies()
		if var127 then
			local tbl_35 = {}
			if var110 then
			else
			end
			tbl_35.Screenshot = "Alt + 1"
			table.insert(tbl_31, tbl_35)
			if not var110 then
				table.insert(tbl_31, {
					["Record Video"] = "F12";
				})
				local var130
			end
		end
		if var127 then
			local tbl_45 = {}
			if var110 then
				var130 = "F9/fn + F9"
			else
				var130 = "F9"
			end
			tbl_45["Dev Console"] = var130
			table.insert(tbl_31, tbl_45)
		end
		local tbl_38 = {}
		var130 = "Shift"
		tbl_38.Mouselock = var130
		table.insert(tbl_31, tbl_38)
		if var127 then
			local tbl_33 = {}
			if var110 then
				var130 = "F10/fn + F10"
			else
				var130 = "F10"
			end
			tbl_33["Graphics Level"] = var130
			table.insert(tbl_31, tbl_33)
			local tbl_15 = {}
			if var110 then
				var130 = "Ctrl + Cmd + F"
			else
				var130 = "F11"
			end
			tbl_15.Fullscreen = var130
			table.insert(tbl_31, tbl_15)
		end
		if var127 then
			local tbl_42 = {}
			if var110 then
				var130 = "Fn+Opt+Cmd+F7"
			else
				var130 = "Ctrl + Shift + F7"
			end
			tbl_42["Perf. Stats"] = var130
			table.insert(tbl_31, tbl_42)
		end
		local createPCGroup_result1_3 = createPCGroup("Misc", tbl_31)
		createPCGroup_result1_3.Position = UDim2.new(0.6666666666666666, 8, 0, 0)
		createPCGroup_result1_3.Parent = arg1
		createPCGroup_result1_3.LayoutOrder = 3
		local createPCGroup_result1_8 = createPCGroup("Camera Movement", {{
			Rotate = "Right Mouse Button";
		}, {
			["Zoom In/Out"] = "Mouse Wheel";
		}, {
			["Zoom In"] = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.I);
		}, {
			["Zoom Out"] = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.O);
		}})
		createPCGroup_result1_8.Position = UDim2.new(0, 0, createPCGroup_result1_7.Size.Y.Scale, createPCGroup_result1_7.Size.Y.Offset + 50)
		createPCGroup_result1_8.Parent = arg1
		createPCGroup_result1_8.LayoutOrder = 4
		local createPCGroup_result1_5 = createPCGroup("Menu Items", {{
			["Roblox Menu"] = "Esc";
		}, {
			Backpack = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.Backquote);
		}, {
			Playerlist = "Tab";
		}, {
			Chat = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.Slash);
		}})
		createPCGroup_result1_5.Position = UDim2.new(0.3333333333333333, 4, createPCGroup_result1_7.Size.Y.Scale, createPCGroup_result1_7.Size.Y.Offset + 50)
		createPCGroup_result1_5.Parent = arg1
		createPCGroup_result1_5.LayoutOrder = 5
		arg1.Size = UDim2.new(arg1.Size.X.Scale, arg1.Size.X.Offset, 0, createPCGroup_result1_5.Size.Y.Offset + createPCGroup_result1_5.Position.Y.Offset)
	end
	local function createGamepadHelp_upvr(arg1) -- Line 316, Named "createGamepadHelp"
		--[[ Upvalues[6]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: Create_upvr (copied, readonly)
			[3]: any_IsEnabled_result1_upvr (copied, readonly)
			[4]: Theme_upvr (copied, readonly)
			[5]: var18_upvr (copied, readonly)
			[6]: TextService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local maximum = math.max(any_CreateNewPage_result1_upvr.Page.AbsoluteSize.X * 0.58, 270)
		local udim2 = UDim2.new(0, maximum, 0, maximum * 0.64)
		local tbl_8 = {
			Name = "GamepadImage";
			Size = udim2;
			Position = UDim2.new(0.5, -udim2.X.Offset / 2 + 30, 0.5, -udim2.Y.Offset / 2 + 7);
			Image = "rbxasset://textures/ui/Settings/Help/PlatformController.png";
			BackgroundTransparency = 1;
			ZIndex = 2;
		}
		tbl_8.Parent = arg1
		local var152_upvr = Create_upvr("ImageLabel")(tbl_8)
		arg1.Size = UDim2.new(arg1.Size.X.Scale, arg1.Size.X.Offset, 0, var152_upvr.Size.Y.Offset + 100)
		local var153_upvr
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var153_upvr = Theme_upvr.fontSize(Enum.FontSize.Size36)
			return var153_upvr
		end
		if not any_IsEnabled_result1_upvr or not INLINED() then
			var153_upvr = Theme_upvr.fontSize(Enum.FontSize.Size24)
		end
		if var153_upvr ~= Theme_upvr.fontSize(Enum.FontSize.Size36) or not Theme_upvr.textSize(36) then
			local any_textSize_result1_upvr = Theme_upvr.textSize(24)
		end
		local function createGamepadLabel(arg1_4, arg2, arg3, arg4) -- Line 336
			--[[ Upvalues[8]:
				[1]: var18_upvr (copied, readonly)
				[2]: Create_upvr (copied, readonly)
				[3]: Theme_upvr (copied, readonly)
				[4]: var153_upvr (readonly)
				[5]: var152_upvr (readonly)
				[6]: TextService_upvr (copied, readonly)
				[7]: any_textSize_result1_upvr (readonly)
				[8]: arg1 (readonly)
			]]
			local var155_upvw
			local var156
			if var18_upvr == true then
				local tbl_46 = {}
				tbl_46.Position = arg2
				tbl_46.Size = arg3
				var156 = 1
				tbl_46.BackgroundTransparency = var156
				tbl_46.Text = arg1_4
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var156 = Enum.TextXAlignment.Right
					return var156
				end
				if not arg4 or not INLINED_2() then
					var156 = Enum.TextXAlignment.Left
				end
				tbl_46.TextXAlignment = var156
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var156 = Vector2.new(1, 0.5)
					return var156
				end
				if not arg4 or not INLINED_3() then
					var156 = Vector2.new(0, 0.5)
				end
				tbl_46.AnchorPoint = var156
				var156 = Theme_upvr.font(Enum.Font.SourceSansBold, "HelpGamepad")
				tbl_46.Font = var156
				var156 = var153_upvr
				tbl_46.FontSize = var156
				var156 = Color3.new(1, 1, 1)
				tbl_46.TextColor3 = var156
				var156 = arg1_4.."Label"
				tbl_46.Name = var156
				var156 = 2
				tbl_46.ZIndex = var156
				var156 = var152_upvr
				tbl_46.Parent = var156
				var156 = true
				tbl_46.TextScaled = var156
				var156 = true
				tbl_46.TextWrapped = var156
				var156 = Enum.TextTruncate.AtEnd
				tbl_46.TextTruncate = var156
				var155_upvw = Create_upvr("TextLabel")(tbl_46)
			else
				local tbl_51 = {}
				tbl_51.Position = arg2
				tbl_51.Size = arg3
				var156 = 1
				tbl_51.BackgroundTransparency = var156
				tbl_51.Text = arg1_4
				local function INLINED_4() -- Internal function, doesn't exist in bytecode
					var156 = Enum.TextXAlignment.Right
					return var156
				end
				if not arg4 or not INLINED_4() then
					var156 = Enum.TextXAlignment.Left
				end
				tbl_51.TextXAlignment = var156
				local function INLINED_5() -- Internal function, doesn't exist in bytecode
					var156 = Vector2.new(1, 0.5)
					return var156
				end
				if not arg4 or not INLINED_5() then
					var156 = Vector2.new(0, 0.5)
				end
				tbl_51.AnchorPoint = var156
				var156 = Theme_upvr.font(Enum.Font.SourceSansBold, "HelpGamepad")
				tbl_51.Font = var156
				var156 = var153_upvr
				tbl_51.FontSize = var156
				var156 = Color3.new(1, 1, 1)
				tbl_51.TextColor3 = var156
				var156 = arg1_4.."Label"
				tbl_51.Name = var156
				var156 = 2
				tbl_51.ZIndex = var156
				var156 = var152_upvr
				tbl_51.Parent = var156
				var156 = Enum.TextTruncate.AtEnd
				tbl_51.TextTruncate = var156
				var155_upvw = Create_upvr("TextLabel")(tbl_51)
			end
			var155_upvw.TextWrapped = true
			local var159_upvr = arg1
			local absolute_upvr = math.abs(arg2.X.Offset)
			local X_upvr = TextService_upvr:GetTextSize(arg1_4, any_textSize_result1_upvr, Theme_upvr.font(Enum.Font.SourceSansBold, "Bold"), Vector2.new(0, 0)).X
			local function updateNameLabelSize_upvr() -- Line 381, Named "updateNameLabelSize"
				--[[ Upvalues[7]:
					[1]: arg4 (readonly)
					[2]: var159_upvr (readonly)
					[3]: absolute_upvr (readonly)
					[4]: var155_upvw (read and write)
					[5]: any_textSize_result1_upvr (copied, readonly)
					[6]: X_upvr (readonly)
					[7]: var153_upvr (copied, readonly)
				]]
				local var162
				local function INLINED_6() -- Internal function, doesn't exist in bytecode
					var162 = var159_upvr.AbsoluteSize.X / 2 + 30 - absolute_upvr
					return var162
				end
				if not arg4 or not INLINED_6() then
					var162 = var159_upvr.AbsoluteSize.X / 2 - 30 - absolute_upvr
				end
				var155_upvw.Size = UDim2.new(var155_upvw.Size.X.Scale, var162, var155_upvw.Size.Y.Scale, any_textSize_result1_upvr * 2)
				var155_upvw.TextScaled = false
				if var162 >= X_upvr then
					var155_upvw.FontSize = var153_upvr
				end
			end
			local function _() -- Line 394
				--[[ Upvalues[1]:
					[1]: updateNameLabelSize_upvr (readonly)
				]]
				updateNameLabelSize_upvr()
			end
			updateNameLabelSize_upvr()
		end
		local var164 = -var152_upvr.Size.X.Offset / 2 - 20
		local var165 = var152_upvr.Size.X.Offset / 2 - 20
		local var166 = var165 + 40
		createGamepadLabel("Switch Tool", UDim2.new(0.5, var164, 0, 15), UDim2.new(0, 100, 0, any_textSize_result1_upvr), true)
		createGamepadLabel("Game Menu Toggle", UDim2.new(0.5, var164, 0.15, 10), UDim2.new(0, 164, 0, any_textSize_result1_upvr), true)
		createGamepadLabel("Move", UDim2.new(0.5, var164, 0.31, 5), UDim2.new(0, 46, 0, any_textSize_result1_upvr), true)
		createGamepadLabel("Menu Navigation", UDim2.new(0.5, var164, 0.46, 0), UDim2.new(0, 164, 0, any_textSize_result1_upvr), true)
		createGamepadLabel("Use Tool", UDim2.new(0.5, var165, 0, 15), UDim2.new(0, 73, 0, any_textSize_result1_upvr))
		createGamepadLabel("Roblox Menu", UDim2.new(0.5, var165, 0.15, 10), UDim2.new(0, 122, 0, any_textSize_result1_upvr))
		createGamepadLabel("Back", UDim2.new(0.5, var165, 0.31, 5), UDim2.new(0, 43, 0, any_textSize_result1_upvr))
		createGamepadLabel("Jump", UDim2.new(0.5, var165, 0.46, 0), UDim2.new(0, 49, 0, any_textSize_result1_upvr))
		createGamepadLabel("Rotate Camera", UDim2.new(0.5, var166, 0.62, -10), UDim2.new(0, 132, 0, any_textSize_result1_upvr))
		createGamepadLabel("Camera Zoom", UDim2.new(0.5, var166, 0.77, -10), UDim2.new(0, 122, 0, any_textSize_result1_upvr))
	end
	local function updateTouchLayout_upvr(arg1) -- Line 421, Named "updateTouchLayout"
		--[[ Upvalues[2]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: Utility_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		any_CreateNewPage_result1_upvr.ActiveHelpScheme = arg1
		local any_IsPortrait_result1 = Utility_upvr:IsPortrait()
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 10. Error Block 133 start (CF ANALYSIS FAILED)
		local Touch_upvr = any_CreateNewPage_result1_upvr.HelpPageContents.Touch
		local function _(arg1_5) -- Line 429, Named "hideUneeded"
			--[[ Upvalues[1]:
				[1]: Touch_upvr (readonly)
			]]
			if arg1_5 then
				for i_3, v_2 in pairs(Touch_upvr) do
					v_2.Visible = not arg1_5[i_3]
				end
			end
		end
		local var174
		if arg1 == Enum.TouchMovementMode.DynamicThumbstick or arg1 == Enum.TouchMovementMode.Default then
			var174 = true
			;({}).MoveImageCTM = var174
			local function INLINED_7() -- Internal function, doesn't exist in bytecode
				var174 = UDim2.new(0.25, -Touch_upvr.MoveLabel.AbsoluteSize.x / 2, 0.75, -50)
				return var174
			end
			if not any_IsPortrait_result1 or not INLINED_7() then
				var174 = UDim2.new(0.15, -Touch_upvr.MoveLabel.AbsoluteSize.x / 2, 0.85, -Touch_upvr.MoveLabel.AbsoluteSize.y)
			end
			Touch_upvr.MoveLabel.Position = var174
			local function INLINED_8() -- Internal function, doesn't exist in bytecode
				var174 = UDim2.new(0.75, -Touch_upvr.JumpLabel.AbsoluteSize.x / 2, 0.75, -50)
				return var174
			end
			if not any_IsPortrait_result1 or not INLINED_8() then
				var174 = UDim2.new(0.85, -60, 0.85, -Touch_upvr.JumpLabel.AbsoluteSize.y)
			end
			Touch_upvr.JumpLabel.Position = var174
			local function INLINED_9() -- Internal function, doesn't exist in bytecode
				var174 = UDim2.new(1, -Touch_upvr.RotateLabel.AbsoluteSize.x - 20, 0.02, 0)
				return var174
			end
			if not any_IsPortrait_result1 or not INLINED_9() then
				var174 = UDim2.new(0.85, -Touch_upvr.RotateLabel.AbsoluteSize.x / 2, 0.02, 0)
			end
			Touch_upvr.RotateLabel.Position = var174
			local function INLINED_10() -- Internal function, doesn't exist in bytecode
				var174 = UDim2.new(0.5, -Touch_upvr.UseToolLabel.AbsoluteSize.x / 2, 0.5, -100)
				return var174
			end
			if not any_IsPortrait_result1 or not INLINED_10() then
				var174 = UDim2.new(0.5, -Touch_upvr.UseToolLabel.AbsoluteSize.x / 2, 0.5, -60)
			end
			Touch_upvr.UseToolLabel.Position = var174
			local function INLINED_11() -- Internal function, doesn't exist in bytecode
				var174 = UDim2.new(0.5, -60, 0.75, 50)
				return var174
			end
			if not any_IsPortrait_result1 or not INLINED_11() then
				var174 = UDim2.new(0.5, -60, 0.64, 0)
			end
			Touch_upvr.EquipLabel.Position = var174
			local function INLINED_12() -- Internal function, doesn't exist in bytecode
				var174 = UDim2.new(0, 20, 0.02, 0)
				return var174
			end
			if not any_IsPortrait_result1 or not INLINED_12() then
				var174 = UDim2.new(0.15, -60, 0.02, 0)
			end
			Touch_upvr.ZoomLabel.Position = var174
			-- KONSTANTWARNING: GOTO [508] #375
		end
		-- KONSTANTERROR: [13] 10. Error Block 133 end (CF ANALYSIS FAILED)
	end
	local function createTouchHelp_upvr(arg1) -- Line 477, Named "createTouchHelp"
		--[[ Upvalues[4]:
			[1]: Utility_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: Create_upvr (copied, readonly)
			[4]: Theme_upvr (copied, readonly)
		]]
		local module = {}
		local any_IsSmallTouchScreen_result1_upvr = Utility_upvr:IsSmallTouchScreen()
		local var178 = GuiService_upvr:GetScreenResolution().y - 350
		if any_IsSmallTouchScreen_result1_upvr then
			var178 = GuiService_upvr:GetScreenResolution().y - 100
		end
		arg1.Size = UDim2.new(1, 0, 0, var178)
		local function createTouchLabel(arg1_6, arg2, arg3, arg4) -- Line 486
			--[[ Upvalues[3]:
				[1]: Create_upvr (copied, readonly)
				[2]: Theme_upvr (copied, readonly)
				[3]: any_IsSmallTouchScreen_result1_upvr (readonly)
			]]
			local tbl_23 = {}
			tbl_23.Position = arg2
			tbl_23.Size = arg3
			tbl_23.BackgroundTransparency = 1
			tbl_23.Name = arg1_6.."Frame"
			tbl_23.Parent = arg4
			local var180 = Create_upvr("TextLabel")(tbl_23)
			local tbl_44 = {
				Position = UDim2.new(0, 0, 0, 0);
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			}
			tbl_44.Text = arg1_6
			tbl_44.Font = Theme_upvr.font(Enum.Font.SourceSansBold, "HelpTouch")
			tbl_44.FontSize = Theme_upvr.fontSize(Enum.FontSize.Size14, "HelpTouch")
			tbl_44.TextColor3 = Color3.new(1, 1, 1)
			tbl_44.Name = arg1_6.."Label"
			tbl_44.ZIndex = 3
			tbl_44.Parent = var180
			tbl_44.TextScaled = true
			tbl_44.TextWrapped = true
			local var182 = Create_upvr("TextLabel")(tbl_44)
			if not any_IsSmallTouchScreen_result1_upvr then
				var182.FontSize = Theme_upvr.fontSize(Enum.FontSize.Size18, "HelpTitle")
				var182.Size = UDim2.new(var182.Size.X.Scale, var182.Size.X.Offset, var182.Size.Y.Scale, var182.Size.Y.Offset + 4)
			end
			local _ = {
				Name = arg1_6.."BackgroundImage";
				Size = UDim2.new(1.25, 0, 1.25, 0);
				Position = UDim2.new(-0.125, 0, -0.065, 0);
				BackgroundTransparency = 1;
				Image = "rbxasset://textures/ui/Settings/Radial/RadialLabel.png";
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(12, 2, 65, 21);
				ZIndex = 2;
				Parent = var180;
			}
			Instance.new("UITextSizeConstraint", var182).MaxTextSize = Theme_upvr.textSize(18, "HelpText")
			return var180
		end
		local function _(arg1_7, arg2, arg3, arg4, arg5) -- Line 536, Named "createTouchGestureImage"
			--[[ Upvalues[1]:
				[1]: Create_upvr (copied, readonly)
			]]
			local module_2 = {}
			module_2.Name = arg1_7
			module_2.Size = arg4
			module_2.Position = arg3
			module_2.BackgroundTransparency = 1
			module_2.Image = arg2
			module_2.ZIndex = 2
			module_2.Parent = arg5
			return Create_upvr("ImageLabel")(module_2)
		end
		local var185 = 30
		if any_IsSmallTouchScreen_result1_upvr then
			var185 = 0
		end
		module.MoveLabel = createTouchLabel("Move", UDim2.new(0.06, 0, 0.58, 0), UDim2.new(0, var185 + 77, 0, 25), arg1)
		module.MoveImageDTS = Create_upvr("ImageLabel")({
			Name = "MoveImageDTS";
			Size = UDim2.new(0, 65, 0, 48);
			Position = UDim2.new(0.5, -32, 1, 3);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Settings/Help/RotateCameraGesture.png";
			ZIndex = 2;
			Parent = module.MoveLabel;
		})
		module.MoveImageCTM = Create_upvr("ImageLabel")({
			Name = "MoveImageCTM";
			Size = UDim2.new(0, 38, 0, 52);
			Position = UDim2.new(0.5, -19, 1, 3);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Settings/Help/UseToolGesture.png";
			ZIndex = 2;
			Parent = module.MoveLabel;
		})
		module.JumpLabel = createTouchLabel("Jump", UDim2.new(0.8, 0, 0.58, 0), UDim2.new(0, var185 + 77, 0, 25), arg1)
		module.JumpImage = Create_upvr("ImageLabel")({
			Name = "JumpImage";
			Size = UDim2.new(0, 38, 0, 52);
			Position = UDim2.new(0.5, -19, 1, 3);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Settings/Help/UseToolGesture.png";
			ZIndex = 2;
			Parent = module.JumpLabel;
		})
		module.EquipLabel = createTouchLabel("Equip/Unequip Tools", UDim2.new(0.5, -60, 0.64, 0), UDim2.new(0, var185 + 120, 0, 25), arg1)
		module.ZoomLabel = createTouchLabel("Zoom In/Out", UDim2.new(0.15, -60, 0.02, 0), UDim2.new(0, 120, 0, 25), arg1)
		module.ZoomImage = Create_upvr("ImageLabel")({
			Name = "ZoomImage";
			Size = UDim2.new(0, 53, 0, 59);
			Position = UDim2.new(0.5, -26, 1, 3);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Settings/Help/ZoomGesture.png";
			ZIndex = 2;
			Parent = module.ZoomLabel;
		})
		module.RotateLabel = createTouchLabel("Rotate Camera", UDim2.new(0.5, -60, 0.02, 0), UDim2.new(0, 120, 0, 25), arg1)
		module.RotateImage = Create_upvr("ImageLabel")({
			Name = "RotateImage";
			Size = UDim2.new(0, 65, 0, 48);
			Position = UDim2.new(0.5, -32, 1, 3);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Settings/Help/RotateCameraGesture.png";
			ZIndex = 2;
			Parent = module.RotateLabel;
		})
		module.UseToolLabel = createTouchLabel("Use Tool", UDim2.new(0.85, -60, 0.02, 0), UDim2.new(0, 120, 0, 25), arg1)
		module.ToolImage = Create_upvr("ImageLabel")({
			Name = "ToolImage";
			Size = UDim2.new(0, 38, 0, 52);
			Position = UDim2.new(0.5, -19, 1, 3);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Settings/Help/UseToolGesture.png";
			ZIndex = 2;
			Parent = module.UseToolLabel;
		})
		return module
	end
	local function createSpatialGamepadHelp_upvr(arg1) -- Line 576, Named "createSpatialGamepadHelp"
		--[[ Upvalues[5]:
			[1]: var10_upvr (copied, readonly)
			[2]: Create_upvr (copied, readonly)
			[3]: any_CreateNewPage_result1_upvr (readonly)
			[4]: any_new_result1_upvw (copied, read and write)
			[5]: Theme_upvr (copied, readonly)
		]]
		local GamepadQuest = var10_upvr.Images.GamepadQuest
		local QuestGamepadLabels = var10_upvr.Labels.QuestGamepadLabels
		local HeightRatio = GamepadQuest.HeightRatio
		local tbl_10 = {
			Name = "SpatialGamepadImage";
			Size = UDim2.new(1, 0, HeightRatio, 0);
			Position = UDim2.new(0.5, 0, 0, 0);
			AnchorPoint = Vector2.new(0.5, 0);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			Image = GamepadQuest.Image;
			BackgroundTransparency = 1;
			ZIndex = 2;
		}
		tbl_10.Parent = arg1
		local class_UIPadding = any_CreateNewPage_result1_upvr.Page:FindFirstChildOfClass("UIPadding")
		local var201
		if class_UIPadding then
			var201 = class_UIPadding.PaddingLeft.Offset + class_UIPadding.PaddingRight.Offset
		else
			var201 = 0
		end
		arg1.Size = UDim2.new(arg1.Size.X.Scale, arg1.Size.X.Offset, 0, (any_CreateNewPage_result1_upvr.Page.AbsoluteSize.X - var201) * HeightRatio)
		for _, v_3 in QuestGamepadLabels.LabelsInfo do
			local tbl_22 = {
				Name = v_3.labelKey;
				BackgroundTransparency = 1;
				Position = UDim2.fromScale(v_3.xPosition, v_3.yPosition);
				Size = UDim2.fromScale(v_3.width, QuestGamepadLabels.LabelRelativeTextHeight);
				Text = any_new_result1_upvw:Format(QuestGamepadLabels.LocalizationKeyPrefix..v_3.labelKey);
			}
			local xAlignment = v_3.xAlignment
			if not xAlignment then
				xAlignment = Enum.TextXAlignment.Right
			end
			tbl_22.TextXAlignment = xAlignment
			tbl_22.Font = Theme_upvr.font(nil, "HelpGamepad")
			tbl_22.TextColor3 = Theme_upvr.color("TextEmphasis")
			tbl_22.TextTransparency = Theme_upvr.transparency("TextEmphasis")
			tbl_22.ZIndex = 2
			tbl_22.TextScaled = true
			tbl_22.Parent = Create_upvr("ImageLabel")(tbl_10)
			Create_upvr("TextLabel")(tbl_22)
		end
	end
	local function createHelpDisplay_upvr(arg1) -- Line 628, Named "createHelpDisplay"
		--[[ Upvalues[6]:
			[1]: Create_upvr (copied, readonly)
			[2]: createPCHelp_upvr (readonly)
			[3]: createGamepadHelp_upvr (readonly)
			[4]: createTouchHelp_upvr (readonly)
			[5]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[6]: createSpatialGamepadHelp_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local var205 = Create_upvr("Frame")({
			Size = UDim2.new(1, 0, 1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			Name = "HelpFrame"..tostring(arg1);
		})
		if arg1 == "KeyboardMouse" then
			local _ = {
				FillDirection = Enum.FillDirection.Horizontal;
				Wraps = true;
				Parent = var205;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 4);
			}
		end
		if arg1 == "KeyboardMouse" then
			createPCHelp_upvr(var205)
			-- KONSTANTWARNING: GOTO [84] #65
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [64] 48. Error Block 17 start (CF ANALYSIS FAILED)
		if arg1 == "Gamepad" then
			createGamepadHelp_upvr(var205)
		elseif arg1 == "Touch" then
		elseif isInExperienceUIVREnabled_upvr and arg1 == "SpatialGamepad" then
			createSpatialGamepadHelp_upvr(var205)
		end
		-- KONSTANTERROR: [64] 48. Error Block 17 end (CF ANALYSIS FAILED)
	end
	local function displayHelp_upvr(arg1) -- Line 662, Named "displayHelp"
		--[[ Upvalues[3]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: any_IsEnabled_result1_upvr (copied, readonly)
			[3]: UserInputService_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local pairs_result1, pairs_result2_2, pairs_result3_2 = pairs(any_CreateNewPage_result1_upvr.HelpPages)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [54] 34. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [54] 34. Error Block 7 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 6. Error Block 15 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [54.5]
		if nil == arg1 then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [54.6]
			if nil then
				-- KONSTANTWARNING: GOTO [54] #34
			end
		else
		end
		-- KONSTANTERROR: [7] 6. Error Block 15 end (CF ANALYSIS FAILED)
	end
	local function switchToHelp_upvr(arg1) -- Line 680, Named "switchToHelp"
		--[[ Upvalues[6]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: displayHelp_upvr (readonly)
			[3]: GameSettings_upvr (copied, readonly)
			[4]: updateTouchLayout_upvr (readonly)
			[5]: createHelpDisplay_upvr (readonly)
			[6]: switchToHelp_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local HelpPages = any_CreateNewPage_result1_upvr.HelpPages
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 14. Error Block 4 start (CF ANALYSIS FAILED)
		updateTouchLayout_upvr(HelpPages)
		do
			return
		end
		-- KONSTANTERROR: [18] 14. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 18. Error Block 5 start (CF ANALYSIS FAILED)
		local createHelpDisplay_upvr_result1, createHelpDisplay_upvr_result2 = createHelpDisplay_upvr(arg1)
		any_CreateNewPage_result1_upvr.HelpPages[arg1] = createHelpDisplay_upvr_result1
		any_CreateNewPage_result1_upvr.HelpPageContents[arg1] = createHelpDisplay_upvr_result2
		switchToHelp_upvr(arg1)
		-- KONSTANTERROR: [22] 18. Error Block 5 end (CF ANALYSIS FAILED)
	end
	local function _() -- Line 697, Named "showTypeOfHelp"
		--[[ Upvalues[2]:
			[1]: switchToHelp_upvr (readonly)
			[2]: any_CreateNewPage_result1_upvr (readonly)
		]]
		switchToHelp_upvr(any_CreateNewPage_result1_upvr:GetCurrentInputType())
	end
	function any_CreateNewPage_result1_upvr.PageDisplayed(arg1) -- Line 701
		--[[ Upvalues[4]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: var26_upvw (read and write)
			[4]: switchToHelp_upvr (readonly)
		]]
		if not any_CreateNewPage_result1_upvr.LastInputTypeChangedConnection then
			any_CreateNewPage_result1_upvr.LastInputTypeChangedConnection = UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1_8) -- Line 703
				--[[ Upvalues[3]:
					[1]: var26_upvw (copied, read and write)
					[2]: switchToHelp_upvr (copied, readonly)
					[3]: any_CreateNewPage_result1_upvr (copied, readonly)
				]]
				if arg1_8 ~= Enum.UserInputType.Focus and arg1_8 ~= Enum.UserInputType.None then
					var26_upvw = arg1_8
					switchToHelp_upvr(any_CreateNewPage_result1_upvr:GetCurrentInputType())
				end
			end)
		end
		var26_upvw = UserInputService_upvr:GetLastInputType()
		switchToHelp_upvr(any_CreateNewPage_result1_upvr:GetCurrentInputType())
	end
	function any_CreateNewPage_result1_upvr.PageHidden(arg1) -- Line 714
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		if any_CreateNewPage_result1_upvr.LastInputTypeChangedConnection then
			any_CreateNewPage_result1_upvr.LastInputTypeChangedConnection:Disconnect()
			any_CreateNewPage_result1_upvr.LastInputTypeChangedConnection = nil
		end
	end
	local function adjustForScreenLayout_upvr(arg1) -- Line 721, Named "adjustForScreenLayout"
		--[[ Upvalues[5]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: GameSettings_upvr (copied, readonly)
			[3]: Utility_upvr (copied, readonly)
			[4]: GuiService_upvr (copied, readonly)
			[5]: updateTouchLayout_upvr (readonly)
		]]
		local var214
		if any_CreateNewPage_result1_upvr:GetCurrentInputType() == "Touch" then
			var214 = arg1
			if not var214 then
				var214 = GuiService_upvr:GetScreenResolution()
			end
			local var215 = var214.y - 350
			if Utility_upvr:IsSmallTouchScreen() then
				var215 = var214.y - 120
			end
			any_CreateNewPage_result1_upvr.HelpPages.Touch.Size = UDim2.new(1, 0, 0, var215)
			updateTouchLayout_upvr(GameSettings_upvr.TouchMovementMode)
		end
	end
	any_CreateNewPage_result1_upvr.TabHeader.Name = "HelpTab"
	if FFlagUIBloxMigrateBuilderIcon_upvr then
		local icons_menu_help_2 = uiblox_upvr["icons/menu/help"]
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.FontFace = BuilderIcons_upvr.Font[icons_menu_help_2.variant]
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.Text = icons_menu_help_2.name
	else
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/HelpTab.png"
		local icons_menu_help = Theme_upvr.Images["icons/menu/help"]
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.ImageRectOffset = icons_menu_help.ImageRectOffset
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.ImageRectSize = icons_menu_help.ImageRectSize
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.Image = icons_menu_help.Image
	end
	any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Title.Text = "Help"
	any_CreateNewPage_result1_upvr.Page.Name = "Help"
	Utility_upvr:OnResized(any_CreateNewPage_result1_upvr, function(arg1, arg2) -- Line 753
		--[[ Upvalues[2]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: adjustForScreenLayout_upvr (readonly)
		]]
		if any_CreateNewPage_result1_upvr.HelpPages.Touch then
			adjustForScreenLayout_upvr(arg1)
		end
	end)
	return any_CreateNewPage_result1_upvr
end)()
Initialize_result1_upvw.Displayed.Event:connect(function() -- Line 767
	--[[ Upvalues[3]:
		[1]: Initialize_result1_upvw (read and write)
		[2]: GetFFlagFixIGMBottomBarVisibility_upvr (readonly)
		[3]: Utility_upvr (readonly)
	]]
	Initialize_result1_upvw:PageDisplayed()
	if not GetFFlagFixIGMBottomBarVisibility_upvr() and Initialize_result1_upvw:GetCurrentInputType() == "Touch" and Initialize_result1_upvw.HubRef.BottomButtonFrame and not Utility_upvr:IsSmallTouchScreen() and not Utility_upvr:IsPortrait() then
		Initialize_result1_upvw.HubRef.BottomButtonFrame.Visible = false
	end
	if Initialize_result1_upvw.HubRef.VersionContainer then
		Initialize_result1_upvw.HubRef.VersionContainer.Visible = true
	end
end)
Initialize_result1_upvw.Hidden.Event:connect(function() -- Line 782
	--[[ Upvalues[3]:
		[1]: Initialize_result1_upvw (read and write)
		[2]: GetFFlagFixIGMBottomBarVisibility_upvr (readonly)
		[3]: Utility_upvr (readonly)
	]]
	Initialize_result1_upvw:PageHidden()
	Initialize_result1_upvw.HubRef.PageViewClipper.ClipsDescendants = true
	Initialize_result1_upvw.HubRef.PageView.ClipsDescendants = true
	Initialize_result1_upvw.HubRef:ShowShield()
	if not GetFFlagFixIGMBottomBarVisibility_upvr() and Initialize_result1_upvw:GetCurrentInputType() == "Touch" and Initialize_result1_upvw.HubRef.BottomButtonFrame and not Utility_upvr:IsSmallTouchScreen() and not Utility_upvr:IsPortrait() then
		Initialize_result1_upvw.HubRef.BottomButtonFrame.Visible = true
	end
	if Initialize_result1_upvw.HubRef.VersionContainer then
		Initialize_result1_upvw.HubRef.VersionContainer.Visible = false
	end
end)
return Initialize_result1_upvw