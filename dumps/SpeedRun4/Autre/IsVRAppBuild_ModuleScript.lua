-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:43
-- Luau version 6, Types version 3
-- Time taken: 0.000414 seconds

local isVRModeInStudio_upvr = require(script.Parent.isVRModeInStudio)
local VRService_upvr = game:GetService("VRService")
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: isVRModeInStudio_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	if isVRModeInStudio_upvr() then
		return true
	end
	if game:GetEngineFeature("MaquettesBuildFlagsEnabled") then
		return VRService_upvr:IsVRAppBuild()
	end
	return VRService_upvr.VREnabled
end