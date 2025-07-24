-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:05
-- Luau version 6, Types version 3
-- Time taken: 0.001536 seconds

local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local Analytics_upvr = require(Parent.Analytics)
local function getTriangleCount_upvr(arg1, arg2, arg3) -- Line 16, Named "getTriangleCount"
	--[[ Upvalues[3]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
	]]
	local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 21
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:GetEditableMeshTriCount(arg1.editableMesh)
	end, arg2)
	if not pcallDeferred_upvr_result1 then
		local formatted_2 = string.format("Failed to load model mesh %s. Make sure the mesh exists and try again.", arg1.fullName)
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCoplanarIntersection_FailedToExecute, nil, arg2)
		if arg3 ~= nil and arg3 then
			error(formatted_2)
		end
		return false, {formatted_2}
	end
	return true, nil, pcallDeferred_upvr_result2
end
local getFIntMaxCoplanarIntersectionsPercentage_upvr = require(Parent.flags.getFIntMaxCoplanarIntersectionsPercentage)
return function(arg1, arg2, arg3) -- Line 44, Named "validateCoplanarIntersection"
	--[[ Upvalues[5]:
		[1]: getTriangleCount_upvr (readonly)
		[2]: getFIntMaxCoplanarIntersectionsPercentage_upvr (readonly)
		[3]: pcallDeferred_upvr (readonly)
		[4]: UGCValidationService_upvr (readonly)
		[5]: Analytics_upvr (readonly)
	]]
	local isServer = arg3.isServer
	local getTriangleCount_result1, getTriangleCount_result2, getTriangleCount_result3 = getTriangleCount_upvr(arg1, arg3, isServer)
	if not getTriangleCount_result1 then
		return false, getTriangleCount_result2
	end
	local floored_upvr = math.floor(getFIntMaxCoplanarIntersectionsPercentage_upvr() / 100 * getTriangleCount_result3)
	local pcallDeferred_upvr_result1_2, var3_result2 = pcallDeferred_upvr(function() -- Line 62
		--[[ Upvalues[4]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: floored_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		return UGCValidationService_upvr:IsEditableMeshNumCoplanarIntersectionsOverLimit(arg1.editableMesh, floored_upvr, arg2, true)
	end, arg3)
	if not pcallDeferred_upvr_result1_2 then
		local formatted = string.format("Failed to execute coplanar triangle intersection check for '%s'. Make sure mesh exists and try again.", arg1.fullName)
		if isServer ~= nil and isServer then
			error(formatted)
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCoplanarIntersection_FailedToExecute, nil, arg3)
		return false, {formatted}
	end
	if var3_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCoplanarIntersection_CoplanarIntersection, nil, arg3)
		return false, {string.format("Detected too many coplanar triangles intersecting in model mesh '%s'. The maximum is %d intersections in a %d triangle mesh. Edit your mesh to reduce the number of coplanar triangle intersections.", arg1.fullName, floored_upvr, getTriangleCount_result3)}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg3)
	return true
end