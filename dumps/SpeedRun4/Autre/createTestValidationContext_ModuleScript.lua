-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:25
-- Luau version 6, Types version 3
-- Time taken: 0.001025 seconds

local UGCValidationService_upvr = game:GetService("UGCValidationService")
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[1]:
		[1]: UGCValidationService_upvr (readonly)
	]]
	local module = {
		isServer = true;
	}
	module.assetTypeEnum = arg1
	module.validateMeshPartAccessories = false
	local tbl = {}
	local tbl_2 = {}
	for _, v in arg2 do
		for _, v_2 in v:GetDescendants() do
			if v_2:IsA("BinaryStringValue") then
				if v_2.Name == "MeshId" or v_2.Name == "CageMeshId" or v_2.Name == "ReferenceMeshId" then
					if not tbl[v_2.Parent] then
						tbl[v_2.Parent] = {}
					end
					tbl[v_2.Parent][v_2.Name] = {
						created = true;
						instance = UGCValidationService_upvr:CreateEditableMeshFromBinaryStringRobloxOnly(v_2);
					}
				else
					if not tbl_2[v_2.Parent] then
						tbl_2[v_2.Parent] = {}
					end
					tbl_2[v_2.Parent][v_2.Name] = {
						created = true;
						instance = UGCValidationService_upvr:CreateEditableImageFromBinaryStringRobloxOnly(v_2);
					}
				end
			end
		end
	end
	module.editableMeshes = tbl
	module.editableImages = tbl_2
	return module
end