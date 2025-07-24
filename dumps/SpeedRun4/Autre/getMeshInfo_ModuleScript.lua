-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:35
-- Luau version 6, Types version 3
-- Time taken: 0.002145 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local function getContent_upvr(arg1, arg2) -- Line 14, Named "getContent"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if arg2 == Constants_upvr.MESH_CONTENT_TYPE.RENDER_MESH then
		assert(arg1:IsA("MeshPart"), "Only MESH_TYPE.RENDER_MESH is only supported for MeshPart")
		return arg1.MeshId
	end
	if arg2 == Constants_upvr.MESH_CONTENT_TYPE.OUTER_CAGE then
		assert(arg1:IsA("BaseWrap"), "Only MESH_TYPE.OUTER_CAGE is only supported for BaseWrap")
		return arg1.CageMeshId
	end
	if arg2 == Constants_upvr.MESH_CONTENT_TYPE.INNER_CAGE then
		assert(arg1:IsA("WrapLayer"), "Only MESH_TYPE.INNER_CAGE is only supported for WrapLayer")
		return arg1.ReferenceMeshId
	end
	error("No valid mesh content type was provided")
end
if require(Parent.flags.getFFlagUGCValidationConsolidateGetMeshInfos)() then
	return function(arg1, arg2, arg3) -- Line 29, Named "getMeshInfo"
		--[[ Upvalues[3]:
			[1]: getContent_upvr (readonly)
			[2]: Constants_upvr (readonly)
			[3]: getEditableMeshFromContext_upvr (readonly)
		]]
		local any_GetFullName_result1 = arg1:GetFullName()
		local var5 = Constants_upvr.MESH_CONTENT_TYPE_TO_FIELD_NAME[arg2]
		local getEditableMeshFromContext_upvr_result1, getEditableMeshFromContext_upvr_result2 = getEditableMeshFromContext_upvr(arg1, var5, arg3)
		if not getEditableMeshFromContext_upvr_result1 then
			return false, {string.format("Mesh for '%s' failed to load. Make sure the mesh exists and try again.", any_GetFullName_result1)}
		end
		return true, nil, {
			fullName = any_GetFullName_result1;
			fieldName = var5;
			contentId = getContent_upvr(arg1, arg2);
			context = arg1.ClassName;
			editableMesh = getEditableMeshFromContext_upvr_result2;
		}
	end
end
return function(arg1, arg2) -- Line 56, Named "DEPRECATED_getMeshInfo"
	--[[ Upvalues[1]:
		[1]: getEditableMeshFromContext_upvr (readonly)
	]]
	local any_GetFullName_result1_2 = arg1:GetFullName()
	local var3_result1, getEditableMeshFromContext_upvr_result2_2 = getEditableMeshFromContext_upvr(arg1, "MeshId", arg2)
	if not var3_result1 then
		return false, {string.format("Mesh for '%s' failed to load. Make sure the mesh exists and try again.", any_GetFullName_result1_2)}
	end
	return true, nil, {
		fullName = any_GetFullName_result1_2;
		fieldName = "MeshId";
		contentId = arg1.MeshId;
		context = arg1.ClassName;
		editableMesh = getEditableMeshFromContext_upvr_result2_2;
	}
end