-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:36
-- Luau version 6, Types version 3
-- Time taken: 0.000833 seconds

local UGCValidationService_upvr = game:GetService("UGCValidationService")
return function(arg1) -- Line 7, Named "getMeshSize"
	--[[ Upvalues[1]:
		[1]: UGCValidationService_upvr (readonly)
	]]
	local any_GetEditableMeshVerts_result1 = UGCValidationService_upvr:GetEditableMeshVerts(arg1.editableMesh)
	local var5 = math.huge
	local var6 = (-math.huge)
	local var7 = math.huge
	local var8 = (-math.huge)
	local var9 = math.huge
	local var10 = (-math.huge)
	for i = 1, #any_GetEditableMeshVerts_result1 do
		local var11 = any_GetEditableMeshVerts_result1[i]
		var5 = math.min(var5, var11.X)
		var7 = math.min(var7, var11.Y)
		var9 = math.min(var9, var11.Z)
		var6 = math.max(var6, var11.X)
		var8 = math.max(var8, var11.Y)
		var10 = math.max(var10, var11.Z)
	end
	return Vector3.new(var6 - var5, var8 - var7, var10 - var9)
end