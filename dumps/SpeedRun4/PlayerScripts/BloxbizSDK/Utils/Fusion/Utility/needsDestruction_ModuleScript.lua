-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:31
-- Luau version 6, Types version 3
-- Time taken: 0.000307 seconds

return function(arg1) -- Line 8, Named "needsDestruction"
	local var1
	if typeof(arg1) ~= "Instance" then
		var1 = false
	else
		var1 = true
	end
	return var1
end