-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:28
-- Luau version 6, Types version 3
-- Time taken: 0.001825 seconds

local module = {}
local module_upvr_2 = require(script:FindFirstAncestor("RollEngine"):WaitForChild("RollProperties"))
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("CharacterStateHandler"))
function module.Initialize(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	assert(arg1.Initialized, "CharacterState not Initialized.")
	local Character = arg1.Character
	local Humanoid = arg1.Humanoid
	local Root = arg1.Root
	if Character:HasTag(module_upvr_2.InitializedTag) then
	else
		Character:AddTag(module_upvr_2.InitializedTag)
		Humanoid.AutomaticScalingEnabled = false
		local Part = Instance.new("Part")
		Part.Name = "BallRoot"
		Part.CanCollide = true
		Part.CanQuery = true
		Part.CanTouch = true
		Part.CastShadow = false
		Part.CFrame = Root.CFrame
		Part.CustomPhysicalProperties = module_upvr_2.BallPhysics
		Part.Shape = Enum.PartType.Ball
		Part.Size = module_upvr_2.BallSize
		Part.Transparency = 1
		local clone = Part:Clone()
		clone.Name = "BallHitbox"
		clone.Size = module_upvr_2.HitboxSize
		clone.CanCollide = false
		local Weld_2 = Instance.new("Weld")
		Weld_2.Name = "HitboxWeld"
		Weld_2.Part0 = Part
		Weld_2.Part1 = clone
		local Weld = Instance.new("Weld")
		Weld.Name = "RootOffset"
		Weld.Part0 = Part
		Weld.Part1 = Root
		arg1.Flags.MarbleHitbox = clone
		arg1.Flags.MarbleWeld = Weld
		Weld_2.Parent = Part
		Weld.Parent = Part
		Part.Parent = Character
		clone.Parent = Character
		if Part:CanSetNetworkOwnership() then
			Part:SetNetworkOwner(arg1.Player)
		end
		if clone:CanSetNetworkOwnership() then
			clone:SetNetworkOwner(arg1.Player)
		end
		module_upvr.SetRoot(arg1, Part)
		Humanoid.HipHeight = -module_upvr_2.BallRadius
	end
end
return module