-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:57
-- Luau version 6, Types version 3
-- Time taken: 0.000940 seconds

return function(arg1, arg2, arg3, arg4) -- Line 1
	if arg1 then
		if arg2 == "Muted" or arg2 == "LOCAL_MUTED" then
			return arg1("Muted", arg4)
		end
		if arg2 == "Connecting" then
			return arg1("Connecting", arg4)
		end
		if arg2 == "Inactive" then
			return arg1("Unmuted0", arg4)
		end
		if arg2 == "Talking" then
			return arg1("Unmuted"..tostring(math.floor(0.5 + 5 * arg3) * 20), arg4)
		end
		return arg1("Error", arg4)
	end
	return ""
end