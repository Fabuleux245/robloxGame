-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:42
-- Luau version 6, Types version 3
-- Time taken: 0.000974 seconds

local GameProductInfoRodux = script:FindFirstAncestor("GameProductInfoRodux")
local SetGamesProductInfo_upvr = require(GameProductInfoRodux.SetGamesProductInfo)
local Immutable_upvr = require(GameProductInfoRodux.Parent.AppCommonLib).Immutable
return {
	key = "GamesProductInfoKey";
	reducer = function(arg1, arg2) -- Line 13
		--[[ Upvalues[2]:
			[1]: SetGamesProductInfo_upvr (readonly)
			[2]: Immutable_upvr (readonly)
		]]
		local var5 = arg1
		if not var5 then
			var5 = {}
		end
		arg1 = var5
		local var6 = arg1
		assert(var6, "")
		if arg2.type == SetGamesProductInfo_upvr.name then
			var6 = Immutable_upvr.JoinDictionaries(var6, arg2.gamesProductInfo)
		end
		return var6
	end;
}