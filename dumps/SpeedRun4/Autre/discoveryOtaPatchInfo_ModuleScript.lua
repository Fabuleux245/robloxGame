-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:13
-- Luau version 6, Types version 3
-- Time taken: 0.000627 seconds

return {
	patchName = require(script:FindFirstAncestor("DiscoveryOtaPatch").Parent.RobloxAppEnums).OtaPatchName.DiscoveryOta;
	patchBehavior = game:DefineFastString("DiscoveryOtaBehavior", "app-patch-discovery");
	patchConfig = "rbxasset://configs/OtaPatchConfigs/DiscoveryOtaPatchConfig.json";
	patchPackagesRoot = {"DataModelInstances", "OtaPatch", "Packages"};
	patchStarterScriptPath = {"DataModelInstances", "OtaPatch", "DiscoveryOtaStarterScript"};
}