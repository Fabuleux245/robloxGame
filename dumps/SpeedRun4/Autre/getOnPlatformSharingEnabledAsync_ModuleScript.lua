-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:50
-- Luau version 6, Types version 3
-- Time taken: 0.001308 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local FFlagCapturesPostEnabledForAll_upvr = require(Parent.SharedFlags).FFlagCapturesPostEnabledForAll
local FFlagEnableOnPlatformSharingExperiment_upvr = require(Parent.SharedFlags).FFlagEnableOnPlatformSharingExperiment
local getLocalUserId_upvr = require(Parent_2.Utils.getLocalUserId)
local IXPServiceWrapper_upvr = require(Parent.IXPServiceWrapper).IXPServiceWrapper
local FStringSocialCaptureTakenIXPLayer_upvr = require(Parent.SharedFlags).FStringSocialCaptureTakenIXPLayer
local FStringOnPlatformSharingEnabledIXPTreatmentKey_upvr = require(Parent_2.Flags.FStringOnPlatformSharingEnabledIXPTreatmentKey)
return function(arg1) -- Line 15, Named "getOnPlatformSharingEnabledAsync"
	--[[ Upvalues[6]:
		[1]: FFlagCapturesPostEnabledForAll_upvr (readonly)
		[2]: FFlagEnableOnPlatformSharingExperiment_upvr (readonly)
		[3]: getLocalUserId_upvr (readonly)
		[4]: IXPServiceWrapper_upvr (readonly)
		[5]: FStringSocialCaptureTakenIXPLayer_upvr (readonly)
		[6]: FStringOnPlatformSharingEnabledIXPTreatmentKey_upvr (readonly)
	]]
	if FFlagCapturesPostEnabledForAll_upvr then
		return true
	end
	if not FFlagEnableOnPlatformSharingExperiment_upvr then
		return false
	end
	assert(arg1.Players, "Players service is required")
	local getLocalUserId_upvr_result1 = getLocalUserId_upvr(arg1.Players)
	if not getLocalUserId_upvr_result1 then
		return false
	end
	local tonumber_result1 = tonumber(getLocalUserId_upvr_result1)
	if not tonumber_result1 then
		return false
	end
	IXPServiceWrapper_upvr:InitializeAsync(tonumber_result1, FStringSocialCaptureTakenIXPLayer_upvr)
	local any_GetLayerData_result1 = IXPServiceWrapper_upvr:GetLayerData(FStringSocialCaptureTakenIXPLayer_upvr)
	if not any_GetLayerData_result1 then
		return false
	end
	return any_GetLayerData_result1[FStringOnPlatformSharingEnabledIXPTreatmentKey_upvr] or false
end