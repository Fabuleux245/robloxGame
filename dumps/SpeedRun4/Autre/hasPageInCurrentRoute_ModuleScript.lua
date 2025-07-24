-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:17
-- Luau version 6, Types version 3
-- Time taken: 0.000534 seconds

return function(arg1, arg2, arg3) -- Line 1
	if not arg1 then
		return false
	end
	local len = #arg1
	if arg3 then
		len -= 1
	end
	for i = 1, len do
		if arg1[i].name == arg2 then
			return true
		end
	end
	return false
end