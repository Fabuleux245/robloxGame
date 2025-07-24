-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:12
-- Luau version 6, Types version 3
-- Time taken: 0.001539 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 9, Named "validateFullBodyCageDeletion"
	--[[ Upvalues[3]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
	]]
	local isServer = arg2.isServer
	local var2_result1, var2_result2 = pcallDeferred_upvr(function() -- Line 17
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:ValidateEditableMeshFullBodyCageDeletion(arg1.editableMesh)
	end, arg2)
	if not var2_result1 then
		if isServer ~= nil and isServer then
			error(string.format("Failed to execute body cage detection for '%s'. Make sure the cage mesh exists and try again.", arg1.fullName))
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateFullBodyCageDeletion_FailedToExecute, nil, arg2)
		return false, {string.format("Failed to execute cage detection for '%s'. Make sure the cage mesh exists and try again.", arg1.fullName)}
	end
	if not var2_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateFullBodyCageDeletion_GeometryRemoved, nil, arg2)
		return false, {string.format("Missing cage for '%s'. You need to provide a cage mesh for each of the 15 body parts making up the R15 body.", arg1.fullName)}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return true
end