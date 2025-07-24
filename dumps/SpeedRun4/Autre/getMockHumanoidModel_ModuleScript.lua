-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:21
-- Luau version 6, Types version 3
-- Time taken: 0.000485 seconds

return function() -- Line 4
	local Model = Instance.new("Model")
	Instance.new("Humanoid").Parent = Model
	local Part_3 = Instance.new("Part")
	Part_3.Name = "HumanoidRootPart"
	Part_3.Size = Vector3.new(2, 2, 1)
	Part_3.Position = Vector3.new(0, 2, 0)
	Part_3.Transparency = 1
	Part_3.Parent = Model
	local Part_2 = Instance.new("Part")
	Part_2.Name = "Head"
	Part_2.Size = Vector3.new(2, 1, 1)
	Part_2.Position = Vector3.new(0, 5, 0)
	Part_2.Shape = Enum.PartType.Ball
	Part_2.Parent = Model
	local Part = Instance.new("Part")
	Part.Name = "Torso"
	Part.Size = Vector3.new(2, 2, 1)
	Part.Position = Vector3.new(0, 3.5, 0)
	Part.Parent = Model
	Model.PrimaryPart = Part_3
	return Model
end