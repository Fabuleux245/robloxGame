-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:55
-- Luau version 6, Types version 3
-- Time taken: 0.000499 seconds

local InterventionShared = script:FindFirstAncestor("InterventionShared")
local React_upvr = require(InterventionShared.Parent.React)
local InterventionPlacement_upvr = require(InterventionShared.Contexts.InterventionPlacement)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: InterventionPlacement_upvr (readonly)
	]]
	return React_upvr.useContext(InterventionPlacement_upvr)
end