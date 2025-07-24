-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:27
-- Luau version 6, Types version 3
-- Time taken: 0.000646 seconds

return function(arg1) -- Line 15, Named "iterator"
	if typeof(arg1) == "function" then
		return arg1
	end
	if typeof(arg1) == "table" then
		if 0 < #arg1 then
			return ipairs(arg1)
		end
		return pairs(arg1)
	end
	return nil
end