-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:21
-- Luau version 6, Types version 3
-- Time taken: 0.005427 seconds

local LocalPlayer_upvr = game.Players.LocalPlayer
local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.TALKING_DISTANCE = 10
module_upvr.MOVEMENT_TIME_FOR_DIALOGUE_END = 1
local Character_upvr = require(script.Parent.Character)
local SetCamera_upvr = require(script.Parent.SetCamera)
local Controls_upvr = require(script.Parent.Controls)
module_upvr.DisplayBranch = require(script.DisplayBranch)
module_upvr.FormatText = require(script.Parent.FormatText)
module_upvr.currentDialogue = nil
local HttpService_upvr = game:GetService("HttpService")
local Workspace_upvr = game:GetService("Workspace")
function module_upvr.new(arg1, arg2, arg3, arg4, arg5) -- Line 17
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Character_upvr (readonly)
		[4]: SetCamera_upvr (readonly)
		[5]: Controls_upvr (readonly)
		[6]: Workspace_upvr (readonly)
	]]
	if module_upvr.currentDialogue then
		module_upvr.currentDialogue:endDialogue()
	end
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.adData = arg2
	setmetatable_result1_upvr.adModelData = arg3
	setmetatable_result1_upvr.branchData = HttpService_upvr:JSONDecode(arg3.ad_dialogue_tree)
	setmetatable_result1_upvr.main = arg1
	setmetatable_result1_upvr.adBoxModel = arg4
	setmetatable_result1_upvr.characterModel = arg5
	setmetatable_result1_upvr.dialogueEnded = false
	setmetatable_result1_upvr.dialogueGUID = HttpService_upvr:GenerateGUID(false)
	setmetatable_result1_upvr.movementFinishedEvent = nil
	setmetatable_result1_upvr.cameraLocked = false
	setmetatable_result1_upvr.CAMERA_LOCK_ENABLED = arg3.camera_lock_enabled
	setmetatable_result1_upvr:allDialoguePromptsEnabled(false)
	setmetatable_result1_upvr.main.Parent.Enabled = true
	arg5:SetAttribute("DialogueActive", true)
	Character_upvr.showIcon(arg5, false, false, setmetatable_result1_upvr.adModelData)
	module_upvr.currentDialogue = setmetatable_result1_upvr
	if setmetatable_result1_upvr.CAMERA_LOCK_ENABLED and SetCamera_upvr.setCamera(arg3, arg4, arg5, 0.5) then
		setmetatable_result1_upvr.cameraLocked = true
		Character_upvr.lookAtObject = SetCamera_upvr.currentCameraCf
		setmetatable_result1_upvr.movementFinishedEvent = Controls_upvr.watchForMovement(module_upvr.MOVEMENT_TIME_FOR_DIALOGUE_END)
		setmetatable_result1_upvr.movementFinishedEvent.Event:Connect(function(arg1_2, arg2_2) -- Line 52
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			if arg1_2 == "TimeElapsed" then
				setmetatable_result1_upvr:endDialogue()
			end
		end)
		Controls_upvr.disablePlayerMovementControlGuiVisible(2)
	end
	module_upvr.DisplayBranch.display(setmetatable_result1_upvr, nil, "Branch1")
	local var11_upvw
	var11_upvw = Workspace_upvr.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 65
		--[[ Upvalues[3]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: var11_upvw (read and write)
			[3]: module_upvr (copied, readonly)
		]]
		if setmetatable_result1_upvr.dialogueEnded then
			var11_upvw:Disconnect()
		else
			module_upvr.DisplayBranch.onWindowSizeChange(setmetatable_result1_upvr)
		end
	end)
	setmetatable_result1_upvr:closeDialogueOnDistance()
	return setmetatable_result1_upvr
end
function module_upvr.allDialoguePromptsEnabled(arg1, arg2) -- Line 79
	for _, v in ipairs(arg1.adBoxModel:GetChildren()) do
		if v:IsA("Model") and v.Name == "AdModel" then
			for _, v_2 in pairs(v:GetChildren()) do
				if v_2:IsA("Model") and v_2.PrimaryPart and v_2.PrimaryPart:FindFirstChild("ProximityPrompt") and not v_2.PrimaryPart.ProximityPrompt:GetAttribute("PermanentDisabled") then
					v_2.PrimaryPart.ProximityPrompt.Enabled = arg2
				end
			end
		end
	end
end
function module_upvr.closeDialogueOnDistance(arg1) -- Line 95
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	repeat
		local var23 = LocalPlayer_upvr.Character
		if var23 then
			var23 = LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart")
		end
		if not var23 or not arg1.characterModel:FindFirstAncestor("Workspace") then
		else
			task.wait(0.1)
		end
	until module_upvr.TALKING_DISTANCE <= (arg1.characterModel.PrimaryPart.Position - var23.Position).magnitude
	arg1:endDialogue()
end
function module_upvr.endDialogue(arg1) -- Line 115
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: SetCamera_upvr (readonly)
		[3]: Controls_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: Character_upvr (readonly)
	]]
	if module_upvr.currentDialogue == arg1 then
		module_upvr.currentDialogue = nil
		arg1.dialogueEnded = true
		arg1.main.Visible = false
		arg1.main.Parent.Enabled = false
		arg1.characterModel:SetAttribute("DialogueActive", false)
		if arg1.cameraLocked then
			arg1.cameraLocked = false
			arg1.movementFinishedEvent:Fire("StopWatching")
			SetCamera_upvr.resetCamera()
			Controls_upvr.enablePlayerMovementControlGuiVisible()
		end
		if LocalPlayer_upvr.Character and arg1.characterModel:FindFirstAncestor("Workspace") then
			Character_upvr.showIcon(arg1.characterModel, true, "Question", arg1.adData)
			Character_upvr.lookAtObject = LocalPlayer_upvr.Character:WaitForChild("HumanoidRootPart")
			arg1:allDialoguePromptsEnabled(true)
		end
	end
end
function module_upvr.animateText1(arg1, arg2, arg3, arg4) -- Line 139
	arg2.Text = ""
	for i_3 = 1, string.len(arg3) do
		if not arg1.dialogueEnded then
			arg2.Text = string.sub(arg3, 1, i_3)
			task.wait(arg4)
		end
	end
end
function module_upvr.handleEvent(arg1, arg2) -- Line 151
	if arg2.Name ~= "Krabby" then
	end
end
return module_upvr