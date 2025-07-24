-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:21
-- Luau version 6, Types version 3
-- Time taken: 0.000338 seconds

local sendEventDeferred_upvr = require(script.Parent.sendEventDeferred)
local enums_upvr = require(script:FindFirstAncestor("VirtualEvents").enums)
return function(arg1) -- Line 15
	--[[ Upvalues[2]:
		[1]: sendEventDeferred_upvr (readonly)
		[2]: enums_upvr (readonly)
	]]
	sendEventDeferred_upvr(enums_upvr.AnalyticsEvent.VirtualEventRSVP, arg1)
end