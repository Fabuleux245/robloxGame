-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:43
-- Luau version 6, Types version 3
-- Time taken: 0.001797 seconds

local Parent = script:FindFirstAncestor("SharedExperimentDefinition").Parent
local game_DefineFastInt_result1_upvr = game:DefineFastInt("LuaAppIECVRVariantNoSpatialUI", 0)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 32
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {
		_layer_data = nil;
	}
	setmetatable(module, module_upvr)
	return module
end
local ExperimentCacheManager_upvr = require(Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastString_result1_upvr = game:DefineFastString("LuaAppIECVRLayerName", "PlatformExcellence.VR.SpatialUI")
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("LuaAppIECVRVariantKey", "spatial_ui_type")
function module_upvr.getIXPVariant(arg1) -- Line 40
	--[[ Upvalues[4]:
		[1]: ExperimentCacheManager_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
		[3]: game_DefineFastString_result1_upvr_2 (readonly)
		[4]: game_DefineFastInt_result1_upvr (readonly)
	]]
	if arg1._layer_data == nil then
		local any_getLayerVariables_result1 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
		if not any_getLayerVariables_result1 then
			any_getLayerVariables_result1 = {}
		end
		arg1._layer_data = any_getLayerVariables_result1
	end
	local var9 = arg1._layer_data[game_DefineFastString_result1_upvr_2] or nil
	if var9 == nil then
		return game_DefineFastInt_result1_upvr
	end
	return tonumber(var9)
end
local FFlagEnableUIManagerPackgify_upvr = require(Parent.SharedFlags).FFlagEnableUIManagerPackgify
function module_upvr.isDependencyFlagsEnabled() -- Line 52
	--[[ Upvalues[1]:
		[1]: FFlagEnableUIManagerPackgify_upvr (readonly)
	]]
	return FFlagEnableUIManagerPackgify_upvr
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppIECVREnabled4", false)
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("LuaAppIECVRIxpEnabled4", false)
function module_upvr.isInExperienceUIVREnabled(arg1) -- Line 56
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local var13
	if not arg1:isDependencyFlagsEnabled() then
		return false
	end
	if game_DefineFastFlag_result1_upvr then
		return true
	end
	if not game_DefineFastFlag_result1_upvr_3 then
		return false
	end
	if arg1:getIXPVariant() == game_DefineFastInt_result1_upvr then
		var13 = false
	else
		var13 = true
	end
	return var13
end
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("SpatialUIEnableDrag", false)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("LuaAppIECVRVariantSpatialUIWithDragging", 1)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("LuaAppIECVRVariantSpatialUIWithoutDragging", 2)
function module_upvr.isDraggingAllowed(arg1) -- Line 70
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[2]: game_DefineFastInt_result1_upvr_3 (readonly)
		[3]: game_DefineFastInt_result1_upvr_2 (readonly)
	]]
	if not arg1:isInExperienceUIVREnabled() then
		return false
	end
	if game_DefineFastFlag_result1_upvr_2 then
		return true
	end
	local any_getIXPVariant_result1 = arg1:getIXPVariant()
	if any_getIXPVariant_result1 == game_DefineFastInt_result1_upvr_3 then
		return true
	end
	if any_getIXPVariant_result1 == game_DefineFastInt_result1_upvr_2 then
		return false
	end
	return game_DefineFastFlag_result1_upvr_2
end
return module_upvr.new()