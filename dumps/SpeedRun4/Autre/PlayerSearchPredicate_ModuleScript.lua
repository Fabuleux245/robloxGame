-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:39
-- Luau version 6, Types version 3
-- Time taken: 0.001631 seconds

return function(arg1, arg2, arg3) -- Line 3, Named "PlayerSearchPredicate"
	if arg1 == nil or arg1 == "" then
		return true
	end
	if arg3 then
		if string.find(utf8.nfdnormalize(arg3):lower(), utf8.nfdnormalize(arg1):lower(), 1, true) ~= nil then
			return true
		end
	end
	if string.find(arg2:lower(), arg1:lower(), 1, true) == nil then
	else
	end
	return true
end