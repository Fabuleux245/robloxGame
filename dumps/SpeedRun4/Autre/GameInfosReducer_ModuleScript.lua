-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:53
-- Luau version 6, Types version 3
-- Time taken: 0.001408 seconds

local Cryo_upvr = require(script:FindFirstAncestor("GameInfosRodux").Parent.Cryo)
local function getMergedState_upvr(arg1, arg2) -- Line 12, Named "getMergedState"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	for i, _ in pairs(arg2) do
		if arg1[i] then
			({})[i] = Cryo_upvr.Dictionary.join(arg1[i], arg2[i])
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i] = arg2[i]
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Cryo_upvr.Dictionary.join(arg1, {})
end
local AddGames_upvr = require(script.Parent.AddGames)
return {
	key = "GameInfosKey";
	reducer = function(arg1, arg2) -- Line 26
		--[[ Upvalues[2]:
			[1]: AddGames_upvr (readonly)
			[2]: getMergedState_upvr (readonly)
		]]
		local var10 = arg1
		if not var10 then
			var10 = {}
		end
		arg1 = var10
		local var11 = arg1
		assert(var11, "")
		if arg2.type == AddGames_upvr.name then
			var11 = getMergedState_upvr(var11, arg2.games)
		end
		return var11
	end;
}