-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:11
-- Luau version 6, Types version 3
-- Time taken: 0.000509 seconds

function getMessageText(arg1, arg2, arg3) -- Line 2
	if arg2 == nil or arg2 == "" then
		return arg3 or ""
	end
	if arg1 then
		return arg2 or ""
	end
	return arg3 or ""
end
return getMessageText