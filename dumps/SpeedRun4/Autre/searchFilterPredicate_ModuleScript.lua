-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:22
-- Luau version 6, Types version 3
-- Time taken: 0.000528 seconds

return function(arg1, arg2) -- Line 8
	if not arg1 or arg1 == "" then
		return true
	end
	local displayName = arg2.displayName
	if arg2.alias ~= nil then
		displayName = displayName..arg2.alias
	end
	if string.find(string.lower(displayName), string.lower(arg1), 1, true) == nil then
	else
	end
	return true
end