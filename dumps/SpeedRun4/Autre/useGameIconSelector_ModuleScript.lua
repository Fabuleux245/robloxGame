-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:47
-- Luau version 6, Types version 3
-- Time taken: 0.000655 seconds

local GameIconRodux = script:FindFirstAncestor("GameIconRodux")
local useSelector_upvr = require(GameIconRodux.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local GameIconReducer_upvr = require(GameIconRodux.GameIcons.GameIconReducer)
return function(arg1) -- Line 7, Named "useGameIconSelector"
	--[[ Upvalues[2]:
		[1]: useSelector_upvr (readonly)
		[2]: GameIconReducer_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1_2) -- Line 8
		--[[ Upvalues[2]:
			[1]: GameIconReducer_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return arg1_2[GameIconReducer_upvr.key][arg1]
	end)
end