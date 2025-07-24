-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:44
-- Luau version 6, Types version 3
-- Time taken: 0.000765 seconds

local Parent = script.Parent.Parent
local module = {}
local Constants_upvr = require(Parent.Constants)
function module.isRigidAccessoryAllowed(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var4 = Constants_upvr.ASSET_TYPE_INFO[arg1]
	local var5
	if var4 == nil then
		var5 = false
		return var5
	end
	if var4.rigidAllowed ~= true then
		var5 = false
	else
		var5 = true
	end
	return var5
end
local getFStringUGCLCAllowedAssetTypeIds_upvr = require(Parent.flags.getFStringUGCLCAllowedAssetTypeIds)
function module.isLayeredClothingAllowed(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: getFStringUGCLCAllowedAssetTypeIds_upvr (readonly)
	]]
	local var7
	if table.find(string.split(getFStringUGCLCAllowedAssetTypeIds_upvr(), ','), tostring(arg1.Value)) == nil then
		var7 = false
	else
		var7 = true
	end
	return var7
end
return module