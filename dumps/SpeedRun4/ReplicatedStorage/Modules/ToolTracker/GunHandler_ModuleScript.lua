-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:35
-- Luau version 6, Types version 3
-- Time taken: 0.006422 seconds

local module = {}
local ContextActionService_upvr = game:GetService("ContextActionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module_8_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_5_upvr = require(Modules:WaitForChild("UIShared"))
local module_4_upvr = require(Modules:WaitForChild("Utility"))
local tbl_upvr_2 = {
	SoundId = "rbxassetid://408950203";
	PlaybackSpeed = 0.7;
	RollOffMinDistance = 200;
	Volume = 0.5;
}
local tbl_upvr = {
	[Enum.UserInputType.MouseButton1] = true;
	[Enum.UserInputType.Touch] = true;
}
local tbl_upvr_5 = {
	[Enum.KeyCode.ButtonR2] = true;
	[Enum.KeyCode.Return] = true;
}
local tbl_upvr_3 = {
	ToolState = nil;
	FireInputs = {};
	InputEndedConnection = nil;
}
local any_Create_result1_upvr = module_5_upvr.MouseIconState.Create()
module_5_upvr.MouseIconState.SetProfile(any_Create_result1_upvr, require(ReplicatedStorage:WaitForChild("Theme")).Cursors.Gun_Ready)
local function _(arg1) -- Line 141, Named "UpdateProcessing"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	local var17 = false
	if arg1 ~= nil then
		var17 = arg1.Alive
		if var17 then
			var17 = true
			if 0 >= arg1.FireDelayRemaining then
				if next(tbl_upvr_3.FireInputs) == nil then
					var17 = false
				else
					var17 = true
				end
			end
		end
	end
	return var17
end
local function ProcessInputBegin_upvr(arg1, arg2, arg3) -- Line 153, Named "ProcessInputBegin"
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_upvr_5 (readonly)
	]]
	local Pass = Enum.ContextActionResult.Pass
	if arg2 == Enum.UserInputState.Begin and (tbl_upvr[arg3.UserInputType] or tbl_upvr_5[arg3.KeyCode]) then
		Pass = Enum.ContextActionResult.Sink
		tbl_upvr_3.FireInputs[arg3] = true
	end
	return Pass
end
local function ProcessInputEnd_upvr(arg1) -- Line 182, Named "ProcessInputEnd"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	tbl_upvr_3.FireInputs[arg1] = nil
	if arg1.KeyCode == Enum.KeyCode.ButtonR2 then
		for i in tbl_upvr_3.FireInputs do
			if i.UserInputType == Enum.UserInputType.MouseButton1 then
				tbl_upvr_3.FireInputs[i] = nil
				return
			end
		end
	end
end
local function _(arg1) -- Line 195, Named "UpdateIcon"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: any_Create_result1_upvr (readonly)
	]]
	if arg1 and arg1.ToolState.Equipped then
		module_5_upvr.MouseIconState.SetActive(any_Create_result1_upvr, true)
	else
		module_5_upvr.MouseIconState.SetActive(any_Create_result1_upvr, false)
	end
