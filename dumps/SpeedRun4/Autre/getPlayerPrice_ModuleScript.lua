-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:17
-- Luau version 6, Types version 3
-- Time taken: 0.000568 seconds

return function(arg1, arg2, arg3) -- Line 4
	if arg3 and 0 < arg3 then
		return arg3
	end
	if arg2 then
		if arg1.premiumPrice ~= nil then
			return arg1.premiumPrice
		end
		return arg1.price
	end
	return arg1.price
end