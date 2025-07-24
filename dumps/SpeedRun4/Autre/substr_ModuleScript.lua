-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:29
-- Luau version 6, Types version 3
-- Time taken: 0.000604 seconds

return function(arg1, arg2, arg3) -- Line 16
	if arg3 and arg3 <= 0 then
		return ""
	end
	if not arg3 or not (arg2 + arg3 - 1) then
	end
	return string.sub(arg1, arg2, nil)
end