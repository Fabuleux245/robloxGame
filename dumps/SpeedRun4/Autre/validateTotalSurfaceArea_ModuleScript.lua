-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:38
-- Luau version 6, Types version 3
-- Time taken: 0.001090 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
local getFIntMaxTotalSurfaceArea_upvr = require(Parent.flags.getFIntMaxTotalSurfaceArea)
return function(arg1, arg2, arg3) -- Line 16, Named "validateTotalSurfaceArea"
	--[[ Upvalues[4]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: getFIntMaxTotalSurfaceArea_upvr (readonly)
	]]
	local isServer = arg3.isServer
	local var2_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 25
		--[[ Upvalues[3]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return UGCValidationService_upvr:CalculateEditableMeshTotalSurfaceArea(arg1.editableMesh, arg2)
	end, arg3)
	if not var2_result1 then
		local formatted = string.format("Failed to execute max total surface area check for '%s'. Make sure mesh exists and try again.", arg1.fullName)
		if isServer ~= nil and isServer then
			error(formatted)
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateTotalSurfaceArea_FailedToExecute, nil, arg3)
		return false, {formatted}
	end
	if getFIntMaxTotalSurfaceArea_upvr() < pcallDeferred_upvr_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded, nil, arg3)
		return false, {string.format("The total surface area of model mesh '%s' is %.2f, it cannot be greater than %d. You must reduce the number and/or size of all triangles.", arg1.fullName, pcallDeferred_upvr_result2, getFIntMaxTotalSurfaceArea_upvr())}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg3)
	return true
end