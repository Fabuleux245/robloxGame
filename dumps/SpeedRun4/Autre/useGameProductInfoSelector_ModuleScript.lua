-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:44
-- Luau version 6, Types version 3
-- Time taken: 0.000443 seconds

local GameProductInfoRodux = script:FindFirstAncestor("GameProductInfoRodux")
local useSelector_upvr = require(GameProductInfoRodux.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local GamesProductInfoReducer_upvr = require(GameProductInfoRodux.GamesProductInfoReducer)
return function(arg1) -- Line 8, Named "useGameProductInfoSelector"
	--[[ Upvalues[2]:
		[1]: useSelector_upvr (readonly)
		[2]: GamesProductInfoReducer_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1_2) -- Line 9
		--[[ Upvalues[2]:
			[1]: GamesProductInfoReducer_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return arg1_2[GamesProductInfoReducer_upvr.key][arg1]
	end)
end