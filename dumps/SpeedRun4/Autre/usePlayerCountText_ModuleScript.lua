-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:08
-- Luau version 6, Types version 3
-- Time taken: 0.000389 seconds

local useAbbreviatedNumberLocalization_upvr = require(script:FindFirstAncestor("GameTile").Parent.Localization).Hooks.useAbbreviatedNumberLocalization
return function(arg1) -- Line 5, Named "usePlayerCountText"
	--[[ Upvalues[1]:
		[1]: useAbbreviatedNumberLocalization_upvr (readonly)
	]]
	local useAbbreviatedNumberLocalization_upvr_result1 = useAbbreviatedNumberLocalization_upvr(arg1)
	if useAbbreviatedNumberLocalization_upvr_result1 == nil or arg1 == -1 then
		return "--"
	end
	return useAbbreviatedNumberLocalization_upvr_result1
end