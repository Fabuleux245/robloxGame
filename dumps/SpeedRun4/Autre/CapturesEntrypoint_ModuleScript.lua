-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:32
-- Luau version 6, Types version 3
-- Time taken: 0.002745 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local StarterGui = game:GetService("StarterGui")
local CapturesApp_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Captures.CapturesApp)
local Service = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local Available = Service.AvailabilitySignal.Available
if StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All) or StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Captures) then
	Available = Service.AvailabilitySignal.Available
else
	Available = Service.AvailabilitySignal.Unavailable
end
local any_new_result1_upvr = ChromeUtils.MappedSignal.new(CapturesApp_upvr.onIsActiveChanged, function() -- Line 24
	--[[ Upvalues[1]:
		[1]: CapturesApp_upvr (readonly)
	]]
	return CapturesApp_upvr.getIsActive()
end)
local tbl = {
	initialAvailability = Available;
	id = "camera_entrypoint";
	label = "Feature.SettingsHub.Label.Captures";
	activated = function(arg1) -- Line 32, Named "activated"
		--[[ Upvalues[1]:
			[1]: CapturesApp_upvr (readonly)
		]]
		CapturesApp_upvr.onToggleActivationFromChrome()
	end;
	isActivated = function() -- Line 35, Named "isActivated"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		return any_new_result1_upvr:get()
	end;
}
local tbl_2 = {}
local CommonIcon_upvr = require(Chrome.Integrations.CommonIcon)
function tbl_2.Icon(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: CommonIcon_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	return CommonIcon_upvr("icons/controls/cameraOff", "icons/controls/cameraOn", any_new_result1_upvr)
end
tbl.components = tbl_2
local any_register_result1 = Service:register(tbl)
ChromeUtils.setCoreGuiAvailability(any_register_result1, Enum.CoreGuiType.Captures)
if require(CorePackages.Workspace.Packages.SharedFlags).FFlagChromeCapturesUsePolicy then
	local PolicyImplementation = require(CorePackages.Workspace.Packages.CapturesInExperience).CapturesPolicy.PolicyImplementation
	if PolicyImplementation.read() then
		PolicyImplementation = require(CorePackages.Workspace.Packages.CapturesInExperience).CapturesPolicy.Mapper(PolicyImplementation.read()).eligibleForCapturesFeature()
	else
		PolicyImplementation = false
	end
	if not PolicyImplementation then
		any_register_result1.availability:forceUnavailable()
	end
end
return any_register_result1