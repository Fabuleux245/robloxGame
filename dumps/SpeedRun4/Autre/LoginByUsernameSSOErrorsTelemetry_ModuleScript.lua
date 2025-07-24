-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:19
-- Luau version 6, Types version 3
-- Time taken: 0.000400 seconds

game:DefineFastInt("LoginByUsernameSSOErrorsThrottleHundrethsPercent", 0)
return {
	eventName = "LoginByUsernameSSOErrors";
	backends = {require(script:FindFirstAncestor("AuthCommon").Parent.LoggingProtocol).TelemetryBackends.Points};
	throttlingPercentage = game:GetFastInt("LoginByUsernameSSOErrorsThrottleHundrethsPercent");
	lastUpdated = {24, 5, 3};
	description = "Report LoginByUsernameSSO Error codes to Points with document name \"loginbyusernamessoerrors\"";
}