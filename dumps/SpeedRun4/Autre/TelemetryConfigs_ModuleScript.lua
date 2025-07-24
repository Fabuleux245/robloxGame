-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:14
-- Luau version 6, Types version 3
-- Time taken: 0.003582 seconds

local LoggingProtocol = require(script:FindFirstAncestor("AuthAnalytics").Parent.LoggingProtocol)
local game_DefineFastInt_result1_2 = game:DefineFastInt("AuthPageMountThrottlingHundredthsPercent", 0)
local game_DefineFastInt_result1 = game:DefineFastInt("ValidCookieForNoCachedUserThrottlingHundredthsPercent", 0)
local game_DefineFastInt_result1_3 = game:DefineFastInt("AuthButtonClickedThrottlingHundredthsPercent", 0)
return {
	LandingPageMountTelemetryConfig = {
		eventName = "luaLandingPageMount";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1_2;
		lastUpdated = {25, 4, 7};
		description = "Report when landing page is mounted.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	LoginPageMountTelemetryConfig = {
		eventName = "luaLoginPageMount";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1_2;
		lastUpdated = {25, 4, 14};
		description = "Report when login page is mounted.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	SignupPageMountTelemetryConfig = {
		eventName = "luaSignupPageMount";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1_2;
		lastUpdated = {25, 4, 14};
		description = "Report when signup page is mounted.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	AddAuthMethodPageMountTelemetryConfig = {
		eventName = "luaAddAuthMethodPageMount";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1_2;
		lastUpdated = {25, 4, 14};
		description = "Report when add auth method page is mounted.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	EngagementScreenMountTelemetryConfig = {
		eventName = "luaEngagementScreenMount";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1_2;
		lastUpdated = {25, 4, 17};
		description = "Report when the engagement screen is mounted.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	ConsoleSSOAttemptedTelemetryConfig = {
		eventName = "luaConsoleSSOAttempted";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1_2;
		lastUpdated = {25, 4, 17};
		description = "Report when a console SSO attempt is made.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	ValidCookieForNoCachedUserTelemetryConfig = {
		eventName = "luaValidCookieForNoCachedUser";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1;
		lastUpdated = {25, 4, 11};
		description = "Report when a valid cookie is found for a user that is not cached.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	NoCookieForCachedUserTelemetryConfig = {
		eventName = "luaNoCookieForCachedUser";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1;
		lastUpdated = {25, 4, 11};
		description = "Report when a user with a cached user does not have a valid cookie.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	LaunchAppThunkInitiatedConfig = {
		eventName = "luaLaunchAppThunkInitiated";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1;
		lastUpdated = {25, 4, 14};
		description = "Report when the launch app thunk is initiated.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	LandingLoginButtonClickedConfig = {
		eventName = "luaLandingLoginButtonClicked";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1_3;
		lastUpdated = {25, 4, 14};
		description = "Report when the landing login button is clicked.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	LandingSignupButtonClickedConfig = {
		eventName = "luaLandingSignupButtonClicked";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1_3;
		lastUpdated = {25, 4, 14};
		description = "Report when the landing signup button is clicked.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	LogoutButtonClickedConfig = {
		eventName = "luaLogoutButtonClicked";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1_3;
		lastUpdated = {25, 4, 14};
		description = "Report when the logout button is clicked.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
	EngagementScreenContinueButtonClickedConfig = {
		eventName = "luaEngagementScreenContinueButtonClicked";
		backends = {LoggingProtocol.TelemetryBackends.Counter};
		throttlingPercentage = game_DefineFastInt_result1_3;
		lastUpdated = {25, 4, 17};
		description = "Report when the continue button is clicked.";
		links = "https://roblox.atlassian.net/wiki/spaces/AUTH/pages/3475702046/Lua+Client-Side+Telemetry+Planning";
	};
}