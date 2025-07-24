-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:07
-- Luau version 6, Types version 3
-- Time taken: 0.001420 seconds

local Players_upvr = game:GetService("Players")
local module_upvr = {}
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local function onCharacterAdded_upvr(arg1, arg2) -- Line 11, Named "onCharacterAdded"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local Humanoid_upvr = arg1:WaitForChild("Humanoid")
	Humanoid_upvr.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local ProximityPrompt = Instance.new("ProximityPrompt")
	ProximityPrompt.Name = "CopyOutfit"
	ProximityPrompt.ObjectText = "Popmall"
	ProximityPrompt.ActionText = "Wear Outfit"
	ProximityPrompt.HoldDuration = 0.3
	ProximityPrompt.MaxActivationDistance = 5
	ProximityPrompt.RequiresLineOfSight = false
	ProximityPrompt.Triggered:Connect(function() -- Line 25
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: Humanoid_upvr (readonly)
		]]
		module_upvr.Controllers.AvatarPreviewController:LoadCurrentOutfit(Humanoid_upvr, true)
	end)
	ProximityPrompt.Parent = arg1:WaitForChild("HumanoidRootPart")
end
local function onPlayerAdded_upvr(arg1) -- Line 32, Named "onPlayerAdded"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: onCharacterAdded_upvr (readonly)
	]]
	if arg1 == LocalPlayer_upvr then
	else
		arg1.CharacterAdded:Connect(function(arg1_2) -- Line 37
			--[[ Upvalues[2]:
				[1]: onCharacterAdded_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			onCharacterAdded_upvr(arg1_2, arg1)
		end)
		if arg1.Character then
			onCharacterAdded_upvr(arg1.Character, arg1)
		end
	end
end
function module_upvr.new(arg1, arg2) -- Line 46
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr
end
local any_read_result1_upvr = require(script.Parent.Parent.Parent.ConfigReader):read("CatalogCopyOutfitsFromPlayersEnabled")
function module_upvr.Init(arg1, arg2) -- Line 50
	--[[ Upvalues[5]:
		[1]: any_read_result1_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: onPlayerAdded_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: onCharacterAdded_upvr (readonly)
	]]
	if not any_read_result1_upvr then
	else
		arg1.Controllers = arg2
		Players_upvr.PlayerAdded:Connect(onPlayerAdded_upvr)
		for _, v_upvr in Players_upvr:GetPlayers() do
			if v_upvr == LocalPlayer_upvr then
			else
				v_upvr.CharacterAdded:Connect(function(arg1_3) -- Line 37
					--[[ Upvalues[2]:
						[1]: onCharacterAdded_upvr (copied, readonly)
						[2]: v_upvr (readonly)
					]]
					onCharacterAdded_upvr(arg1_3, v_upvr)
				end)
				if v_upvr.Character then
					onCharacterAdded_upvr(v_upvr.Character, v_upvr)
				end
			end
		end
	end
end
return module_upvr