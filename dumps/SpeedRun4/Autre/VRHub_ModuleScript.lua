-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:33
-- Luau version 6, Types version 3
-- Time taken: 0.007804 seconds

local VRService_upvr = game:GetService("VRService")
local StarterGui = game:GetService("StarterGui")
local CorePackages = game:GetService("CorePackages")
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local LaserPointer_upvr = require(CorePackages.Workspace.Packages.VrCommon).LaserPointer
local SplashScreenManager = require(CorePackages.Workspace.Packages.SplashScreenManager).SplashScreenManager
local module_2_upvr = {}
local tbl_upvr_2 = {}
local tbl_upvr = {}
module_2_upvr.LaserPointer = nil
module_2_upvr.ControllerModelsEnabled = false
module_2_upvr.LeftControllerModel = nil
module_2_upvr.RightControllerModel = nil
module_2_upvr.isFPSAtTarget = SplashScreenManager.isFPSAtTarget()
module_2_upvr.SafetyBubble = nil
module_2_upvr.IsFirstPerson = false
StarterGui:RegisterSetCore("VRLaserPointerMode", function(arg1) -- Line 44
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: LaserPointer_upvr (readonly)
	]]
	if not module_2_upvr.LaserPointer then
	else
		if not arg1 or not tostring(arg1) then return end
		local var11 = LaserPointer_upvr.Mode[tostring(arg1)]
		if not var11 then
			var11 = LaserPointer_upvr.Mode.Disabled
		end
		module_2_upvr.LaserPointer:setMode(var11)
	end
end)
local VRControllerModel_upvr = require(CorePackages.Workspace.Packages.VrCommon).VRControllerModel
local function enableControllerModels_upvr(arg1) -- Line 54, Named "enableControllerModels"
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: VRControllerModel_upvr (readonly)
	]]
	if arg1 ~= module_2_upvr.ControllerModelsEnabled then
		module_2_upvr.ControllerModelsEnabled = arg1
		if arg1 then
			if not module_2_upvr.LeftControllerModel then
				module_2_upvr.LeftControllerModel = VRControllerModel_upvr.new(Enum.UserCFrame.LeftHand)
			end
			module_2_upvr.LeftControllerModel:setEnabled(true)
			if not module_2_upvr.RightControllerModel then
				module_2_upvr.RightControllerModel = VRControllerModel_upvr.new(Enum.UserCFrame.RightHand)
			end
			module_2_upvr.RightControllerModel:setEnabled(true)
			return
		end
		if module_2_upvr.LeftControllerModel then
			module_2_upvr.LeftControllerModel:setEnabled(false)
		end
		if module_2_upvr.RightControllerModel then
			module_2_upvr.RightControllerModel:setEnabled(false)
		end
	end
