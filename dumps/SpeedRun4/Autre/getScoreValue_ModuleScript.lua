-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:44
-- Luau version 6, Types version 3
-- Time taken: 0.000446 seconds

return function(arg1) -- Line 1, Named "getScoreValue"
	if typeof(arg1) == "boolean" then
		if arg1 then
			return 1
		end
		return 0
	end
	return arg1
end