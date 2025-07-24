-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:55
-- Luau version 6, Types version 3
-- Time taken: 0.000439 seconds

local GameInfosRodux = script:FindFirstAncestor("GameInfosRodux")
local useSelector_upvr = require(GameInfosRodux.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local GameInfosReducer_upvr = require(GameInfosRodux.GameInfosReducer)
return function(arg1) -- Line 6, Named "useGameInfosSelector"
	--[[ Upvalues[2]:
		[1]: useSelector_upvr (readonly)
		[2]: GameInfosReducer_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1_2) -- Line 7
		--[[ Upvalues[2]:
			[1]: GameInfosReducer_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return arg1_2.Personalization[GameInfosReducer_upvr.key][arg1]
	end)
end