-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:19
-- Luau version 6, Types version 3
-- Time taken: 0.001289 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local getFFlagMeshPartAccessoryPBRSupport_upvr = require(Parent.flags.getFFlagMeshPartAccessoryPBRSupport)
return function(arg1, arg2, arg3) -- Line 9, Named "validateLegacyAccessoryMeshPartAssetFormatMatch"
	--[[ Upvalues[2]:
		[1]: Analytics_upvr (readonly)
		[2]: getFFlagMeshPartAccessoryPBRSupport_upvr (readonly)
	]]
	local Handle_2 = arg1:FindFirstChild("Handle")
	local var5 = Handle_2
	if var5 then
		var5 = Handle_2:IsA("MeshPart")
	end
	assert(var5)
	local Handle = arg2:FindFirstChild("Handle")
	local var7 = Handle
	if var7 then
		var7 = Handle:IsA("Part")
	end
	assert(var7)
	local class_SpecialMesh = Handle:FindFirstChildOfClass("SpecialMesh")
	assert(class_SpecialMesh)
	if Handle_2.MeshId ~= class_SpecialMesh.MeshId then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch, nil, arg3)
		return false, {string.format("Model meshId mismatch with rigid accessory SpecialMesh.MeshId for '%s'. You need to match the meshIds and try again.", arg1.Name)}
	end
	local TextureID = Handle_2.TextureID
	if getFFlagMeshPartAccessoryPBRSupport_upvr() and TextureID == "" and Handle_2:FindFirstChildOfClass("SurfaceAppearance") then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		TextureID = Handle_2:FindFirstChildOfClass("SurfaceAppearance").ColorMap
	end
	if TextureID ~= class_SpecialMesh.TextureId then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch, nil, arg3)
		return false, {string.format("Model textureId mismatch with rigid accessory SpecialMesh.TextureId for '%s'. You need to match the textureIds and try again.", arg1.Name)}
	end
	return true
end