-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:57
-- Luau version 6, Types version 3
-- Time taken: 0.000304 seconds

return function(arg1, arg2) -- Line 1
	if arg2 < #arg1 then
		return false
	end
	if arg1:match("^%s*$") then
		return false
	end
	return true
end