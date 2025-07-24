-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:49
-- Luau version 6, Types version 3
-- Time taken: 0.000410 seconds

return function(arg1, arg2) -- Line 1
	local var2
	if not var2 then
		var2 = {}
	end
	if arg2 == "POST" or arg2 == "PATCH" then
		if not var2["Content-Type"] then
			var2["Content-Type"] = "application/json"
		end
	end
	return var2
end