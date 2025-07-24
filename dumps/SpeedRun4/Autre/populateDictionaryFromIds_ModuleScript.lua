-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:54
-- Luau version 6, Types version 3
-- Time taken: 0.000442 seconds

local function populateDictionaryFromIds_upvr(arg1, arg2) -- Line 5, Named "populateDictionaryFromIds"
	--[[ Upvalues[1]:
		[1]: populateDictionaryFromIds_upvr (readonly)
	]]
	for i, v in pairs(arg1) do
		if type(v) == "table" then
			({})[i] = populateDictionaryFromIds_upvr(v, arg2)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i] = arg2[v]
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return populateDictionaryFromIds_upvr