-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:36
-- Luau version 6, Types version 3
-- Time taken: 0.000284 seconds

return function(arg1, arg2) -- Line 1
	if arg2.ad_type == "Character" then
		require(script.LoadCharacterAd)(arg2)
		return true
	end
end