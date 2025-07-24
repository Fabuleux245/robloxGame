-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:37
-- Luau version 6, Types version 3
-- Time taken: 0.001129 seconds

return function(arg1) -- Line 5, Named "getPartNamesInHierarchyOrder"
	if Enum.AssetType.LeftArm == arg1 then
		return {"LeftUpperArm", "LeftLowerArm", "LeftHand"}
	end
	if Enum.AssetType.RightArm == arg1 then
		return {"RightUpperArm", "RightLowerArm", "RightHand"}
	end
	if Enum.AssetType.LeftLeg == arg1 then
		return {"LeftUpperLeg", "LeftLowerLeg", "LeftFoot"}
	end
	if Enum.AssetType.RightLeg == arg1 then
		return {"RightUpperLeg", "RightLowerLeg", "RightFoot"}
	end
	if Enum.AssetType.DynamicHead == arg1 then
		return {"Head"}
	end
	if Enum.AssetType.Torso == arg1 then
		return {"LowerTorso", "UpperTorso"}
	end
	assert(false, "Invalid asset type")
	return {}
end