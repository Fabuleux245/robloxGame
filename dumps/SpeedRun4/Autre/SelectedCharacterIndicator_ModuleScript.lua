-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:36
-- Luau version 6, Types version 3
-- Time taken: 0.004435 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local function removeScripts_upvr(arg1) -- Line 22, Named "removeScripts"
	for _, v in ipairs(arg1:GetDescendants()) do
		if v:IsA("LuaSourceContainer") then
			v:Destroy()
		end
	end
end
local CurrentCamera_upvr = game:GetService("Workspace").CurrentCamera
local TweenService_upvr = game:GetService("TweenService")
local RunService_upvr = game:GetService("RunService")
local function ApplyArrow_upvr(arg1, arg2) -- Line 30, Named "ApplyArrow"
	--[[ Upvalues[4]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: removeScripts_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	local Model_upvr = Instance.new("Model")
	Model_upvr.Name = "ContextMenuArrow"
	Model_upvr.Parent = CurrentCamera_upvr
	local class_Humanoid = arg1:FindFirstChildOfClass("Humanoid")
	if class_Humanoid == nil then
		class_Humanoid = arg1:WaitForChild("Humanoid", 15)
		if class_Humanoid == nil then return end
	end
	local clone_upvr_2 = arg2.SelectedCharacterIndicator:Clone()
	removeScripts_upvr(clone_upvr_2)
	clone_upvr_2.Anchored = true
	clone_upvr_2.Transparency = 0
	clone_upvr_2.CanCollide = false
	clone_upvr_2.Parent = Model_upvr
	local any_Create_result1_upvr_2 = TweenService_upvr:Create(clone_upvr_2, TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false), {
		Orientation = Vector3.new(0, 360, 180);
	})
	any_Create_result1_upvr_2:Play()
	local HumanoidRootPart_upvr_2 = arg1:WaitForChild("HumanoidRootPart")
	local var23_upvw = false
	local function kill() -- Line 64
		--[[ Upvalues[4]:
			[1]: var23_upvw (read and write)
			[2]: Model_upvr (readonly)
			[3]: any_Create_result1_upvr_2 (readonly)
			[4]: RunService_upvr (copied, readonly)
		]]
		if var23_upvw then
		else
			var23_upvw = true
			Model_upvr:Destroy()
			any_Create_result1_upvr_2:Destroy()
			RunService_upvr:UnbindFromRenderStep("ContextActionMenuRenderArrow")
		end
	end
	class_Humanoid.Died:Connect(kill)
	arg1.AncestryChanged:Connect(kill)
	RunService_upvr:BindToRenderStep("ContextActionMenuRenderArrow", Enum.RenderPriority.Camera.Value + 1, function() -- Line 59, Named "update"
		--[[ Upvalues[2]:
			[1]: clone_upvr_2 (readonly)
			[2]: HumanoidRootPart_upvr_2 (readonly)
		]]
		clone_upvr_2.Position = HumanoidRootPart_upvr_2.Position + Vector3.new(0, 5, 0)
	end)
	Model_upvr.Parent = CurrentCamera_upvr
	return kill
end
function module_upvr.ChangeSelectedPlayer(arg1, arg2, arg3) -- Line 82
	--[[ Upvalues[1]:
		[1]: ApplyArrow_upvr (readonly)
	]]
	coroutine.wrap(function() -- Line 83
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: ApplyArrow_upvr (copied, readonly)
			[4]: arg3 (readonly)
		]]
		if arg1.SelectedPlayer then
			arg1.SelectedPlayer = nil
			arg1.CharacterAddedConn:Disconnect()
			arg1.CharacterAddedConn = nil
			if arg1.KillOldRenderFunction then
				arg1.KillOldRenderFunction()
				arg1.KillOldRenderFunction = nil
			end
		end
		if arg2 then
			arg1.SelectedPlayer = arg2
			arg1.CharacterAddedConn = arg2.CharacterAdded:Connect(function(arg1_3) -- Line 96
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: ApplyArrow_upvr (copied, readonly)
					[3]: arg3 (copied, readonly)
				]]
				if arg1.KillOldRenderFunction then
					arg1.KillOldRenderFunction()
				end
				arg1.KillOldRenderFunction = ApplyArrow_upvr(arg1_3, arg3)
			end)
			if arg2.Character then
				arg1.KillOldRenderFunction = ApplyArrow_upvr(arg2.Character, arg3)
			end
		end
	end)()
end
function module_upvr.new() -- Line 109
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.KillOldRenderFunction = nil
	setmetatable_result1.SelectedPlayer = nil
	setmetatable_result1.CharacterAddedConn = nil
	return setmetatable_result1
end
return module_upvr.new()