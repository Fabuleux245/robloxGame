-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:52
-- Luau version 6, Types version 3
-- Time taken: 0.001567 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local VRHub_upvr = require(RobloxGui.Modules.VR.VRHub)
local Service = require(Chrome.Service)
local Packages = CorePackages.Workspace.Packages
if require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial() then
	Packages = Service.AvailabilitySignal.Available
else
	Packages = Service.AvailabilitySignal.Unavailable
end
local any_new_result1_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Signal.new()
local any_new_result1_upvr_2 = require(Chrome.ChromeShared.Service.ChromeUtils).MappedSignal.new(any_new_result1_upvr, function() -- Line 28
	--[[ Upvalues[1]:
		[1]: VRHub_upvr (readonly)
	]]
	return VRHub_upvr.ShowTopBar
end)
VRHub_upvr.ShowTopBarChanged.Event:Connect(function() -- Line 32
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	any_new_result1_upvr:fire()
end)
local module = {
	initialAvailability = Packages;
	id = "vr_toggle_button";
	label = "Feature.Catalog.Label.Filter.Hide";
	isActivated = function() -- Line 40, Named "isActivated"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_2 (readonly)
		]]
		return any_new_result1_upvr_2:get()
	end;
}
local UIManager_upvr = require(Packages.VrSpatialUi).UIManager
local SettingsHub_upvr = require(RobloxGui.Modules.Settings.SettingsHub)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
function module.activated() -- Line 43
	--[[ Upvalues[4]:
		[1]: VRHub_upvr (readonly)
		[2]: UIManager_upvr (readonly)
		[3]: SettingsHub_upvr (readonly)
		[4]: RbxAnalyticsService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 9 start (CF ANALYSIS FAILED)
	if VRHub_upvr.ShowTopBar then
		UIManager_upvr.getInstance():prepareGuiToggleAnimationState()
		VRHub_upvr:SetShowTopBar(false)
		if SettingsHub_upvr:GetVisibility() then
			SettingsHub_upvr:ToggleVisibility()
			-- KONSTANTWARNING: GOTO [31] #25
		end
	else
		VRHub_upvr:SetShowTopBar(true)
	end
	-- KONSTANTERROR: [0] 1. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 25. Error Block 6 start (CF ANALYSIS FAILED)
	RbxAnalyticsService_upvr:ReportCounter("VR-BottomBar-ToggleGui")
	-- KONSTANTERROR: [31] 25. Error Block 6 end (CF ANALYSIS FAILED)
end
local tbl = {}
local CommonIcon_upvr = require(Chrome.Integrations.CommonIcon)
function tbl.Icon() -- Line 57
	--[[ Upvalues[2]:
		[1]: CommonIcon_upvr (readonly)
		[2]: any_new_result1_upvr_2 (readonly)
	]]
	return CommonIcon_upvr("rbxasset://textures/ui/MenuBar/icon_maximize.png", "rbxasset://textures/ui/MenuBar/icon_minimize.png", any_new_result1_upvr_2)
end
module.components = tbl
return Service:register(module)