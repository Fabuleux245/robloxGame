-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:27
-- Luau version 6, Types version 3
-- Time taken: 0.009006 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local VRService_upvr = game:GetService("VRService")
local ContextActionService = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
local CoreGui_upvr = game:GetService("CoreGui")
local RobloxGui = CoreGui_upvr.RobloxGui
local Panel3D = require(game:GetService("CorePackages").Workspace.Packages.VrCommon).Panel3D
local VRHub_upvr = require(RobloxGui.Modules.VR.VRHub)
local VirtualKeyboard = require(RobloxGui.Modules.VR.VirtualKeyboard)
local IsSpatialRobloxGuiEnabled_upvr = require(RobloxGui.Modules.VR.IsSpatialRobloxGuiEnabled)
local CorePackages = game:GetService("CorePackages")
local isInExperienceUIVREnabled = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local var12
if require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUIManagerPackgify then
	var12 = require(CorePackages.Workspace.Packages.VrSpatialUi).Constants.PanelType
else
	local UIManager = RobloxGui:WaitForChild("Modules"):WaitForChild("UIManager")
	var12 = require(UIManager.Constants).PanelType
end
local var15_upvr = (require(RobloxGui.Modules.Flags.GetFIntVRScaleGuiDistance) or 100)() * 0.01
if not VRService_upvr.VREnabled then
	warn("UserGui should not be required while not in VR")
	return nil
end
if game:GetEngineFeature("ExposeOpenXrAPI1") then
	VRService_upvr.QuestDisplayRefreshRate = 90
end
local module_upvr = {
	ModuleName = "UserGui";
	KeepVRTopbarOpen = false;
	VRIsExclusive = false;
	VRClosesNonExclusive = false;
	SetVisible = nil;
}
VRHub_upvr:RegisterModule(module_upvr)
local vector2_upvr = Vector2.new(2.66 * var15_upvr, 2 * var15_upvr)
local any_Get_result1_upvr = Panel3D.Get(module_upvr.ModuleName)
any_Get_result1_upvr:SetType(Panel3D.Type.NewStandard)
any_Get_result1_upvr:GetPart().CanQuery = false
local vector2 = Vector2.new(2.7978, 2.09835)
any_Get_result1_upvr:ResizeStuds(vector2.x, vector2.y, 128)
any_Get_result1_upvr:SetVisible(false)
local var20_upvw
if IsSpatialRobloxGuiEnabled_upvr then
	var20_upvw = Panel3D.Get(require(CorePackages.Workspace.Packages.VrCompatibility).VRConstants.PositionLockedPanelName)
	config = {} -- Setting global
	config.uiManagerPanelPart = require(UIManager.UIManager).getInstance():createUI({
		panelType = var12.RobloxGui;
	}).panelObject
	var20_upvw:SetType(Panel3D.Type.UIManagerManaged, config)
else
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var20_upvw = Panel3D.Get(require(CorePackages.Workspace.Packages.VrCompatibility).VRConstants.PositionLockedPanelName)
	var20_upvw:SetType(Panel3D.Type.PositionLocked)
end
var20_upvw:GetPart().CanQuery = false
var20_upvw:ResizeStuds(vector2_upvr.x, vector2_upvr.y, 128)
var20_upvw:SetVisible(false)
var20_upvw.showCursor = true
VRHub_upvr.ModuleOpened.Event:connect(function(arg1) -- Line 107
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: VRHub_upvr (readonly)
		[3]: any_Get_result1_upvr (readonly)
	]]
	if arg1 ~= module_upvr.ModuleName and VRHub_upvr:GetModule(arg1).VRClosesNonExclusive and any_Get_result1_upvr:IsVisible() then
		module_upvr:SetVisible(false, nil)
	end
