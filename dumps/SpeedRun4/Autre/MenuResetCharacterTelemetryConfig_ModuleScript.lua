-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:13
-- Luau version 6, Types version 3
-- Time taken: 0.000674 seconds

return {
	eventName = "experienceMenuResetCharacter";
	backends = {require(game:GetService("CorePackages").Workspace.Packages.LoggingProtocol).TelemetryBackends.Counter};
	throttlingPercentage = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Settings.Flags.FIntMenuButtonsThrottleHundredthsPercent);
	lastUpdated = {25, 4, 23};
	description = "Report when respawn button in experience menu is activated";
}