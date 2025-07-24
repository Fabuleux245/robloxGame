-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:10
-- Luau version 6, Types version 3
-- Time taken: 0.000947 seconds

local Parent = script:FindFirstAncestor("SquadsCore").Parent
local React_upvr = require(Parent.React)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
function useCurrentSquadId() -- Line 7
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: useSelector_upvr (readonly)
	]]
	return useSelector_upvr(React_upvr.useCallback(function(arg1) -- Line 8
		if arg1.Squad and arg1.Squad.Squad and arg1.Squad.Squad.currentSquad and arg1.Squad.Squad.currentSquad.squadId ~= "" then
			return arg1.Squad.Squad.currentSquad.squadId
		end
		return nil
	end, {}))
end
return useCurrentSquadId