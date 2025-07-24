-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:15
-- Luau version 6, Types version 3
-- Time taken: 0.001150 seconds

local Parent = script.Parent.Parent
local validateLayeredClothingAccessory_upvr = require(Parent.validation.validateLayeredClothingAccessory)
local validateLayeredClothingAccessoryMeshPartAssetFormatMatch_upvr = require(Parent.validation.validateLayeredClothingAccessoryMeshPartAssetFormatMatch)
return function(arg1, arg2) -- Line 9, Named "validateLayeredClothingAccessoryMeshPartAssetFormat"
	--[[ Upvalues[2]:
		[1]: validateLayeredClothingAccessory_upvr (readonly)
		[2]: validateLayeredClothingAccessoryMeshPartAssetFormatMatch_upvr (readonly)
	]]
	local var4
	if arg2.instances == nil then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "instances required in validationContext for validateLayeredClothingAccessoryMeshPartAssetFormat")
	var4 = nil
	local validateLayeredClothingAccessory_upvr_result1, var2_result2 = validateLayeredClothingAccessory_upvr(arg2)
	var4 = validateLayeredClothingAccessory_upvr_result1
	if not var4 then
		return false, var2_result2
	end
	local validateLayeredClothingAccessoryMeshPartAssetFormatMatch_upvr_result1, var3_result2 = validateLayeredClothingAccessoryMeshPartAssetFormatMatch_upvr(arg2.instances[1], arg1, arg2)
	var4 = validateLayeredClothingAccessoryMeshPartAssetFormatMatch_upvr_result1
	if not var4 then
		return false, var3_result2
	end
	return true
end