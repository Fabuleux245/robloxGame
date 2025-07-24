-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:18
-- Luau version 6, Types version 3
-- Time taken: 0.000711 seconds

local sharedState_upvr = require(script.Parent.Parent.Dependencies.sharedState)
local initialisedStack_upvr = sharedState_upvr.initialisedStack
return function(arg1) -- Line 14, Named "useDependency"
	--[[ Upvalues[2]:
		[1]: sharedState_upvr (readonly)
		[2]: initialisedStack_upvr (readonly)
	]]
	local dependencySet = sharedState_upvr.dependencySet
	if dependencySet ~= nil then
		local initialisedStackSize = sharedState_upvr.initialisedStackSize
		if 0 < initialisedStackSize and initialisedStack_upvr[initialisedStackSize][arg1] ~= nil then return end
		dependencySet[arg1] = true
	end
end