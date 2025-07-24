-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:51
-- Luau version 6, Types version 3
-- Time taken: 0.002412 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local VRHub_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.VR.VRHub)
local Integrations = Chrome.Integrations
if require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial() then
	Integrations = require(Chrome.Service).AvailabilitySignal.Available
else
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	Integrations = require(Chrome.Service).AvailabilitySignal.Unavailable
end
local any_new_result1_upvr_2 = require(CorePackages.Workspace.Packages.AppCommonLib).Signal.new()
local any_new_result1_upvr = require(Chrome.ChromeShared.Service.ChromeUtils).MappedSignal.new(any_new_result1_upvr_2, function() -- Line 24
	--[[ Upvalues[1]:
		[1]: VRHub_upvr (readonly)
	]]
	local SafetyBubble = VRHub_upvr.SafetyBubble
	if SafetyBubble then
		SafetyBubble = VRHub_upvr.SafetyBubble.enabled
	end
	return SafetyBubble
end)
if VRHub_upvr.SafetyBubble then
	VRHub_upvr.SafetyBubble.Toggled.Event:Connect(function() -- Line 29
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_2 (readonly)
		]]
		any_new_result1_upvr_2:fire()
	end)
end
local module = {
	initialAvailability = Integrations;
	id = "vr_safety_bubble";
	label = "CoreScripts.VRFTUX.Heading.SafetyBubble.Title";
	isActivated = function() -- Line 38, Named "isActivated"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		return any_new_result1_upvr:get()
	end;
}
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
function module.activated() -- Line 41
	--[[ Upvalues[2]:
		[1]: VRHub_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	VRHub_upvr:ToggleSafetyBubble()
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-Safety")
end
local tbl = {}
local CommonIcon_upvr = require(Integrations.CommonIcon)
function tbl.Icon() -- Line 46
	--[[ Upvalues[2]:
		[1]: CommonIcon_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	return CommonIcon_upvr("rbxasset://textures/ui/MenuBar/icon_safety_off.png", "rbxasset://textures/ui/MenuBar/icon_safety_on.png", any_new_result1_upvr)
end
module.components = tbl
return require(Chrome.Service):register(module)