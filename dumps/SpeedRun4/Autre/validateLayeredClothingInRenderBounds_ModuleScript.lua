-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:16
-- Luau version 6, Types version 3
-- Time taken: 0.001221 seconds

local Parent = script.Parent.Parent
local getEngineFeatureEngineUGCValidationLCOOB_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidationLCOOB)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 16
	--[[ Upvalues[4]:
		[1]: getEngineFeatureEngineUGCValidationLCOOB_upvr (readonly)
		[2]: pcallDeferred_upvr (readonly)
		[3]: UGCValidationService_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	if arg2.allowEditableInstances then
		return true
	end
	if not getEngineFeatureEngineUGCValidationLCOOB_upvr() then
		return false, {"Engine feature 'EngineUGCValidationLCOOB' is not enabled. Skipping validation for layered clothing out of bounds."}
	end
	local Handle = arg1:FindFirstChild("Handle")
	if not Handle then
		return false, {"Accessory does not have a Handle. Cannot validate layered clothing out of bounds."}
	end
	local class_WrapLayer = Handle:FindFirstChildWhichIsA("WrapLayer")
	if not class_WrapLayer then
		return false, {"Accessory does not have a WrapLayer. Cannot validate layered clothing out of bounds."}
	end
	class_WrapLayer.MaxSize = Vector3.new(0, 0, 0)
	class_WrapLayer.Offset = Vector3.new(0, 0, 0)
	local pcallDeferred_upvr_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 40
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:IsDeformedLayeredClothingOutOfRenderBounds(arg1)
	end, arg2)
	if not pcallDeferred_upvr_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDeformedLayeredClothingInRenderBounds_FailedToExecute, nil, arg2)
		return false, {string.format("Unable to validate if deformed layered clothing %s is out of render bounds.", arg1.Name)}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	if pcallDeferred_upvr_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds, nil, arg2)
		return false, {string.format("Layered clothing validation failed for '%s'. When deformed, layered clothing becomes too large.", arg1.Name)}
	end
	return true
end