-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:48
-- Luau version 6, Types version 3
-- Time taken: 0.007995 seconds

local LocalPlayer_upvr = game.Players.LocalPlayer
local ModuleAnimator_upvr = require(script.Parent.ModuleAnimator)
local module_upvr = {
	lookAtObject = nil;
}
local tbl_upvr = {
	Question = "http://www.roblox.com/asset/?id=8536287911";
}
function module_upvr.getCharacterDistance(arg1) -- Line 21
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local Character = LocalPlayer_upvr.Character
	if not Character then
		Character = LocalPlayer_upvr.CharacterAdded:Wait()
	end
	local PrimaryPart = arg1.PrimaryPart
	if Character.PrimaryPart then
		return (PrimaryPart.Position - Character.PrimaryPart.Position).magnitude
	end
	if Character:FindFirstChild("HumanoidRootPart") then
		return (PrimaryPart.Position - Character.HumanoidRootPart.Position).magnitude
	end
	return math.huge
end
function module_upvr.angleBetweenCFrames(arg1, arg2) -- Line 34
	local Unit_2 = (arg1.Position - arg2.Position).Unit
	local Unit = (arg1.Position - (arg1 * CFrame.new(0, 0, 5)).Position).Unit
	return math.atan2(Unit_2:Cross(Unit).Magnitude, Unit_2:Dot(Unit)) * math.sign(arg1.UpVector:Dot(Unit_2:Cross(Unit)))
end
local TweenService_upvr = game:GetService("TweenService")
function module_upvr.lookAtPlayer(arg1, arg2) -- Line 47
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	local var11
	if arg2:GetAttribute("IsRotating") then
		arg2:SetAttribute("IsRotating", false)
	end
	var11 = arg1.AdBox
	local CFrame = var11.CFrame
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = module_upvr.lookAtObject.Position
		return var11
	end
	if not pcall(function() -- Line 48
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		return module_upvr.lookAtObject.Position
	end) or not INLINED() then
		var11 = module_upvr.lookAtObject.Value.Position
	end
	local any_ToObjectSpace_result1 = CFrame:ToObjectSpace(CFrame.new(var11))
	local any_ToOrientation_result1, any_ToOrientation_result2, any_ToOrientation_result3 = CFrame:ToOrientation()
	TweenService_upvr:Create(arg2.PrimaryPart, TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		CFrame = CFrame.new(arg2.PrimaryPart.Position) * CFrame.fromOrientation(any_ToOrientation_result1, any_ToOrientation_result2, any_ToOrientation_result3) * CFrame.fromOrientation(0, -module_upvr.angleBetweenCFrames(CFrame, CFrame:ToWorldSpace(CFrame.new(any_ToObjectSpace_result1.X, 0, any_ToObjectSpace_result1.Z))) - math.pi, 0);
	}):Play()
	arg2:SetAttribute("IsRotating", true)
end
function module_upvr.playIdleAnim(arg1) -- Line 78
	--[[ Upvalues[1]:
		[1]: ModuleAnimator_upvr (readonly)
	]]
	ModuleAnimator_upvr.playAnimation(arg1, "Idle")
end
function module_upvr.playWaveAnim(arg1) -- Line 84
	--[[ Upvalues[1]:
		[1]: ModuleAnimator_upvr (readonly)
	]]
	local any_loadAnimation_result1 = ModuleAnimator_upvr.loadAnimation(arg1, "Wave", require(script.WaveAnim))
	if not arg1:GetAttribute("Waving") then
		arg1:SetAttribute("Waving", true)
		ModuleAnimator_upvr.playAnimation(arg1, "Wave")
		repeat
			task.wait()
		until 0.01 < any_loadAnimation_result1.length
		task.wait(any_loadAnimation_result1.length)
		arg1:SetAttribute("Waving", false)
	end
end
function module_upvr.showIcon(arg1, arg2, arg3, arg4) -- Line 101
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var19
	if not var19 then
	else
		if arg4.ad_dialogue_disabled ~= true then
			var19 = false
		else
			var19 = true
		end
		arg1.PrimaryPart.StatusIcon.Enabled = arg2
		if arg3 then
			arg1.PrimaryPart.StatusIcon.ImageLabel.Image = tbl_upvr[arg3]
		end
		if var19 then
			arg1.PrimaryPart.StatusIcon.ImageLabel.Visible = false
		end
	end
end
local Workspace_upvr = game:GetService("Workspace")
function module_upvr.whenNearby(arg1, arg2, arg3, arg4) -- Line 119
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: Workspace_upvr (readonly)
	]]
	local var21
	if arg3.ad_rotate_disabled == true then
		var21 = false
	else
		var21 = true
	end
	repeat
		task.wait(0.5)
	until module_upvr.getCharacterDistance(arg2) > 50 or not arg2:GetAttribute("DialogueActive")
	local WavingStartTime = arg2:GetAttribute("WavingStartTime")
	module_upvr.lookAtObject = LocalPlayer_upvr.Character:WaitForChild("HumanoidRootPart")
	repeat
		local var23 = not WavingStartTime
		if not var23 then
			if 8 > Workspace_upvr:GetServerTimeNow() - WavingStartTime then
				var23 = false
			else
				var23 = true
			end
		end
		if var21 then
			module_upvr.lookAtPlayer(arg1, arg2)
		end
		if var23 and not arg2:GetAttribute("DialogueActive") and not false and arg4 and var21 then
			arg2:SetAttribute("WavingStartTime", Workspace_upvr:GetServerTimeNow())
			module_upvr.playWaveAnim(arg2)
		end
		task.wait(0.5)
	until 50 < module_upvr.getCharacterDistance(arg2)
	module_upvr.whenNearby(arg1, arg2, arg3, arg4)
end
local Utils_upvr = require(script.Parent.Parent.Parent.Utils)
function module_upvr.init(arg1, arg2, arg3) -- Line 151
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local Humanoid_upvr = arg2:FindFirstChild("Humanoid")
	local var31
	if arg3.ad_dialogue_disabled ~= false then
		var31 = false
	else
		var31 = true
	end
	if arg2.PrimaryPart:FindFirstChild("StatusIcon") then
		arg2.PrimaryPart.StatusIcon.Enabled = true
		if not var31 then
			arg2.PrimaryPart.StatusIcon.ImageLabel.Visible = false
		end
	end
	if Humanoid_upvr then
		module_upvr.playIdleAnim(arg2)
	end
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 166
		--[[ Upvalues[5]:
			[1]: module_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: Humanoid_upvr (readonly)
		]]
		module_upvr.whenNearby(arg1, arg2, arg3, Humanoid_upvr)
	end)
	if not pcall_result1 then
		Utils_upvr.pprint("[SuperBiz] Error: "..pcall_result2_2)
	end
end
return module_upvr