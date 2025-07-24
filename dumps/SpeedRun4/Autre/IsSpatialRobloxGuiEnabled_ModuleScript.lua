-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:24
-- Luau version 6, Types version 3
-- Time taken: 0.000662 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
if require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled then
	return true
end
if not require(RobloxGui.Modules.Flags.FFlagEnableSpatialRobloxGui) then
	return false
end
local FStringSpatialRobloxUIIXPLayerName = require(RobloxGui.Modules.Flags.FStringSpatialRobloxUIIXPLayerName)
if require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper:GetLayerData(FStringSpatialRobloxUIIXPLayerName)[require(RobloxGui.Modules.Flags.FStringSpatialRobloxUIIXPUITypeVariableName)] ~= require(RobloxGui.Modules.Flags.FStringSpatialRobloxUIIXPSpatialUIVariantValue) then
	FStringSpatialRobloxUIIXPLayerName = false
else
	FStringSpatialRobloxUIIXPLayerName = true
end
return FStringSpatialRobloxUIIXPLayerName