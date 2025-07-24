-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:06
-- Luau version 6, Types version 3
-- Time taken: 0.000302 seconds

local React_upvr = require(script:FindFirstAncestor("GenericAbuseReporting").Parent.React)
local AnalyticsDispatchContext_upvr = require(script.Parent.AnalyticsDispatchContext)
return function() -- Line 6, Named "useAnalyticsDispatch"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: AnalyticsDispatchContext_upvr (readonly)
	]]
	return React_upvr.useContext(AnalyticsDispatchContext_upvr)
end