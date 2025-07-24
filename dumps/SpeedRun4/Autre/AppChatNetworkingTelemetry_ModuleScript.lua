-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:04
-- Luau version 6, Types version 3
-- Time taken: 0.000648 seconds

local Parent = script:FindFirstAncestor("AppChatNetworking").Parent
return require(Parent.SocialLuaAnalytics).Telemetry.createEmitter({
	telemetryImpl = require(Parent.LoggingProtocol).default;
	defaultTelemetryConfig = {
		throttlingThousandths = game:DefineFastInt("AppChatNetworkingTelemetryThrottlingThousandths", 800);
		links = "";
	};
	getSharedInfo = function() -- Line 13, Named "getSharedInfo"
		return {}
	end;
})