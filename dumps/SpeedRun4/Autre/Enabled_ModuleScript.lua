-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:13
-- Luau version 6, Types version 3
-- Time taken: 0.000993 seconds

local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local Chrome = script:FindFirstAncestor("Chrome")
game:DefineFastFlag("EnableInGameMenuChrome", false)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugEnableChromeOnUnsupportedDevices", false)
local VRService_upvr = game:GetService("VRService")
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local IsExperienceMenuABTestEnabled_upvr = require(Chrome.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager_upvr = require(Chrome.Parent.ExperienceMenuABTestManager)
local FFlagExperienceMenuGamepadExposureEnabled_upvr = SharedFlags.FFlagExperienceMenuGamepadExposureEnabled
local any_IsEnabled_result1_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.TenFootInterface):IsEnabled()
local any_GetFFlagConnectGamepadChrome_result1_upvr = SharedFlags.GetFFlagConnectGamepadChrome()
return function() -- Line 19
	--[[ Upvalues[8]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: isInExperienceUIVREnabled_upvr (readonly)
		[4]: IsExperienceMenuABTestEnabled_upvr (readonly)
		[5]: ExperienceMenuABTestManager_upvr (readonly)
		[6]: FFlagExperienceMenuGamepadExposureEnabled_upvr (readonly)
		[7]: any_IsEnabled_result1_upvr (readonly)
		[8]: any_GetFFlagConnectGamepadChrome_result1_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		return true
	end
	if VRService_upvr.VREnabled then
		if isInExperienceUIVREnabled_upvr then
			return true
		end
		return false
	end
	if IsExperienceMenuABTestEnabled_upvr() and ExperienceMenuABTestManager_upvr.default:isChromeEnabled() then
		return true
	end
	if FFlagExperienceMenuGamepadExposureEnabled_upvr then
		return true
	end
	if any_IsEnabled_result1_upvr and not any_GetFFlagConnectGamepadChrome_result1_upvr then
		return false
	end
	return game:GetFastFlag("EnableInGameMenuChrome")
end