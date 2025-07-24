-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:25
-- Luau version 6, Types version 3
-- Time taken: 0.000579 seconds

return function() -- Line 4
	local Model = Instance.new("Model")
	local Part = Instance.new("Part")
	Part.Name = "HumanoidRootPart"
	Part.Parent = Model
	local Humanoid = Instance.new("Humanoid")
	Humanoid.Name = "Humanoid"
	Humanoid.Parent = Model
	local HumanoidDescription = Instance.new("HumanoidDescription")
	HumanoidDescription.Name = "HumanoidDescription"
	HumanoidDescription.Parent = Humanoid
	return Model
end