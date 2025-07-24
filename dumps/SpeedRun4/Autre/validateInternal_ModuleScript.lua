-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:14
-- Luau version 6, Types version 3
-- Time taken: 0.001929 seconds

local Parent = script.Parent.Parent
local ConstantsInterface_upvr = require(Parent.ConstantsInterface)
local validateDynamicHeadMeshPartFormat_upvr = require(Parent.validation.validateDynamicHeadMeshPartFormat)
local validateLimbsAndTorso_upvr = require(Parent.validation.validateLimbsAndTorso)
local function validateBodyPartInternal_upvr(arg1) -- Line 21, Named "validateBodyPartInternal"
	--[[ Upvalues[3]:
		[1]: ConstantsInterface_upvr (readonly)
		[2]: validateDynamicHeadMeshPartFormat_upvr (readonly)
		[3]: validateLimbsAndTorso_upvr (readonly)
	]]
	local assetTypeEnum = arg1.assetTypeEnum
	local var6
	if assetTypeEnum == nil then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "assetTypeEnum is required in validateBodyPartInternal")
	var6 = ConstantsInterface_upvr.isBodyPart(assetTypeEnum)
	assert(var6)
	if Enum.AssetType.DynamicHead == assetTypeEnum then
		var6 = arg1
		return validateDynamicHeadMeshPartFormat_upvr(var6)
	end
	var6 = arg1
	return validateLimbsAndTorso_upvr(var6)
end
local getFFlagUGCValidateEmoteAnimation_upvr = require(Parent.flags.getFFlagUGCValidateEmoteAnimation)
local ValidateEmoteAnimation_upvr = require(Parent.validation.ValidateEmoteAnimation)
local getFFlagAddUGCValidationForPackage_upvr = require(Parent.flags.getFFlagAddUGCValidationForPackage)
local validatePackage_upvr = require(Parent.validation.validatePackage)
local isMeshPartAccessory_upvr = require(Parent.util.isMeshPartAccessory)
local isLayeredClothing_upvr = require(Parent.util.isLayeredClothing)
local validateLayeredClothingAccessory_upvr = require(Parent.validation.validateLayeredClothingAccessory)
local validateMeshPartAccessory_upvr = require(Parent.validation.validateMeshPartAccessory)
local validateLegacyAccessory_upvr = require(Parent.validation.validateLegacyAccessory)
return function(arg1) -- Line 32, Named "validateInternal"
	--[[ Upvalues[11]:
		[1]: getFFlagUGCValidateEmoteAnimation_upvr (readonly)
		[2]: ValidateEmoteAnimation_upvr (readonly)
		[3]: ConstantsInterface_upvr (readonly)
		[4]: validateBodyPartInternal_upvr (readonly)
		[5]: getFFlagAddUGCValidationForPackage_upvr (readonly)
		[6]: validatePackage_upvr (readonly)
		[7]: isMeshPartAccessory_upvr (readonly)
		[8]: isLayeredClothing_upvr (readonly)
		[9]: validateLayeredClothingAccessory_upvr (readonly)
		[10]: validateMeshPartAccessory_upvr (readonly)
		[11]: validateLegacyAccessory_upvr (readonly)
	]]
	local var16
	if arg1.instances == nil then
		var16 = false
	else
		var16 = true
	end
	assert(var16, "instances required in validationContext for validateInternal")
	if arg1.assetTypeEnum == nil then
		var16 = false
	else
		var16 = true
	end
	assert(var16, "assetTypeEnum required in validationContext for validateInternal")
	local instances = arg1.instances
	var16 = arg1.assetTypeEnum
	if getFFlagUGCValidateEmoteAnimation_upvr() and var16 == Enum.AssetType.EmoteAnimation then
		return ValidateEmoteAnimation_upvr.validate(arg1)
	end
	if ConstantsInterface_upvr.isBodyPart(var16) then
		return validateBodyPartInternal_upvr(arg1)
	end
	if getFFlagAddUGCValidationForPackage_upvr() and var16 == Enum.AssetType.Model then
		return validatePackage_upvr(arg1)
	end
	if arg1.validateMeshPartAccessories then
		local _1 = instances[1]
		if isMeshPartAccessory_upvr(_1) then
			if isLayeredClothing_upvr(_1) then
				return validateLayeredClothingAccessory_upvr(arg1)
			end
			return validateMeshPartAccessory_upvr(arg1)
		end
		return validateLegacyAccessory_upvr(arg1)
	end
	if isLayeredClothing_upvr(instances[1]) then
		return validateLayeredClothingAccessory_upvr(arg1)
	end
	return validateLegacyAccessory_upvr(arg1)
end