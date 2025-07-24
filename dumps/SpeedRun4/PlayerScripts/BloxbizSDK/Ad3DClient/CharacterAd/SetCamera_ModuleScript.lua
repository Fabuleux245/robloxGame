-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:44
-- Luau version 6, Types version 3
-- Time taken: 0.004447 seconds

local TweenService_upvr = game:GetService("TweenService")
local Workspace_upvr = game:GetService("Workspace")
local RunService_upvr = game:GetService("RunService")
local LocalPlayer_upvr = game.Players.LocalPlayer
local module_upvr = {
	cameraTweenActive = false;
	currentCameraTween = nil;
	currentCameraCf = nil;
	transparencyModule = nil;
	previousMinZoom = nil;
	getCameraModuleCf = function() -- Line 18, Named "getCameraModuleCf"
		--[[ Upvalues[2]:
			[1]: RunService_upvr (readonly)
			[2]: Workspace_upvr (readonly)
		]]
		local var6_upvw
		RunService_upvr:BindToRenderStep("BLOXBIZ_CAMERA_CF_FETCH", Enum.RenderPriority.Camera.Value + 1, function() -- Line 21
			--[[ Upvalues[2]:
				[1]: Workspace_upvr (copied, readonly)
				[2]: var6_upvw (read and write)
			]]
			if Workspace_upvr.CurrentCamera then
				var6_upvw = Workspace_upvr.CurrentCamera.CFrame
			end
		end)
		repeat
			task.wait()
		until var6_upvw
		return var6_upvw
	end;
}
function module_upvr.makeCharacterVisible() -- Line 34
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.transparencyModule:Update()
	module_upvr.transparencyModule.transparencyDirty = true
