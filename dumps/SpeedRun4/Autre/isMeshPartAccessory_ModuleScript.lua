-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:39
-- Luau version 6, Types version 3
-- Time taken: 0.000523 seconds

return function(arg1) -- Line 1, Named "isMeshPartAccessory"
	if arg1:IsA("Accessory") then
		local Handle = arg1:FindFirstChild("Handle")
		if Handle and Handle:IsA("MeshPart") then
			return true
		end
	end
	return false
end