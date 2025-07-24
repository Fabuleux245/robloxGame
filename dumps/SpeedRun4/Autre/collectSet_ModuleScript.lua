-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:13
-- Luau version 6, Types version 3
-- Time taken: 0.000817 seconds

return function(arg1, arg2) -- Line 12, Named "collectSet"
	for i, v in arg1 do
		local var5
		if arg2 == nil then
			var5 = v
		else
			var5 = arg2(i, v)
		end
		if var5 ~= nil then
			({})[var5] = true
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end