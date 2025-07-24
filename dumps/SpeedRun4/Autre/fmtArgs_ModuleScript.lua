-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:29
-- Luau version 6, Types version 3
-- Time taken: 0.000486 seconds

return function(arg1) -- Line 1
	for i = 1, arg1.n do
		if type(arg1[i]) == "string" then
			table.insert({}, '"'..arg1[i]..'"')
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, tostring(arg1[i]))
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return '{'..table.concat({}, ", ")..'}'
end