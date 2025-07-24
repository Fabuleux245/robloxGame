-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:37
-- Luau version 6, Types version 3
-- Time taken: 0.002409 seconds

local module_upvr_2 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local UseSound_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Action"):WaitForChild("UseSound")
module_upvr_2.MemePointBarCallBack = nil
local module_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Sounds"))
local Particles_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Particles")
local function PlayCharacterSound_upvr(arg1, arg2) -- Line 28, Named "PlayCharacterSound"
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: Particles_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(module_upvr.DataArray)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 34 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.8]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.2147483650]
	if nil == arg2 then
		if not nil then
			return 0
		end
		local Character = arg1.Character
		if not Character then
			Character = arg1.CharacterAdded:wait()
		end
		local Sound = Instance.new("Sound")
		Sound.Name = "MemeSound"
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		Sound.SoundId = nil.SoundId
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		Sound.Volume = nil.Volume
		Sound.Parent = Character:WaitForChild("UpperTorso")
		local NumberValue = Instance.new("NumberValue")
		NumberValue.Name = "OriginalVolume"
		NumberValue.Value = Sound.Volume
		NumberValue.Parent = Sound
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: GOTO [70] #48
	end
	-- KONSTANTERROR: [8] 7. Error Block 34 end (CF ANALYSIS FAILED)
end
local var14_upvw = false
ReplicatedStorage:WaitForChild("Bindables"):WaitForChild("PlaySound").Event:Connect(function(arg1, arg2) -- Line 112
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var14_upvw (read and write)
		[3]: PlayCharacterSound_upvr (readonly)
		[4]: UseSound_upvr (readonly)
	]]
	local var15
	if var15 then
		var15 = LocalPlayer_upvr.Character:FindFirstChild("Humanoid")
	end
	if var15 ~= nil and 0 < var15.Health and not var14_upvw then
		var14_upvw = true
		local PlayCharacterSound_result1 = PlayCharacterSound_upvr(LocalPlayer_upvr, arg2)
		UseSound_upvr:FireServer(arg1, PlayCharacterSound_result1)
		wait(PlayCharacterSound_result1)
		var14_upvw = false
	end
end)
UseSound_upvr.OnClientEvent:Connect(PlayCharacterSound_upvr)
return module_upvr_2