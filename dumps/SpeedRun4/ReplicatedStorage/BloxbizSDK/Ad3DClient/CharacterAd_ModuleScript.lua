-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:43
-- Luau version 6, Types version 3
-- Time taken: 0.003721 seconds

local Dialogue_upvr = require(script.Dialogue)
local module_upvr = {}
module_upvr.__index = module_upvr
local LocalPlayer_upvr = game.Players.LocalPlayer
local CreateDialogueGui_upvr = require(script.CreateDialogueGui)
function module_upvr.guiOpened(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: CreateDialogueGui_upvr (readonly)
		[3]: Dialogue_upvr (readonly)
	]]
	local var5
	if not LocalPlayer_upvr.PlayerGui:FindFirstChild("BloxbizDialogue") then
		var5 = CreateDialogueGui_upvr()
		var5.Parent = LocalPlayer_upvr.PlayerGui
	else
		var5 = LocalPlayer_upvr.PlayerGui:FindFirstChild("BloxbizDialogue")
	end
	Dialogue_upvr.new(var5.Main, arg1.adData, arg1.adModelData, arg1.adBoxModel, arg1.characterModel)
end
local Character_upvr = require(script.Character)
function module_upvr.handleCharacterAd(arg1) -- Line 22
	--[[ Upvalues[2]:
		[1]: Character_upvr (readonly)
		[2]: Dialogue_upvr (readonly)
	]]
	task.spawn(Character_upvr.init, arg1.adBoxModel, arg1.characterModel, arg1.adModelData)
	task.spawn(function() -- Line 25
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Dialogue_upvr (copied, readonly)
		]]
		pcall(function() -- Line 26
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: Dialogue_upvr (copied, readonly)
			]]
			local ProximityPrompt_3 = arg1.characterModel.PrimaryPart.ProximityPrompt
			ProximityPrompt_3.ObjectText = arg1.adModelData.ad_character_name
			ProximityPrompt_3.ActionText = arg1.adModelData.prompt_action_text
			ProximityPrompt_3.MaxActivationDistance = Dialogue_upvr.TALKING_DISTANCE
			ProximityPrompt_3.Triggered:Connect(function() -- Line 31
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:guiOpened()
			end)
		end)
	end)
end
function module_upvr.new(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 38
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.adBoxModel = arg2
	setmetatable_result1.characterModel = arg3
	setmetatable_result1.adData = arg4
	setmetatable_result1.adModelData = arg5
	setmetatable_result1.ad3DClientInstance = arg1
	if not arg3.PrimaryPart and arg3:FindFirstChild("HumanoidRootPart") then
		arg3.PrimaryPart = arg3.HumanoidRootPart
	end
	arg3.PrimaryPart.Anchored = true
	local ProximityPrompt = Instance.new("ProximityPrompt")
	ProximityPrompt.RequiresLineOfSight = false
	ProximityPrompt.Parent = arg3.PrimaryPart
	local StatusIcon_2 = arg3.PrimaryPart:FindFirstChild("StatusIcon")
	if StatusIcon_2 then
		StatusIcon_2.ImageLabel.Visible = setmetatable_result1.adModelData.show_question_mark_in_model
		StatusIcon_2.StudsOffset *= arg6
		StatusIcon_2.Size = UDim2.new(StatusIcon_2.Size.X.Scale * arg6, 0, StatusIcon_2.Size.Y.Scale * arg6, 0)
		if StatusIcon_2:FindFirstChild("PaidAdLabel") then
			StatusIcon_2.PaidAdLabel.Visible = setmetatable_result1.adModelData.show_ad_disclaimer_in_model
			StatusIcon_2.PaidAdLabel.Text = setmetatable_result1.adModelData.ad_disclaimer_text
		end
	end
	if setmetatable_result1.adModelData.ad_dialogue_disabled == true then
		arg3.PrimaryPart.ProximityPrompt.Enabled = false
		arg3.PrimaryPart.ProximityPrompt:SetAttribute("PermanentDisabled", true)
	end
	require(script.MetricsClient).init(arg2, arg3, arg4)
	setmetatable_result1:handleCharacterAd()
	return setmetatable_result1
end
function module_upvr.destroy(arg1) -- Line 82
	arg1.characterModel:Destroy()
end
return module_upvr