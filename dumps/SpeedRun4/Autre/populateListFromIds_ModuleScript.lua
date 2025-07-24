-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:54
-- Luau version 6, Types version 3
-- Time taken: 0.000454 seconds

local function populateListFromIds_upvr(arg1, arg2) -- Line 5, Named "populateListFromIds"
	--[[ Upvalues[1]:
		[1]: populateListFromIds_upvr (readonly)
	]]
	for _, v in ipairs(arg1) do
		if type(v) == "table" then
			table.insert({}, populateListFromIds_upvr(v, arg2))
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, arg2[v])
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return populateListFromIds_upvr