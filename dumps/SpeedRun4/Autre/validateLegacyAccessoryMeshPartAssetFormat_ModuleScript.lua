-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:19
-- Luau version 6, Types version 3
-- Time taken: 0.002935 seconds

local Parent = script.Parent.Parent
local validateSingleInstance_upvr = require(Parent.validation.validateSingleInstance)
local createLegacyAccessoryMeshPartAssetFormatSchema_upvr = require(Parent.util.createLegacyAccessoryMeshPartAssetFormatSchema)
local validateInstanceTree_upvr = require(Parent.validation.validateInstanceTree)
local getFFlagMeshPartAccessoryPBRSupport_upvr = require(Parent.flags.getFFlagMeshPartAccessoryPBRSupport)
local validateSurfaceAppearances_upvr = require(Parent.validation.validateSurfaceAppearances)
local validateSurfaceAppearanceTextureSize_upvr = require(Parent.validation.validateSurfaceAppearanceTextureSize)
local validateSurfaceAppearanceTransparency_upvr = require(Parent.validation.validateSurfaceAppearanceTransparency)
local getFFlagUGCValidationNameCheck_upvr = require(Parent.flags.getFFlagUGCValidationNameCheck)
local validateAccessoryName_upvr = require(Parent.validation.validateAccessoryName)
local validateLegacyAccessoryMeshPartAssetFormatMatch_upvr = require(Parent.validation.validateLegacyAccessoryMeshPartAssetFormatMatch)
return function(arg1, arg2) -- Line 19, Named "validateLegacyAccessoryMeshPartAssetFormat"
	--[[ Upvalues[10]:
		[1]: validateSingleInstance_upvr (readonly)
		[2]: createLegacyAccessoryMeshPartAssetFormatSchema_upvr (readonly)
		[3]: validateInstanceTree_upvr (readonly)
		[4]: getFFlagMeshPartAccessoryPBRSupport_upvr (readonly)
		[5]: validateSurfaceAppearances_upvr (readonly)
		[6]: validateSurfaceAppearanceTextureSize_upvr (readonly)
		[7]: validateSurfaceAppearanceTransparency_upvr (readonly)
		[8]: getFFlagUGCValidationNameCheck_upvr (readonly)
		[9]: validateAccessoryName_upvr (readonly)
		[10]: validateLegacyAccessoryMeshPartAssetFormatMatch_upvr (readonly)
	]]
	local var29
	if arg2.instances == nil then
		var29 = false
	else
		var29 = true
	end
	assert(var29, "instances required in validationContext for validateLegacyAccessoryMeshPartAssetFormat")
	local instances_2 = arg2.instances
	var29 = arg2.isServer
	local validateSingleInstance_upvr_result1, validateSingleInstance_upvr_result2 = validateSingleInstance_upvr(instances_2, arg2)
	if not validateSingleInstance_upvr_result1 then
		return false, validateSingleInstance_upvr_result2
	end
	local _1 = instances_2[1]
	local var4_result1, var4_result2 = validateInstanceTree_upvr(createLegacyAccessoryMeshPartAssetFormatSchema_upvr(arg1:FindFirstChild("Handle"):FindFirstChildOfClass("Attachment").Name), _1, arg2)
	if not var4_result1 then
		return false, var4_result2
	end
	if getFFlagMeshPartAccessoryPBRSupport_upvr() then
		local validateSurfaceAppearances_upvr_result1, validateSurfaceAppearances_upvr_result2 = validateSurfaceAppearances_upvr(_1, arg2)
		if not validateSurfaceAppearances_upvr_result1 then
			return false, validateSurfaceAppearances_upvr_result2
		end
		local var7_result1_2, var7_result2_2 = validateSurfaceAppearanceTextureSize_upvr(_1, arg2)
		if not var7_result1_2 then
			return false, var7_result2_2
		end
		local var8_result1_2, var8_result2 = validateSurfaceAppearanceTransparency_upvr(_1, arg2)
		if not var8_result1_2 then
			return false, var8_result2
		end
	end
	if getFFlagUGCValidationNameCheck_upvr() and var29 then
		local validateAccessoryName_upvr_result1, validateAccessoryName_upvr_result2 = validateAccessoryName_upvr(_1, arg2)
		if not validateAccessoryName_upvr_result1 then
			return false, validateAccessoryName_upvr_result2
		end
	end
	local validateLegacyAccessoryMeshPartAssetFormatMatch_upvr_result1_2, validateLegacyAccessoryMeshPartAssetFormatMatch_upvr_result2 = validateLegacyAccessoryMeshPartAssetFormatMatch_upvr(_1, arg1, arg2)
	if not validateLegacyAccessoryMeshPartAssetFormatMatch_upvr_result1_2 then
		return false, validateLegacyAccessoryMeshPartAssetFormatMatch_upvr_result2
	end
	return true
end