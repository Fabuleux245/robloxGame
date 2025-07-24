-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:54
-- Luau version 6, Types version 3
-- Time taken: 0.000510 seconds

local Cryo_upvr = require(script:FindFirstAncestor("SquadsCore").Parent.Cryo)
local DefaultSquadContract_upvr = require(script.Parent.DefaultSquadContract)
return function(arg1) -- Line 28
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: DefaultSquadContract_upvr (readonly)
	]]
	return Cryo_upvr.Dictionary.union(DefaultSquadContract_upvr, arg1)
end