end
local function EquipTool_upvr() -- Line 211, Named "EquipTool"
	--[[ Upvalues[7]:
		[1]: tbl_upvr_3 (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: ProcessInputBegin_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: ProcessInputEnd_upvr (readonly)
		[6]: module_5_upvr (readonly)
		[7]: any_Create_result1_upvr (readonly)
	]]
	local ToolState_4 = tbl_upvr_3.ToolState
	if ToolState_4 and not ToolState_4.ToolState.Equipped then
		ToolState_4.ToolState.Equipped = true
		if ToolState_4.HoldAnimation and not ToolState_4.HoldAnimation.IsPlaying then
			ToolState_4.HoldAnimation:Play(0.0875)
		end
		if not tbl_upvr_3.InputEndedConnection then
			ContextActionService_upvr:BindAction("GunHandler_PROCESS-GUN", ProcessInputBegin_upvr, false, Enum.UserInputType.MouseButton1, Enum.UserInputType.Keyboard, Enum.UserInputType.Touch, Enum.UserInputType.Gamepad1)
			tbl_upvr_3.InputEndedConnection = UserInputService_upvr.InputEnded:Connect(ProcessInputEnd_upvr)
		end
	end
	if ToolState_4 and ToolState_4.ToolState.Equipped then
		module_5_upvr.MouseIconState.SetActive(any_Create_result1_upvr, true)
	else
		module_5_upvr.MouseIconState.SetActive(any_Create_result1_upvr, false)
	end
end
local function UnequipTool_upvr() -- Line 241, Named "UnequipTool"
	--[[ Upvalues[4]:
		[1]: tbl_upvr_3 (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: any_Create_result1_upvr (readonly)
	]]
	local ToolState_2 = tbl_upvr_3.ToolState
	if ToolState_2 and ToolState_2.ToolState.Equipped then
		ToolState_2.ToolState.Equipped = false
		ToolState_2.FireDelayRemaining = 0
		if ToolState_2.HoldAnimation and ToolState_2.HoldAnimation.IsPlaying then
			ToolState_2.HoldAnimation:Stop(0.0875)
		end
		ContextActionService_upvr:UnbindAction("GunHandler_PROCESS-GUN")
		table.clear(tbl_upvr_3.FireInputs)
		if tbl_upvr_3.InputEndedConnection then
			tbl_upvr_3.InputEndedConnection:Disconnect()
			tbl_upvr_3.InputEndedConnection = nil
		end
	end
	if ToolState_2 and ToolState_2.ToolState.Equipped then
		module_5_upvr.MouseIconState.SetActive(any_Create_result1_upvr, true)
	else
		module_5_upvr.MouseIconState.SetActive(any_Create_result1_upvr, false)
	end
end
local function DeinitializeToolState_upvr() -- Line 276, Named "DeinitializeToolState"
	--[[ Upvalues[2]:
		[1]: UnequipTool_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
	]]
	UnequipTool_upvr()
	local ToolState_3 = tbl_upvr_3.ToolState
	if ToolState_3 then
		tbl_upvr_3.ToolState = nil
		if ToolState_3._Thread then
			if coroutine.status(ToolState_3._Thread) == "suspended" then
				task.cancel(ToolState_3._Thread)
			end
			ToolState_3._Thread = nil
		end
		for _, v in ToolState_3._Connections do
			v:Disconnect()
		end
	end
end
local any_AnimationFromId_result1_upvr = module_4_upvr.AnimationFromId("rbxassetid://105583170685211")
function module.InitializeTool(arg1) -- Line 296
	--[[ Upvalues[7]:
		[1]: DeinitializeToolState_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: tbl_upvr_3 (readonly)
		[4]: EquipTool_upvr (readonly)
		[5]: UnequipTool_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: any_AnimationFromId_result1_upvr (readonly)
	]]
	DeinitializeToolState_upvr()
	local Tool_upvr = arg1.Tool
	local Ammo = module_5_upvr.PlayerGui:FindFirstChild("Ammo")
	if Ammo then
		Ammo:Destroy()
	end
	local tbl_upvr_4 = {
		_Connections = {};
	}
	tbl_upvr_4.ToolState = arg1
	tbl_upvr_4.Tool = Tool_upvr
	tbl_upvr_4.Handle = Tool_upvr:WaitForChild("Handle")
	tbl_upvr_4.Alive = false
	tbl_upvr_4.FireDelayRemaining = 0
	tbl_upvr_4.FiringTime = 0
	tbl_upvr_3.ToolState = tbl_upvr_4
	tbl_upvr_4._Connections[#tbl_upvr_4._Connections + 1] = Tool_upvr.Equipped:Connect(EquipTool_upvr)
	tbl_upvr_4._Connections[#tbl_upvr_4._Connections + 1] = Tool_upvr.Unequipped:Connect(UnequipTool_upvr)
	tbl_upvr_4._Connections[#tbl_upvr_4._Connections + 1] = Tool_upvr.Destroying:Connect(DeinitializeToolState_upvr)
	tbl_upvr_4._Thread = task.spawn(function() -- Line 352
		--[[ Upvalues[6]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: tbl_upvr_4 (readonly)
			[3]: tbl_upvr_3 (copied, readonly)
			[4]: any_AnimationFromId_result1_upvr (copied, readonly)
			[5]: Tool_upvr (readonly)
			[6]: EquipTool_upvr (copied, readonly)
		]]
		local Character = LocalPlayer_upvr.Character
		if not Character then
			Character = LocalPlayer_upvr.ChildAdded:Wait()
		end
		local Humanoid = Character:WaitForChild("Humanoid")
		local Animator = Humanoid:WaitForChild("Animator")
		if Humanoid:IsA("Humanoid") then
			local var37
			if Animator:IsA("Animator") then
				if 0 >= Humanoid.Health then
					var37 = false
				else
					var37 = true
				end
				tbl_upvr_4.Alive = var37
				var37 = tbl_upvr_4
				if var37.Alive then
					var37 = tbl_upvr_3
					var37 = tbl_upvr_4
					if var37.ToolState == var37 then
						var37 = tbl_upvr_4
						var37.HoldAnimation = Animator:LoadAnimation(any_AnimationFromId_result1_upvr)
						var37 = tbl_upvr_4._Connections
						var37[#tbl_upvr_4._Connections + 1] = Humanoid.Died:Connect(function() -- Line 367
							--[[ Upvalues[1]:
								[1]: tbl_upvr_4 (copied, readonly)
							]]
							tbl_upvr_4.Alive = false
						end)
					end
				end
			end
		end
		if Tool_upvr:IsDescendantOf(Character) then
			EquipTool_upvr()
		end
	end)
end
LocalPlayer_upvr.CharacterRemoving:Connect(function() -- Line 379
	--[[ Upvalues[1]:
		[1]: DeinitializeToolState_upvr (readonly)
	]]
	DeinitializeToolState_upvr()
end)
local module_3_upvr = require(Modules:WaitForChild("Raycast"))
local InputRaycastLength_upvr = module_8_upvr.InputRaycastLength
local module_2_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_9_upvr = require(Modules:WaitForChild("Enemies"))
local module_upvr = require(Modules:WaitForChild("UIEffects"))
local module_6_upvr = require(Modules:WaitForChild("EnemyTracker"))
local module_7_upvr = require(Modules:WaitForChild("Audio"))
local Debris_upvr = game:GetService("Debris")
function module.PostSimulation(arg1, arg2) -- Line 387
	--[[ Upvalues[15]:
		[1]: tbl_upvr_3 (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_8_upvr (readonly)
		[5]: module_3_upvr (readonly)
		[6]: InputRaycastLength_upvr (readonly)
		[7]: module_2_upvr (readonly)
		[8]: module_4_upvr (readonly)
		[9]: module_9_upvr (readonly)
		[10]: module_upvr (readonly)
		[11]: module_6_upvr (readonly)
		[12]: module_7_upvr (readonly)
		[13]: tbl_upvr_2 (readonly)
		[14]: Debris_upvr (readonly)
		[15]: any_Create_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var48 = tbl_upvr_3
	local ToolState = var48.ToolState
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [327] 235. Error Block 49 start (CF ANALYSIS FAILED)
	ToolState.FiringTime = math.clamp(ToolState.FiringTime + var48, 0, 2)
	if ToolState and ToolState.ToolState.Equipped then
		module_5_upvr.MouseIconState.SetActive(any_Create_result1_upvr, true)
	else
		module_5_upvr.MouseIconState.SetActive(any_Create_result1_upvr, false)
		-- KONSTANTERROR: [327] 235. Error Block 49 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [361] 260. Error Block 46 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [361] 260. Error Block 46 end (CF ANALYSIS FAILED)
	end
end
return module