end
StarterGui:RegisterSetCore("VREnableControllerModels", function(arg1) -- Line 83
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	if arg1 then
		VRService_upvr.ControllerModels = Enum.VRControllerModelMode.Transparent
	else
		VRService_upvr.ControllerModels = Enum.VRControllerModelMode.Disabled
	end
end)
VRService_upvr:GetPropertyChangedSignal("ControllerModels"):Connect(function() -- Line 91
	--[[ Upvalues[2]:
		[1]: enableControllerModels_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	local var15
	if VRService_upvr.ControllerModels ~= Enum.VRControllerModelMode.Transparent then
		var15 = false
	else
		var15 = true
	end
	enableControllerModels_upvr(var15)
end)
local tick_result1_upvw = tick()
local function onRenderSteppedLast_upvr() -- Line 96, Named "onRenderSteppedLast"
	--[[ Upvalues[2]:
		[1]: tick_result1_upvw (read and write)
		[2]: module_2_upvr (readonly)
	]]
	local tick_result1 = tick()
	local var18 = tick_result1 - tick_result1_upvw
	tick_result1_upvw = tick_result1
	if module_2_upvr.LaserPointer then
		module_2_upvr.LaserPointer:update(var18)
	end
	if module_2_upvr.LeftControllerModel then
		module_2_upvr.LeftControllerModel:update(var18)
	end
	if module_2_upvr.RightControllerModel then
		module_2_upvr.RightControllerModel:update(var18)
	end
	if module_2_upvr.SafetyBubble then
		module_2_upvr.SafetyBubble:update(var18)
	end
end
local function onCameraCFrameChanged_upvr() -- Line 117, Named "onCameraCFrameChanged"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if module_2_upvr.LaserPointer then
		module_2_upvr.LaserPointer:update(0)
	end
	if module_2_upvr.LeftControllerModel then
		module_2_upvr.LeftControllerModel:update(0)
	end
	if module_2_upvr.RightControllerModel then
		module_2_upvr.RightControllerModel:update(0)
	end
end
local var19_upvw
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 135, Named "onCurrentCameraChanged"
	--[[ Upvalues[2]:
		[1]: var19_upvw (read and write)
		[2]: onCameraCFrameChanged_upvr (readonly)
	]]
	if var19_upvw then
		var19_upvw:disconnect()
	end
	if workspace.CurrentCamera then
		var19_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(onCameraCFrameChanged_upvr)
	end
end)
if var19_upvw then
	var19_upvw:disconnect()
end
if workspace.CurrentCamera then
	var19_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(onCameraCFrameChanged_upvr)
end
local UserInputService_upvr = game:GetService("UserInputService")
local RunService_upvr = game:GetService("RunService")
local any_GenerateGUID_result1_upvr = game:GetService("HttpService"):GenerateGUID(true)
local SafetyBubble_upvr = require(script.Parent.SafetyBubble)
local ContextActionService_upvr = game:GetService("ContextActionService")
local function onVREnabledChanged_upvr() -- Line 147, Named "onVREnabledChanged"
	--[[ Upvalues[10]:
		[1]: VRService_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: LaserPointer_upvr (readonly)
		[5]: enableControllerModels_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: any_GenerateGUID_result1_upvr (readonly)
		[8]: onRenderSteppedLast_upvr (readonly)
		[9]: SafetyBubble_upvr (readonly)
		[10]: ContextActionService_upvr (readonly)
	]]
	local var25
	if VRService_upvr.VREnabled then
		var25 = Enum.MouseBehavior.LockCenter
		UserInputService_upvr.MouseBehavior = var25
		var25 = Enum.OverrideMouseIconBehavior.ForceHide
		UserInputService_upvr.OverrideMouseIconBehavior = var25
		var25 = module_2_upvr
		if not var25.LaserPointer then
			var25 = LaserPointer_upvr.new()
			module_2_upvr.LaserPointer = var25
		end
		var25 = module_2_upvr
		if var25.LaserPointer then
			var25 = module_2_upvr
			if var25.isFPSAtTarget then
				var25 = module_2_upvr
				var25.LaserPointer:setMode(LaserPointer_upvr.Mode.Navigation)
			else
				var25 = module_2_upvr
				var25.LaserPointer:setMode(LaserPointer_upvr.Mode.Disabled)
			end
		end
		if VRService_upvr.ControllerModels ~= Enum.VRControllerModelMode.Transparent then
			var25 = false
		else
			var25 = true
		end
		enableControllerModels_upvr(var25)
		RunService_upvr:BindToRenderStep(any_GenerateGUID_result1_upvr, Enum.RenderPriority.Last.Value, onRenderSteppedLast_upvr)
		var25 = module_2_upvr
		if var25.LaserPointer then
			var25 = module_2_upvr
			var25.LaserPointer:setForcePointer(true)
		end
		var25 = Enum.OverrideMouseIconBehavior.ForceHide
		UserInputService_upvr.OverrideMouseIconBehavior = var25
		var25 = SafetyBubble_upvr.new()
		module_2_upvr.SafetyBubble = var25
		ContextActionService_upvr:BindCoreActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonR2)
	else
		if module_2_upvr.LaserPointer then
			module_2_upvr.LaserPointer:setMode(LaserPointer_upvr.Mode.Disabled)
		end
		RunService_upvr:UnbindFromRenderStep(any_GenerateGUID_result1_upvr)
	end
end
local function _(arg1) -- Line 186, Named "onVREnabled"
	--[[ Upvalues[1]:
		[1]: onVREnabledChanged_upvr (readonly)
	]]
	if arg1 ~= "VREnabled" then
	else
		onVREnabledChanged_upvr()
	end
