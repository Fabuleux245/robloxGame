-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:56
-- Luau version 6, Types version 3
-- Time taken: 0.000550 seconds

local AppChat = script:FindFirstAncestor("AppChat")
return require(AppChat.Telemetry.createReactTelemetryLayer)(require(AppChat.Parent.React).createContext(function() -- Line 19
	return {}
end), {
	context = "platformChat";
	locale = "unknown";
	entryPoint = "unknown";
	userId = "unknown";
})