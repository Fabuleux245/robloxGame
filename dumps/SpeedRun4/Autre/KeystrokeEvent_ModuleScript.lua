-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:00
-- Luau version 6, Types version 3
-- Time taken: 0.000361 seconds

return {
	eventName = "appChatKeyStrokes";
	backends = {require(script:FindFirstAncestor("AppChat").Parent.LoggingProtocol).TelemetryBackends.EventIngest};
	throttlingPercentage = 10000;
	lastUpdated = {24, 5, 20};
	description = "Tracks keystroke data for the chat conversation screen";
	links = "https://docs.google.com/document/d/1CIP98uWhheThwiGBioCeXJ_WDmnym5D-zmUe5cNxOJ0/edit?tab=t.0#heading=h.q5oxzu9wbzz6";
}