end
function module_upvr.storeCharacterTransparency(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	module_upvr.PreviousCharacterTransparency = {}
	module_upvr.transparencyModule = require(LocalPlayer_upvr.PlayerScripts:WaitForChild("PlayerModule").CameraModule.TransparencyController).new()
	module_upvr.transparencyModule:SetupTransparency(arg1)
	for i, _ in pairs(module_upvr.transparencyModule.cachedParts) do
		module_upvr.PreviousCharacterTransparency[i] = i.LocalTransparencyModifier
	end
end
function module_upvr.restoreCharacterTransparency() -- Line 50
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for i_2, _ in pairs(module_upvr.transparencyModule.cachedParts) do
		i_2.LocalTransparencyModifier = module_upvr.PreviousCharacterTransparency[i_2]
	end
end
local Raycast_upvr = require(script.Parent.Raycast)
function module_upvr.getInteractionPosition(arg1, arg2, arg3) -- Line 56
	--[[ Upvalues[1]:
		[1]: Raycast_upvr (readonly)
	]]
	local PrimaryPart = arg3.PrimaryPart
	local var22
	for i_3 = 270, -90, -15 do
		local camera_distance = arg1.camera_distance
		local Position = (PrimaryPart.CFrame * CFrame.new(camera_distance * math.cos(math.rad(i_3)), arg1.camera_height, camera_distance * math.sin(math.rad(i_3)))).Position
		local any_raycastPositionToPart_result1 = Raycast_upvr.raycastPositionToPart(Position, PrimaryPart)
		if any_raycastPositionToPart_result1 and (any_raycastPositionToPart_result1 == PrimaryPart or any_raycastPositionToPart_result1:FindFirstAncestor(arg2.Name) == arg2) then
			var22 = Position
			return var22
		end
	end
	return var22
end
function module_upvr.getPlayerAngle(arg1, arg2) -- Line 81
	local any_ToWorldSpace_result1 = arg1.AdModel.PrimaryPart.CFrame:ToWorldSpace(CFrame.new(Vector3.new(0, 0, 1)))
	local Unit_2 = (arg1.AdModel.PrimaryPart.Position - any_ToWorldSpace_result1.Position).Unit
	local Unit = (arg2.PrimaryPart.Position - any_ToWorldSpace_result1.Position).Unit
	return math.floor(math.deg(math.atan2(Unit_2:Cross(Unit).Magnitude, Unit_2:Dot(Unit))))
end
function module_upvr.setCamera(arg1, arg2, arg3, arg4) -- Line 91
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: Workspace_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local var29
	if module_upvr.cameraTweenActive or module_upvr.currentCameraTween then return end
	var29 = arg3
	if not module_upvr.getInteractionPosition(arg1, arg2, var29) then
		return false
	end
	local CurrentCamera_upvr_2 = Workspace_upvr.CurrentCamera
	var29 = Enum.CameraType.Custom
	if CurrentCamera_upvr_2.CameraType ~= var29 then
		return false
	end
	local CustomCameraCf = arg3:FindFirstChild("CustomCameraCf")
	if module_upvr.getPlayerAngle(arg2, LocalPlayer_upvr.Character) >= 50 then
		var29 = false
	else
		var29 = true
		local var32
	end
	if CustomCameraCf and not var29 then
		var32 = (arg2.AdModel.PrimaryPart.CFrame * CustomCameraCf.Value).Position
	end
	module_upvr.cameraTweenActive = true
	if not script:FindFirstChild("currentCameraCf") then
		local CFrameValue_upvw = Instance.new("CFrameValue")
		CFrameValue_upvw.Name = "currentCameraCf"
		CFrameValue_upvw.Parent = script
		module_upvr.currentCameraCf = CFrameValue_upvw
	end
	module_upvr.previousMinZoom = LocalPlayer_upvr.CameraMinZoomDistance
	LocalPlayer_upvr.CameraMinZoomDistance = 15
	CFrameValue_upvw.Value = CurrentCamera_upvr_2.CFrame
	local any_Create_result1 = TweenService_upvr:Create(CFrameValue_upvw, TweenInfo.new(arg4 or 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		Value = CFrame.new(CFrame.new(var32).Position, arg3.PrimaryPart.CFrame.Position);
	})
	module_upvr.currentCameraTween = any_Create_result1
	any_Create_result1:Play()
	RunService_upvr:BindToRenderStep("BLOXBIZ_CAMERA_TWEEN", Enum.RenderPriority.Last.Value + 999, function() -- Line 146
		--[[ Upvalues[2]:
			[1]: CurrentCamera_upvr_2 (readonly)
			[2]: CFrameValue_upvw (read and write)
		]]
		CurrentCamera_upvr_2.CFrame = CFrameValue_upvw.Value
	end)
	return true
end
function module_upvr.resetCamera(arg1) -- Line 153
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: Workspace_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	if module_upvr.cameraTweenActive == false then
	else
		module_upvr.cameraTweenActive = false
		local CurrentCamera_upvr = Workspace_upvr.CurrentCamera
		local Character = LocalPlayer_upvr.Character
		if not Character then
			Character = LocalPlayer_upvr.CharacterAdded:Wait()
		end
		CurrentCamera_upvr.CameraSubject = Character:WaitForChild("Humanoid")
		LocalPlayer_upvr.CameraMinZoomDistance = module_upvr.previousMinZoom
		local currentCameraCf_upvr = script:FindFirstChild("currentCameraCf")
		currentCameraCf_upvr.Value = CurrentCamera_upvr.CFrame
		module_upvr.currentCameraCf = currentCameraCf_upvr
		local any_Create_result1_2 = TweenService_upvr:Create(currentCameraCf_upvr, TweenInfo.new(arg1 or 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
			Value = module_upvr.getCameraModuleCf();
		})
		module_upvr.currentCameraTween = any_Create_result1_2
		any_Create_result1_2:Play()
		RunService_upvr:UnbindFromRenderStep("BLOXBIZ_CAMERA_TWEEN")
		RunService_upvr:BindToRenderStep("BLOXBIZ_CAMERA_TWEEN", Enum.RenderPriority.Last.Value + 999, function() -- Line 181
			--[[ Upvalues[2]:
				[1]: CurrentCamera_upvr (readonly)
				[2]: currentCameraCf_upvr (readonly)
			]]
			CurrentCamera_upvr.CFrame = currentCameraCf_upvr.Value
		end)
		task.wait(arg1 or 0.3)
		RunService_upvr:UnbindFromRenderStep("BLOXBIZ_CAMERA_TWEEN")
		module_upvr.currentCameraTween = nil
	end
end
return module_upvr