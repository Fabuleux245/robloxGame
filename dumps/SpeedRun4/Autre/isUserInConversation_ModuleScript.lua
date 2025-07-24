-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:20
-- Luau version 6, Types version 3
-- Time taken: 0.000494 seconds

return function(arg1, arg2) -- Line 1
	for _, v in pairs(arg2.participants) do
		if arg1 == v then
			return true
		end
	end
	return false
end