end
local function onVRSessionStateChanged_upvr() -- Line 193, Named "onVRSessionStateChanged"
	--[[ Upvalues[4]:
		[1]: VRService_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: LaserPointer_upvr (readonly)
		[4]: enableControllerModels_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var27
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 31. Error Block 30 start (CF ANALYSIS FAILED)
	if VRService_upvr.ControllerModels ~= Enum.VRControllerModelMode.Transparent then
		var27 = false
	else
		var27 = true
	end
	enableControllerModels_upvr(var27)
	do
		return
	end
	-- KONSTANTERROR: [45] 31. Error Block 30 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 40. Error Block 24 start (CF ANALYSIS FAILED)
	var27 = module_2_upvr
	if var27.LaserPointer then
		var27 = module_2_upvr.LaserPointer.Mode
		if var27.Navigation then
			var27 = module_2_upvr
			var27.LaserPointer:setMode(LaserPointer_upvr.Mode.Disabled)
		end
	end
	var27 = module_2_upvr
	if var27.ControllerModelsEnabled then
		var27 = false
		enableControllerModels_upvr(var27)
	end
	-- KONSTANTERROR: [57] 40. Error Block 24 end (CF ANALYSIS FAILED)
end
onVREnabledChanged_upvr()
VRService_upvr.Changed:connect(function(arg1) -- Line 212, Named "onVRPropertyChanged"
	--[[ Upvalues[2]:
		[1]: onVREnabledChanged_upvr (readonly)
		[2]: onVRSessionStateChanged_upvr (readonly)
	]]
	if arg1 == "VREnabled" then
		onVREnabledChanged_upvr()
	elseif arg1 == "VRSessionState" then
		onVRSessionStateChanged_upvr()
	end
end)
function module_2_upvr.RegisterModule(arg1, arg2) -- Line 224
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	tbl_upvr_2[arg2.ModuleName] = arg2
end
function module_2_upvr.GetModule(arg1, arg2) -- Line 228
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	return tbl_upvr_2[arg2]
end
function module_2_upvr.IsModuleOpened(arg1, arg2) -- Line 232
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var28
	if tbl_upvr[arg2] == nil then
		var28 = false
	else
		var28 = true
	end
	return var28
end
function module_2_upvr.GetOpenedModules(arg1) -- Line 236
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module = {}
	for _, v in pairs(tbl_upvr) do
		table.insert(module, v)
	end
	return module
end
module_2_upvr.ModuleOpened = Create("BindableEvent")({
	Name = "VRModuleOpened";
})
function module_2_upvr.FireModuleOpened(arg1, arg2) -- Line 250
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	if not tbl_upvr_2[arg2] then
		error("Tried to open module that is not registered: "..arg2)
	end
	if tbl_upvr[arg2] ~= tbl_upvr_2[arg2] then
		tbl_upvr[arg2] = tbl_upvr_2[arg2]
		module_2_upvr.ModuleOpened:Fire(arg2)
	end
end
module_2_upvr.ModuleClosed = Create("BindableEvent")({
	Name = "VRModuleClosed";
})
function module_2_upvr.FireModuleClosed(arg1, arg2) -- Line 265
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	if not tbl_upvr_2[arg2] then
		error("Tried to close module that is not registered: "..arg2)
	end
	if tbl_upvr[arg2] ~= nil then
		tbl_upvr[arg2] = nil
		module_2_upvr.ModuleClosed:Fire(arg2)
	end
end
function module_2_upvr.KeepVRTopbarOpen(arg1) -- Line 276
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	for _, v_2 in pairs(tbl_upvr) do
		if v_2.KeepVRTopbarOpen then
			return true
		end
	end
	return false
end
module_2_upvr.ShowHighlightedLeaveGameIcon = false
module_2_upvr.ShowHighlightedLeaveGameIconToggled = Create("BindableEvent")({
	Name = "ShowHighlightedLeaveGameIconToggled";
})
function module_2_upvr.SetShowHighlightedLeaveGameIconToggled(arg1, arg2) -- Line 291
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if module_2_upvr.ShowHighlightedLeaveGameIcon ~= arg2 then
		module_2_upvr.ShowHighlightedLeaveGameIcon = arg2
		module_2_upvr.ShowHighlightedLeaveGameIconToggled:Fire()
	end
end
module_2_upvr.ShowTopBar = true
module_2_upvr.ShowMoreMenu = false
module_2_upvr.ShowTopBarChanged = Create("BindableEvent")({
	Name = "ShowTopBarChanged";
})
module_2_upvr.ShowMoreMenuChanged = Create("BindableEvent")({
	Name = "ShowMoreMenuChanged";
})
function module_2_upvr.SetShowTopBar(arg1, arg2) -- Line 309
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if module_2_upvr.ShowTopBar ~= arg2 then
		module_2_upvr.ShowTopBar = arg2
		module_2_upvr.ShowTopBarChanged:Fire()
	end
end
function module_2_upvr.SetShowMoreMenu(arg1, arg2) -- Line 316
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if module_2_upvr.ShowMoreMenu ~= arg2 then
		module_2_upvr.ShowMoreMenu = arg2
		module_2_upvr.ShowMoreMenuChanged:Fire()
	end
end
function module_2_upvr.ToggleSafetyBubble(arg1) -- Line 323
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if module_2_upvr.SafetyBubble then
		module_2_upvr.SafetyBubble:ToggleEnabled()
	end
end
function module_2_upvr.GetControllerModel(arg1, arg2) -- Line 329
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg2 == Enum.UserCFrame.LeftHand then
		return module_2_upvr.LeftControllerModel
	end
	if arg2 == Enum.UserCFrame.RightHand then
		return module_2_upvr.RightControllerModel
	end
	return nil
end
function module_2_upvr.GetControllerButtonPosition(arg1, arg2) -- Line 339
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local LeftControllerModel = module_2_upvr.LeftControllerModel
	if LeftControllerModel then
		LeftControllerModel = module_2_upvr.LeftControllerModel:getButtonPosition(arg2)
	end
	local RightControllerModel = module_2_upvr.RightControllerModel
	if RightControllerModel then
		RightControllerModel = module_2_upvr.RightControllerModel:getButtonPosition(arg2)
	end
	return LeftControllerModel, RightControllerModel
end
SplashScreenManager.addStatusChangeListener(function(arg1) -- Line 345
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: onVREnabledChanged_upvr (readonly)
	]]
	module_2_upvr.isFPSAtTarget = arg1
	onVREnabledChanged_upvr()
end)
return module_2_upvr