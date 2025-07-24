-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:26
-- Luau version 6, Types version 3
-- Time taken: 0.001959 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2, arg3) -- Line 10, Named "validateMeshVertexColors"
	--[[ Upvalues[3]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
	]]
	local isServer = arg3.isServer
	local pcallDeferred_upvr_result1, var2_result2 = pcallDeferred_upvr(function() -- Line 19
		--[[ Upvalues[3]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return UGCValidationService_upvr:ValidateEditableMeshVertColors(arg1.editableMesh, arg2)
	end, arg3)
	if not pcallDeferred_upvr_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshVertexColors_FailedToLoadMesh, nil, arg3)
		local formatted = string.format("Failed to load vertex color map for model mesh %s. Make sure it exists and try again.", arg1.fullName)
		if isServer ~= nil and isServer then
			error(formatted)
		end
		do
			return false, {formatted}
		end
		local var11
	end
	if not var2_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshVertexColors_NonNeutralVertexColors, nil, arg3)
		local module = {}
		if arg2 then
			var11 = "with no transarency"
		else
			var11 = ""
		end
		module[1] = string.format("Invalid vertex color found in mesh model '%s'. You need to edit the color map to be all white %s and try again.", arg1.fullName, var11)
		return false, module
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg3)
	return true
end