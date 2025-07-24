-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:16
-- Luau version 6, Types version 3
-- Time taken: 0.001064 seconds

local Analytics_upvr = require(script.Parent.Parent.Analytics)
return function(arg1, arg2, arg3) -- Line 7, Named "validateLayeredClothingAccessoryMeshPartAssetFormatMatch"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	local Handle = arg1:FindFirstChild("Handle")
	local var4 = Handle
	if var4 then
		var4 = Handle:IsA("MeshPart")
	end
	assert(var4)
	local Handle_2 = arg2:FindFirstChild("Handle")
	local var6 = Handle_2
	if var6 then
		var6 = Handle_2:IsA("MeshPart")
	end
	assert(var6)
	if Handle.MeshId ~= Handle_2.MeshId then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch, nil, arg3)
		return false, {string.format("Model meshId mismatch between MeshPart.MeshId and SpecialMesh.MeshId for %s. You need to match the meshIds and try again.", arg1.Name)}
	end
	if Handle.TextureID ~= Handle_2.TextureID then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch, nil, arg3)
		return false, {string.format("Model textureId mismatch between MeshPart.TextureID and SpecialMesh.TextureId for %s. You need to match the textureIds and try again.", arg1.Name)}
	end
	return true
end