end)
local var23_upvw = false
local var24_upvw = false
function module_upvr.SetVisible(arg1, arg2, arg3) -- Line 119
	--[[ Upvalues[6]:
		[1]: var24_upvw (read and write)
		[2]: VRHub_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: var23_upvw (read and write)
		[5]: IsSpatialRobloxGuiEnabled_upvr (readonly)
		[6]: CoreGui_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	var24_upvw = arg2
	local var25
	if arg3 then
		var25 = arg3:SetVisible
		var25(var24_upvw)
	end
	var25 = var24_upvw
	if var25 then
		var25 = VRHub_upvr:FireModuleOpened
		var25(module_upvr.ModuleName)
	else
		var25 = VRHub_upvr:FireModuleClosed
		var25(module_upvr.ModuleName)
	end
	var25 = var24_upvw
	if var25 then
		var25 = not var23_upvw
	end
	if IsSpatialRobloxGuiEnabled_upvr then
		if not var25 or not arg3 or not arg3:GetPart() then
		end
		CoreGui_upvr:SetUserGuiRendering(true, nil, Enum.NormalId.Back)
	else
		if not var25 or not arg3 or not arg3:GetPart() then
		end
		CoreGui_upvr:SetUserGuiRendering(true, nil, Enum.NormalId.Front)
	end
end
function module_upvr.IsVisible(arg1) -- Line 140
	--[[ Upvalues[1]:
		[1]: var24_upvw (read and write)
	]]
	return var24_upvw
end
function module_upvr.Update(arg1) -- Line 144
	--[[ Upvalues[1]:
		[1]: var24_upvw (read and write)
	]]
	arg1:SetVisible(var24_upvw)
end
local var26_upvw = false
local function onGuiSelection() -- Line 149
	--[[ Upvalues[7]:
		[1]: VRHub_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: var20_upvw (read and write)
		[4]: var15_upvr (readonly)
		[5]: var26_upvw (read and write)
		[6]: vector2_upvr (readonly)
		[7]: GuiService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	VRHub_upvr.LaserPointer:updateInputUserCFrame()
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 27. Error Block 3 start (CF ANALYSIS FAILED)
	var20_upvw:StartLerp(vector2_upvr)
	var26_upvw = true
	do
		return
	end
	-- KONSTANTERROR: [33] 27. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 34. Error Block 4 start (CF ANALYSIS FAILED)
	var20_upvw:StartLerp(vector2_upvr * 0.25)
	module_upvr:SetVisible(false, var20_upvw)
	GuiService_upvr.SelectedObject = nil
	var26_upvw = false
	-- KONSTANTERROR: [41] 34. Error Block 4 end (CF ANALYSIS FAILED)
end
VRHub_upvr.ShowTopBarChanged.Event:connect(onGuiSelection)
GuiService_upvr:GetPropertyChangedSignal("MenuIsOpen"):Connect(onGuiSelection)
VRService_upvr.UserCFrameEnabled:Connect(onGuiSelection)
GuiService_upvr.PurchasePromptShown:Connect(function() -- Line 176
	--[[ Upvalues[1]:
		[1]: VRHub_upvr (readonly)
	]]
	if not VRHub_upvr.ShowTopBar then
		VRHub_upvr:SetShowTopBar(true)
	end
end)
local function onGuiSelectedObjectChanged(arg1) -- Line 183
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: VRHub_upvr (readonly)
	]]
	if GuiService_upvr.SelectedObject or GuiService_upvr.SelectedCoreObject then
		if not VRHub_upvr.ShowTopBar then
			VRHub_upvr:SetShowTopBar(true)
		end
	end
	GuiService_upvr.SelectedObject = nil
	GuiService_upvr.SelectedCoreObject = nil
end
GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(onGuiSelectedObjectChanged)
GuiService_upvr:GetPropertyChangedSignal("SelectedObject"):Connect(onGuiSelectedObjectChanged)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local InGameMenu_upvr = require(RobloxGui.Modules.InGameMenu)
local InGameMenuConstants_upvr = require(RobloxGui.Modules.InGameMenuConstants)
local function onVRMenuClicked_upvr(arg1) -- Line 196, Named "onVRMenuClicked"
	--[[ Upvalues[4]:
		[1]: VRHub_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: InGameMenu_upvr (readonly)
		[4]: InGameMenuConstants_upvr (readonly)
	]]
	if arg1 == "OpenVRMenu" then
		if not VRHub_upvr.ShowTopBar then
			VRHub_upvr:SetShowTopBar(true)
			RbxAnalyticsService_upvr:ReportCounter("VR-BindAction-ToggleGui-On")
		else
			VRHub_upvr:SetShowTopBar(false)
			InGameMenu_upvr.closeInGameMenu()
			RbxAnalyticsService_upvr:ReportCounter("VR-BindAction-ToggleGui-Off")
		end
	end
	if arg1 == "OpenIGMenu" then
		if not VRHub_upvr.ShowTopBar then
			VRHub_upvr:SetShowTopBar(true)
		end
		if not InGameMenu_upvr.getOpen() then
			InGameMenu_upvr.openInGameMenu(InGameMenuConstants_upvr.MainPagePageKey)
		end
	end
end
local function handleAction(arg1, arg2, arg3) -- Line 221
	--[[ Upvalues[1]:
		[1]: onVRMenuClicked_upvr (readonly)
	]]
	if arg2 == Enum.UserInputState.Begin then
		onVRMenuClicked_upvr(arg1)
	end
end
if isInExperienceUIVREnabled then
	function module_upvr.isInputNeededForOpenVRMenu(arg1, arg2) -- Line 232
		local var31
		if arg2.KeyCode ~= Enum.KeyCode.ButtonSelect then
			var31 = false
		else
			var31 = true
		end
		return var31
	end
	local InputHandlers_upvr = require(CorePackages.Packages.InputHandlers)
	local var33_upvw = false
	local var34_upvw = false
	local UIManager_upvw = require(UIManager.UIManager)
	function module_upvr.getOpenVRMenuHandler(arg1) -- Line 236
		--[[ Upvalues[5]:
			[1]: InputHandlers_upvr (readonly)
			[2]: var33_upvw (read and write)
			[3]: var34_upvw (read and write)
			[4]: UIManager_upvw (read and write)
			[5]: onVRMenuClicked_upvr (readonly)
		]]
		local tbl_3 = {
			onPress = function() -- Line 238, Named "onPress"
				--[[ Upvalues[2]:
					[1]: var33_upvw (copied, read and write)
					[2]: var34_upvw (copied, read and write)
				]]
				var33_upvw = true
				var34_upvw = false
			end;
			hold = {
				durationSeconds = 1;
				onComplete = function() -- Line 244, Named "onComplete"
					--[[ Upvalues[2]:
						[1]: var34_upvw (copied, read and write)
						[2]: UIManager_upvw (copied, read and write)
					]]
					var34_upvw = true
					UIManager_upvw.getInstance():resetDragAndDrop()
				end;
				allowReleaseAfterHold = true;
			};
		}
		function tbl_3.onRelease() -- Line 250
			--[[ Upvalues[3]:
				[1]: var34_upvw (copied, read and write)
				[2]: onVRMenuClicked_upvr (copied, readonly)
				[3]: var33_upvw (copied, read and write)
			]]
			if not var34_upvw then
				onVRMenuClicked_upvr("OpenVRMenu")
			end
			var33_upvw = false
			var34_upvw = false
		end
		local any_handleInput_result1_upvr = InputHandlers_upvr.handleInput(tbl_3)
		return function(arg1_2, arg2, arg3) -- Line 258
			--[[ Upvalues[1]:
				[1]: any_handleInput_result1_upvr (readonly)
			]]
			local tbl_2 = {}
			local tbl = {}
			tbl.UserInputState = arg2
			tbl_2.eventData = tbl
			any_handleInput_result1_upvr(tbl_2)
		end
	end
end
if game:DefineFastFlag("FixVRActionBinding", false) or isInExperienceUIVREnabled then
	if isInExperienceUIVREnabled then
		InputHandlers_upvr = ContextActionService:BindCoreAction
		InputHandlers_upvr("OpenVRMenu", module_upvr:getOpenVRMenuHandler(), false, Enum.KeyCode.ButtonSelect)
	else
		InputHandlers_upvr = ContextActionService:BindCoreAction
		InputHandlers_upvr("OpenVRMenu", handleAction, false, Enum.KeyCode.ButtonSelect)
	end
else
	InputHandlers_upvr = ContextActionService:BindAction
	InputHandlers_upvr("OpenVRMenu", handleAction, false, Enum.KeyCode.ButtonSelect)
end
InputHandlers_upvr = ContextActionService:BindAction
InputHandlers_upvr("OpenIGMenu", handleAction, false, Enum.KeyCode.ButtonStart)
function InputHandlers_upvr() -- Line 285, Named "OnVREnabledChanged"
	--[[ Upvalues[6]:
		[1]: VRService_upvr (readonly)
		[2]: any_Get_result1_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: var20_upvw (read and write)
		[6]: VRHub_upvr (readonly)
	]]
	if not VRService_upvr.VREnabled then
		any_Get_result1_upvr:SetVisible(false)
		CoreGui_upvr:SetUserGuiRendering(false, nil, Enum.NormalId.Front)
	else
		module_upvr:SetVisible(false, any_Get_result1_upvr)
		module_upvr:SetVisible(true, var20_upvw)
		VRHub_upvr:SetShowTopBar(true)
	end
end
local var42 = InputHandlers_upvr
VRService_upvr:GetPropertyChangedSignal("VREnabled"):connect(var42)
var42()
VirtualKeyboard.OpenedEvent:connect(function() -- Line 298
	--[[ Upvalues[2]:
		[1]: var23_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	var23_upvw = true
	module_upvr:Update()
end)
VirtualKeyboard.ClosedEvent:connect(function() -- Line 303
	--[[ Upvalues[2]:
		[1]: var23_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	var23_upvw = false
	module_upvr:Update()
end)
VRHub_upvr:SetShowTopBar(true)
onGuiSelection()
function module_upvr.getPanel(arg1) -- Line 311
	--[[ Upvalues[1]:
		[1]: var20_upvw (read and write)
	]]
	return var20_upvw
end
return module_upvr