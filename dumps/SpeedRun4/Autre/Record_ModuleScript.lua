-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:09
-- Luau version 6, Types version 3
-- Time taken: 0.005382 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui_upvr = CoreGui_upvr:WaitForChild("RobloxGui")
RobloxGui_upvr:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local Enums = require(CorePackages.Workspace.Packages.SocialLuaAnalytics).Analytics.Enums
local BuilderIcons_upvr = require(CorePackages.Packages.BuilderIcons)
local FFlagUIBloxMigrateBuilderIcon_upvr = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.FFlagUIBloxMigrateBuilderIcon
local uiblox_upvr = BuilderIcons_upvr.Migration.uiblox
local VRService_upvr = game:GetService("VRService")
local Theme_upvr = require(RobloxGui_upvr.Modules.Settings.Theme)
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local TextService_upvr = game:GetService("TextService")
local Utility_upvr = require(RobloxGui_upvr.Modules.Settings.Utility)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local Contexts_upvr = Enums.Contexts
local EventTypes_upvr = Enums.EventTypes
local EventNames_upvr = require(CorePackages.Workspace.Packages.CapturesInExperience).Analytics.EventNames
local Initialize_result1_upvw = (function() -- Line 40, Named "Initialize"
	--[[ Upvalues[14]:
		[1]: RobloxGui_upvr (readonly)
		[2]: FFlagUIBloxMigrateBuilderIcon_upvr (readonly)
		[3]: uiblox_upvr (readonly)
		[4]: BuilderIcons_upvr (readonly)
		[5]: VRService_upvr (readonly)
		[6]: Theme_upvr (readonly)
		[7]: Create_upvr (readonly)
		[8]: TextService_upvr (readonly)
		[9]: Utility_upvr (readonly)
		[10]: RbxAnalyticsService_upvr (readonly)
		[11]: Contexts_upvr (readonly)
		[12]: EventTypes_upvr (readonly)
		[13]: EventNames_upvr (readonly)
		[14]: CoreGui_upvr (readonly)
	]]
	local any_CreateNewPage_result1_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsPageFactory):CreateNewPage()
	local var18_upvw = false
	local BindableEvent_upvr = Instance.new("BindableEvent")
	BindableEvent_upvr.Name = "RecordingEvent"
	any_CreateNewPage_result1_upvr.RecordingChanged = BindableEvent_upvr.Event
	function any_CreateNewPage_result1_upvr.IsRecording(arg1) -- Line 48
		--[[ Upvalues[1]:
			[1]: var18_upvw (read and write)
		]]
		return var18_upvw
	end
	if FFlagUIBloxMigrateBuilderIcon_upvr then
		local icons_controls_screenrecord = uiblox_upvr["icons/controls/screenrecord"]
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.Text = icons_controls_screenrecord.name
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.FontFace = BuilderIcons_upvr.Font[icons_controls_screenrecord.variant]
	else
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/RecordTab.png"
	end
	any_CreateNewPage_result1_upvr.TabHeader.Name = "RecordTab"
	any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Title.Text = "Record"
	any_CreateNewPage_result1_upvr.TabHeader.Visible = not VRService_upvr.VREnabled
	VRService_upvr:GetPropertyChangedSignal("VREnabled"):connect(function() -- Line 64, Named "onVREnabled"
		--[[ Upvalues[2]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: VRService_upvr (copied, readonly)
		]]
		any_CreateNewPage_result1_upvr.TabHeader.Visible = not VRService_upvr.VREnabled
	end)
	any_CreateNewPage_result1_upvr.Page.Name = "Record"
	local function makeTextLabel_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 73, Named "makeTextLabel"
		--[[ Upvalues[3]:
			[1]: Theme_upvr (copied, readonly)
			[2]: Create_upvr (copied, readonly)
			[3]: TextService_upvr (copied, readonly)
		]]
		local var21_upvw = 10
		local var22_upvw = 0
		local var23_upvw = 10
		local any_textSize_result1 = Theme_upvr.textSize(24)
		local any_font_result1 = Theme_upvr.font(Enum.Font.SourceSans)
		if arg3 then
			var21_upvw = 10
			var22_upvw = 0
			var23_upvw = 0
			any_textSize_result1 = Theme_upvr.textSize(36)
			any_font_result1 = Theme_upvr.font(Enum.Font.SourceSansBold, "Bold")
		end
		local tbl_3 = {
			Name = arg1.."Container";
			BackgroundTransparency = 1;
			ZIndex = 2;
		}
		tbl_3.LayoutOrder = arg5
		tbl_3.Parent = arg4
		local var27_upvr = Create_upvr("Frame")(tbl_3)
		local tbl_2 = {}
		tbl_2.Name = arg1
		tbl_2.BackgroundTransparency = 1
		tbl_2.Text = arg2
		tbl_2.TextWrapped = true
		tbl_2.Font = any_font_result1
		tbl_2.TextSize = any_textSize_result1
		tbl_2.TextColor3 = Color3.new(1, 1, 1)
		tbl_2.TextXAlignment = Enum.TextXAlignment.Left
		tbl_2.TextYAlignment = Enum.TextYAlignment.Top
		tbl_2.Position = UDim2.new(0, var21_upvw, 0, 0)
		tbl_2.Size = UDim2.new(1, -(var21_upvw + var22_upvw), 1, 0)
		tbl_2.ZIndex = 2
		tbl_2.Parent = var27_upvr
		local var29_upvr = Create_upvr("TextLabel")(tbl_2)
		local function onResized(arg1_2) -- Line 105
			--[[ Upvalues[8]:
				[1]: TextService_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: var29_upvr (readonly)
				[4]: arg4 (readonly)
				[5]: var21_upvw (read and write)
				[6]: var22_upvw (read and write)
				[7]: var27_upvr (readonly)
				[8]: var23_upvw (read and write)
			]]
			if arg1_2 == "AbsoluteSize" then
				var27_upvr.Size = UDim2.new(1, 0, 0, TextService_upvr:GetTextSize(arg2, var29_upvr.TextSize, var29_upvr.Font, Vector2.new(arg4.AbsoluteSize.X - var21_upvw - var22_upvw, 10000)).Y + var23_upvw)
			end
		end
		onResized("AbsoluteSize")
		arg4.Changed:connect(onResized)
		return var29_upvr, var27_upvr
	end
	function any_CreateNewPage_result1_upvr.SetHub(arg1, arg2) -- Line 119
		--[[ Upvalues[10]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: makeTextLabel_upvr (readonly)
			[3]: Utility_upvr (copied, readonly)
			[4]: RbxAnalyticsService_upvr (copied, readonly)
			[5]: Contexts_upvr (copied, readonly)
			[6]: EventTypes_upvr (copied, readonly)
			[7]: var18_upvw (read and write)
			[8]: EventNames_upvr (copied, readonly)
			[9]: BindableEvent_upvr (readonly)
			[10]: CoreGui_upvr (copied, readonly)
		]]
		any_CreateNewPage_result1_upvr.HubRef = arg2
		local function var30() -- Line 123
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (copied, readonly)
			]]
			any_CreateNewPage_result1_upvr.HubRef:SetVisibility(false, true)
		end
		local any_AddButtonRow_result1_2, any_AddButtonRow_result2 = Utility_upvr:AddButtonRow(any_CreateNewPage_result1_upvr, "ScreenshotButton", "Take Screenshot", UDim2.new(0, 300, 0, 44), var30)
		any_CreateNewPage_result1_upvr.ScreenshotButtonRow = any_AddButtonRow_result1_2
		any_CreateNewPage_result1_upvr.ScreenshotButton = any_AddButtonRow_result2
		any_CreateNewPage_result1_upvr.ScreenshotButtonRow.LayoutOrder = 3
		local any_AddButtonRow_result1, any_AddButtonRow_result2_upvr = Utility_upvr:AddButtonRow(any_CreateNewPage_result1_upvr, "RecordButton", "Record Video", UDim2.new(0, 300, 0, 44), var30)
		any_AddButtonRow_result1.LayoutOrder = 6
		any_AddButtonRow_result2_upvr.MouseButton1Click:connect(function() -- Line 139
			--[[ Upvalues[6]:
				[1]: RbxAnalyticsService_upvr (copied, readonly)
				[2]: Contexts_upvr (copied, readonly)
				[3]: EventTypes_upvr (copied, readonly)
				[4]: var18_upvw (copied, read and write)
				[5]: EventNames_upvr (copied, readonly)
				[6]: BindableEvent_upvr (copied, readonly)
			]]
			local tbl = {}
			local var37
			if not var18_upvw then
				var37 = EventNames_upvr.CapturesLegacyVideoRecordActivated
			else
				var37 = EventNames_upvr.CapturesLegacyVideoRecordDeactivated
			end
			tbl.btn = var37
			RbxAnalyticsService_upvr:SendEventDeferred("mobile", Contexts_upvr.Captures, EventTypes_upvr.ButtonClick, tbl)
			BindableEvent_upvr:Fire(not var18_upvw)
		end)
		local Game_Options = settings():FindFirstChild("Game Options")
		if Game_Options then
			Game_Options.VideoRecordingChangeRequest:connect(function(arg1_3) -- Line 151
				--[[ Upvalues[2]:
					[1]: var18_upvw (copied, read and write)
					[2]: any_AddButtonRow_result2_upvr (readonly)
				]]
				var18_upvw = arg1_3
				if arg1_3 then
					any_AddButtonRow_result2_upvr.RecordButtonTextLabel.Text = "Stop Recording"
				else
					any_AddButtonRow_result2_upvr.RecordButtonTextLabel.Text = "Record Video"
				end
			end)
		end
		any_AddButtonRow_result2_upvr.Activated:Connect(function() -- Line 161
			--[[ Upvalues[1]:
				[1]: CoreGui_upvr (copied, readonly)
			]]
			CoreGui_upvr:ToggleRecording()
		end)
		any_CreateNewPage_result1_upvr.ScreenshotButton.Activated:Connect(function() -- Line 164
			--[[ Upvalues[1]:
				[1]: CoreGui_upvr (copied, readonly)
			]]
			CoreGui_upvr:TakeScreenshot()
		end)
		any_CreateNewPage_result1_upvr.Page.Size = UDim2.new(1, 0, 0, 400)
	end
	return any_CreateNewPage_result1_upvr
end)()
local GuiService_upvr = game:GetService("GuiService")
Initialize_result1_upvw.Displayed.Event:connect(function(arg1) -- Line 178
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: Initialize_result1_upvw (read and write)
	]]
	if arg1 then
		GuiService_upvr.SelectedCoreObject = Initialize_result1_upvw.ScreenshotButton
	end
end)
return Initialize_result1_upvw