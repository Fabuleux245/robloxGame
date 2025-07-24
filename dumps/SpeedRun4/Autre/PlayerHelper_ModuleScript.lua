-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:56
-- Luau version 6, Types version 3
-- Time taken: 0.003552 seconds

local RunService_upvr = game:GetService("RunService")
local module_upvr = {
	initStarted = false;
	TestModel = nil;
	hrp = nil;
	humanoid = nil;
	player = nil;
}
local Players_upvr = game:GetService("Players")
function module_upvr.Init() -- Line 15
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	if module_upvr.initStarted then
	else
		module_upvr.initStarted = true
		local any_WaitForExpression_result1_upvr = module_upvr.WaitForExpression(function() -- Line 23
			--[[ Upvalues[1]:
				[1]: Players_upvr (copied, readonly)
			]]
			return Players_upvr.LocalPlayer
		end, 10, "Players.LocalPlayer not found")
		module_upvr.player = any_WaitForExpression_result1_upvr
		if any_WaitForExpression_result1_upvr.Character == nil and RunService_upvr:IsServer() then
			any_WaitForExpression_result1_upvr:LoadCharacter()
		end
		module_upvr.WaitForExpression(function() -- Line 33
			--[[ Upvalues[1]:
				[1]: any_WaitForExpression_result1_upvr (readonly)
			]]
			return any_WaitForExpression_result1_upvr.Character
		end, 10, "LocalPlayer.Character not found")
		module_upvr.hrp = any_WaitForExpression_result1_upvr.Character:WaitForChild("HumanoidRootPart")
		module_upvr.humanoid = any_WaitForExpression_result1_upvr.Character:WaitForChild("Humanoid")
		if module_upvr.TestModel == nil then
			module_upvr.TestModel = Instance.new("Model")
			module_upvr.TestModel.Name = "_TestContainer"
			module_upvr.TestModel.Parent = workspace
		end
		module_upvr.PlayerGui = Players_upvr.LocalPlayer:WaitForChild("PlayerGui")
	end
end
function module_upvr.AddInstance(arg1) -- Line 50
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any = Instance.new(arg1)
	any.Parent = module_upvr.TestModel
	return any
end
function module_upvr.CleanUpAfterTest() -- Line 57
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.TestModel:ClearAllChildren()
end
function module_upvr.SetCameraFOV(arg1) -- Line 61
	workspace.CurrentCamera.FieldOfView = arg1
end
function module_upvr.IsPartOnscreen(arg1) -- Line 65
	local any_WorldToViewportPoint_result1_2, any_WorldToViewportPoint_result2 = workspace.CurrentCamera:WorldToViewportPoint(arg1.Position)
	return any_WorldToViewportPoint_result2
end
function module_upvr.GetPartViewportPixelPosition(arg1) -- Line 71
	local any_WorldToViewportPoint_result1, _ = workspace.CurrentCamera:WorldToViewportPoint(arg1.Position)
	return Vector2.new(any_WorldToViewportPoint_result1.x, any_WorldToViewportPoint_result1.y)
end
function module_upvr.MovePlayerToPosition(arg1) -- Line 78
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.hrp ~= nil then
		module_upvr.hrp.CFrame = CFrame.new() + arg1 + Vector3.new(0, 1 + module_upvr.humanoid.HipHeight, 0)
	end
end
function module_upvr.SetPlayerCamera(arg1, arg2) -- Line 87
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local CurrentCamera = workspace.CurrentCamera
	CurrentCamera.CameraType = Enum.CameraType.Scriptable
	CurrentCamera.CFrame = CFrame.new(Vector3.new(), arg1) + module_upvr.player.Character:WaitForChild("Head", 10).Position - arg2 * arg1.Unit
end
function module_upvr.WaitNFrames(arg1) -- Line 98
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	for _ = 1, arg1 do
		RunService_upvr.RenderStepped:Wait()
	end
end
function module_upvr.WaitWallTime(arg1) -- Line 107
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var14
	if 2 < var14 then
		warn("Requested wait time too long, waiting 2s")
		var14 = 2
	end
	while true do
		if var14 < tick() - tick() then return end
		module_upvr.WaitNFrames(1)
	end
end
function module_upvr.WaitGameTime(arg1) -- Line 125
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local any_Wait_result1, _ = RunService_upvr.Stepped:Wait()
	while any_Wait_result1 - any_Wait_result1 < arg1 do
		local _, _ = RunService_upvr.Stepped:Wait()
	end
end
function module_upvr.WaitForExpression(arg1, arg2, arg3) -- Line 134
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var19
	while not var19 and tick() - tick() < arg2 do
		module_upvr.WaitNFrames(1)
		var19 = arg1()
	end
	if not var19 then
		error(arg3)
	end
	return var19
end
local GuiService_upvr = game:GetService("GuiService")
function module_upvr.GetCornersOfBillboardGui(arg1) -- Line 152
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local var21 = module_upvr.GetPartViewportPixelPosition(arg1.Adornee) - GuiService_upvr:GetGuiInset() + Vector2.new(arg1.SizeOffset.x * arg1.AbsoluteSize.x, arg1.SizeOffset.y * arg1.AbsoluteSize.y)
	local AbsoluteSize = arg1.AbsoluteSize
	return {
		center = var21;
		topLeft = var21 - AbsoluteSize / 2 + Vector2.new(1, 1);
		topRight = var21 + Vector2.new(AbsoluteSize.x / 2 - 1, -AbsoluteSize.y / 2 + 1);
		bottomRight = var21 + Vector2.new(AbsoluteSize.x / 2 - 1, AbsoluteSize.y / 2 - 1);
		bottomLeft = var21 + Vector2.new(-AbsoluteSize.x / 2 + 1, AbsoluteSize.y / 2 - 1);
	}
end
return module_upvr