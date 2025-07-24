-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:59
-- Luau version 6, Types version 3
-- Time taken: 0.000315 seconds

local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
local createTelemetryEmitter_upvr = require(script.Parent.createTelemetryEmitter)
return function(arg1) -- Line 7, Named "useTelemetry"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: createTelemetryEmitter_upvr (readonly)
	]]
	return createTelemetryEmitter_upvr(React_upvr.useContext(arg1))
end