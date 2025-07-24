-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:27
-- Luau version 6, Types version 3
-- Time taken: 0.001392 seconds

return function(arg1) -- Line 8, Named "fixUpPreValidation"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local clone = arg1:Clone()
	local descendants = clone:GetDescendants()
	table.insert(descendants, clone)
	for _, v in descendants do
		local var11
		if var11 ~= nil and (v:IsA("Motor6D") or v.Name == "OriginalSize" or v.Name == "OriginalPosition" or v:IsA("Weld") and v.Name == "AccessoryWeld") then
			v:Destroy()
		else
			if v:IsA("BasePart") then
				v.Velocity = Vector3.new(0, 0, 0)
				v.RotVelocity = Vector3.new(0, 0, 0)
			end
			if v.Parent then
			else
			end
			if v:IsA("MeshPart") and not false and v.TextureID == "" and not v:FindFirstChildWhichIsA("SurfaceAppearance") then
				Instance.new("SurfaceAppearance").Parent = v
			end
		end
	end
	return clone
end