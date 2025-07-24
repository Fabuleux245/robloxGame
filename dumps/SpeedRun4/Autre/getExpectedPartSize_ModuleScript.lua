-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:34
-- Luau version 6, Types version 3
-- Time taken: 0.001355 seconds

local Parent = script.Parent.Parent
local getFFlagUGCValidateMeshMin_upvr = require(Parent.flags.getFFlagUGCValidateMeshMin)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local getMeshSize_upvr = require(Parent.util.getMeshSize)
return function(arg1, arg2, arg3) -- Line 10
	--[[ Upvalues[4]:
		[1]: getFFlagUGCValidateMeshMin_upvr (readonly)
		[2]: getEditableMeshFromContext_upvr (readonly)
		[3]: pcallDeferred_upvr (readonly)
		[4]: getMeshSize_upvr (readonly)
	]]
	if not arg2.bypassFlags or not arg2.bypassFlags.skipPhysicsDataReset then
		if getFFlagUGCValidateMeshMin_upvr() then
			if arg3 then
				return arg1.MeshSize
			end
			return arg1.Size
		end
		return arg1.Size
	end
	if not arg2.partSizes then
		arg2.partSizes = {}
	end
	if arg2.partSizes[arg1] then
		return arg2.partSizes[arg1]
	end
	local module_upvr = {
		fullName = arg1:GetFullName();
		fieldName = "MeshId";
		contentId = arg1.MeshId;
		context = arg1.Name;
	}
	local var4_result1, getEditableMeshFromContext_upvr_result2 = getEditableMeshFromContext_upvr(arg1, "MeshId", arg2)
	if not var4_result1 then
		if getFFlagUGCValidateMeshMin_upvr() then
			if arg3 then
				return arg1.MeshSize
			end
			return arg1.Size
		end
		return arg1.Size
	end
	module_upvr.editableMesh = getEditableMeshFromContext_upvr_result2
	if arg2.editableMeshes[arg1].MeshId.created then
		if getFFlagUGCValidateMeshMin_upvr() then
			if arg3 then
				return arg1.MeshSize
			end
			return arg1.Size
		end
		return arg1.Size
	end
	local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 54
		--[[ Upvalues[2]:
			[1]: getMeshSize_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		return getMeshSize_upvr(module_upvr)
	end, arg2)
	if not pcallDeferred_upvr_result1 then
		if getFFlagUGCValidateMeshMin_upvr() then
			if arg3 then
				return arg1.MeshSize
			end
			return arg1.Size
		end
		return arg1.Size
	end
	arg2.partSizes[arg1] = pcallDeferred_upvr_result2
	return pcallDeferred_upvr_result2
end