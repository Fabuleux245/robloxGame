-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:13
-- Luau version 6, Types version 3
-- Time taken: 0.000595 seconds

local insert_upvr = table.insert
return function(arg1, arg2) -- Line 13, Named "collectArray"
	--[[ Upvalues[1]:
		[1]: insert_upvr (readonly)
	]]
	for i, v in arg1 do
		local arg2_result1 = arg2(i, v)
		if arg2_result1 ~= nil then
			insert_upvr({}, arg2_result1)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end