-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:29
-- Luau version 6, Types version 3
-- Time taken: 0.000334 seconds

local React_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Parent.React)
local Timers_upvr = require(script.Parent.Timers)
return function(arg1) -- Line 9, Named "useLoadingTimers"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Timers_upvr (readonly)
	]]
	return React_upvr.useRef(Timers_upvr(arg1)).current
end