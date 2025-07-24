-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:21
-- Luau version 6, Types version 3
-- Time taken: 0.000439 seconds

return function(arg1) -- Line 2, Named "isEmpty"
	local var1
	if next(arg1) ~= nil then
		var1 = false
	else
		var1 = true
	end
	return var1
end