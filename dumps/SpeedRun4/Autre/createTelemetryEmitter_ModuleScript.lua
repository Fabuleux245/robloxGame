-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:55
-- Luau version 6, Types version 3
-- Time taken: 0.000488 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local SocialLuaAnalytics_upvr = require(Parent.SocialLuaAnalytics)
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local Logger_upvr = require(script.Parent.Logger)
return function(arg1) -- Line 8
	--[[ Upvalues[3]:
		[1]: SocialLuaAnalytics_upvr (readonly)
		[2]: LoggingProtocol_upvr (readonly)
		[3]: Logger_upvr (readonly)
	]]
	local module = {
		telemetryImpl = LoggingProtocol_upvr.default;
		loggerImpl = Logger_upvr;
		defaultTelemetryConfig = {
			throttlingThousandths = 10000;
			links = "example.com";
		};
	}
	module.getSharedInfo = arg1
	return SocialLuaAnalytics_upvr.Telemetry.createEmitter(module)
end