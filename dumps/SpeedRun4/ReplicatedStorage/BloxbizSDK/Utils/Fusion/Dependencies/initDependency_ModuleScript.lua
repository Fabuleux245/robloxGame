-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:16
-- Luau version 6, Types version 3
-- Time taken: 0.000677 seconds

local sharedState_upvr = require(script.Parent.Parent.Dependencies.sharedState)
local initialisedStack_upvr = sharedState_upvr.initialisedStack
return function(arg1) -- Line 16, Named "initDependency"
	--[[ Upvalues[2]:
		[1]: sharedState_upvr (readonly)
		[2]: initialisedStack_upvr (readonly)
	]]
	for i, v in ipairs(initialisedStack_upvr) do
		if sharedState_upvr.initialisedStackSize < i then return end
		v[arg1] = true
	end
end