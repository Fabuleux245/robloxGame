-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:30
-- Luau version 6, Types version 3
-- Time taken: 0.000983 seconds

local useSelector_upvr = require(script:FindFirstAncestor("RoduxSquads").Parent.RoactUtils).Hooks.RoactRodux.useSelector
return function() -- Line 5, Named "useCurrentSquadSelector"
	--[[ Upvalues[1]:
		[1]: useSelector_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 6
		local Squad_2 = arg1.Squad
		if Squad_2 then
			Squad_2 = arg1.Squad.Squad
			if Squad_2 then
				Squad_2 = arg1.Squad.Squad.currentSquad
			end
		end
		return Squad_2
	end)
end